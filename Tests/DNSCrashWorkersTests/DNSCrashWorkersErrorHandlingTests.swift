//
//  DNSCrashWorkersErrorHandlingTests.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCrashWorkersTests
//
//  Created by Darren Ehlers.
//  Copyright © 2022 - 2016 DoubleNode.com. All rights reserved.
//

import XCTest
import Combine
import DNSCore
import DNSError
import DNSProtocols
@testable import DNSCrashWorkers

final class DNSCrashWorkersErrorHandlingTests: XCTestCase {
    var cancellables: Set<AnyCancellable>!
    
    override func setUp() {
        super.setUp()
        cancellables = Set<AnyCancellable>()
    }
    
    override func tearDown() {
        cancellables = nil
        super.tearDown()
    }
    
    func testAnalyticsErrorConsistency() {
        let worker = WKRCrashAnalytics()
        let properties = DNSDataDictionary()
        let options = DNSDataDictionary()
        let traits = DNSDataDictionary()
        
        // Test all methods return consistent DNSError.Analytics.notImplemented
        let autoTrackResult = worker.intDoAutoTrack(class: "Test", method: "test", 
                                                  properties: properties, options: options, then: nil)
        let groupResult = worker.intDoGroup(groupId: "test", traits: traits, 
                                          options: options, then: nil)
        let identifyResult = worker.intDoIdentify(userId: "test", traits: traits, 
                                                options: options, then: nil)
        let screenResult = worker.intDoScreen(screenTitle: "Test", properties: properties, 
                                            options: options, then: nil)
        let trackResult = worker.intDoTrack(event: .login, properties: properties, 
                                          options: options, then: nil)
        
        let results = [autoTrackResult, groupResult, identifyResult, screenResult, trackResult]
        
        for result in results {
            switch result {
            case .failure(let error):
                XCTAssertTrue(error is (any DNSError))
                let errorDescription = String(describing: error)
                XCTAssertTrue(errorDescription.contains("notImplemented"))
                XCTAssertTrue(errorDescription.contains("DNSCrashWorkers"))
            case .success:
                XCTFail("Expected all methods to fail")
            }
        }
    }
    
    func testAuthErrorBehavior() {
        let worker = WKRCrashAuth()
        
        // Since auth methods call fatalError, we test the error creation separately
        let expectedError = DNSError.Auth.notImplemented(.crashWorkers(worker))
        
        XCTAssertNotNil(expectedError)
        let errorDescription = String(describing: expectedError)
        XCTAssertTrue(errorDescription.contains("notImplemented"))
        XCTAssertTrue(errorDescription.contains("DNSCrashWorkers"))
    }
    
    func testCacheErrorBehaviorWithPublishers() {
        let worker = WKRCrashCache()
        let expectation = XCTestExpectation(description: "All cache methods fail")
        expectation.expectedFulfillmentCount = 5
        
        // Test delete
        worker.intDoDeleteObject(for: "test", with: nil, then: nil)
            .sink(receiveCompletion: { completion in
                if case .failure(let error) = completion {
                    XCTAssertTrue(error is (any DNSError))
                    expectation.fulfill()
                }
            }, receiveValue: { _ in
                XCTFail("Expected no value")
            })
            .store(in: &cancellables)
        
        // Test load image
        let testURL = NSURL(string: "https://example.com/test.jpg")!
        worker.intDoLoadImage(from: testURL, for: "test", with: nil, then: nil)
            .sink(receiveCompletion: { completion in
                if case .failure(let error) = completion {
                    XCTAssertTrue(error is (any DNSError))
                    expectation.fulfill()
                }
            }, receiveValue: { _ in
                XCTFail("Expected no value")
            })
            .store(in: &cancellables)
        
        // Test read object
        worker.intDoReadObject(for: "test", with: nil, then: nil)
            .sink(receiveCompletion: { completion in
                if case .failure(let error) = completion {
                    XCTAssertTrue(error is (any DNSError))
                    expectation.fulfill()
                }
            }, receiveValue: { _ in
                XCTFail("Expected no value")
            })
            .store(in: &cancellables)
        
        // Test read string
        worker.intDoReadString(for: "test", with: nil, then: nil)
            .sink(receiveCompletion: { completion in
                if case .failure(let error) = completion {
                    XCTAssertTrue(error is (any DNSError))
                    expectation.fulfill()
                }
            }, receiveValue: { _ in
                XCTFail("Expected no value")
            })
            .store(in: &cancellables)
        
        // Test update
        worker.intDoUpdate(object: "test", for: "test", with: nil, then: nil)
            .sink(receiveCompletion: { completion in
                if case .failure(let error) = completion {
                    XCTAssertTrue(error is (any DNSError))
                    expectation.fulfill()
                }
            }, receiveValue: { _ in
                XCTFail("Expected no value")
            })
            .store(in: &cancellables)
        
        wait(for: [expectation], timeout: 2.0)
    }
    
    func testErrorMessagesContainWorkerReference() {
        let analyticsWorker = WKRCrashAnalytics()
        let authWorker = WKRCrashAuth()
        let cacheWorker = WKRCrashCache()
        
        // Analytics error
        let analyticsResult = analyticsWorker.intDoAutoTrack(class: "Test", method: "test", 
                                                           properties: DNSDataDictionary(), 
                                                           options: DNSDataDictionary(), then: nil)
        if case .failure(let error) = analyticsResult {
            XCTAssertTrue(error is (any DNSError))
            XCTAssertTrue(error.localizedDescription.contains("WKRANALYTICS"))
        }
        
        // Auth error
        let authError = DNSError.Auth.notImplemented(.crashWorkers(authWorker))
        XCTAssertTrue(authError.localizedDescription.contains("WKRAUTH"))
        
        // Cache error - test via publisher
        let expectation = XCTestExpectation(description: "Cache error contains worker reference")
        cacheWorker.intDoDeleteObject(for: "test", with: nil, then: nil)
            .sink(receiveCompletion: { completion in
                if case .failure(let error) = completion {
                    XCTAssertTrue(error is (any DNSError))
                    XCTAssertTrue(error.localizedDescription.contains("WKRCACHE"))
                    expectation.fulfill()
                }
            }, receiveValue: { _ in })
            .store(in: &cancellables)
        
        wait(for: [expectation], timeout: 1.0)
    }
    
    func testErrorCodesAreCorrect() {
        let analyticsWorker = WKRCrashAnalytics()
        let authWorker = WKRCrashAuth()
        let cacheWorker = WKRCrashCache()
        
        // Test that error objects are different types from different domains
        let analyticsError = DNSError.Analytics.notImplemented(.crashWorkers(analyticsWorker))
        let authError = DNSError.Auth.notImplemented(.crashWorkers(authWorker))
        let cacheError = DNSError.Cache.notImplemented(.crashWorkers(cacheWorker))
        
        // Test that they are different error types
        XCTAssertNotEqual(String(describing: type(of: analyticsError)), 
                         String(describing: type(of: authError)), 
                         "Different domains should have different error types")
        XCTAssertNotEqual(String(describing: type(of: analyticsError)), 
                         String(describing: type(of: cacheError)), 
                         "Different domains should have different error types")
        XCTAssertNotEqual(String(describing: type(of: authError)), 
                         String(describing: type(of: cacheError)), 
                         "Different domains should have different error types")
    }

    nonisolated(unsafe) static let allTests = [
        ("testAnalyticsErrorConsistency", testAnalyticsErrorConsistency),
        ("testAuthErrorBehavior", testAuthErrorBehavior),
        ("testCacheErrorBehaviorWithPublishers", testCacheErrorBehaviorWithPublishers),
        ("testErrorMessagesContainWorkerReference", testErrorMessagesContainWorkerReference),
        ("testErrorCodesAreCorrect", testErrorCodesAreCorrect),
    ]
}
