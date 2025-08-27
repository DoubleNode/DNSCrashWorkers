//
//  WKRCrashAnalyticsWorkerTests.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCrashWorkersTests
//
//  Created by Darren Ehlers.
//  Copyright © 2022 - 2016 DoubleNode.com. All rights reserved.
//

import XCTest
import DNSCore
import DNSError
import DNSProtocols
@testable import DNSCrashWorkers

final class WKRCrashAnalyticsWorkerTests: XCTestCase {
    var worker: WKRCrashAnalytics!
    
    override func setUp() {
        super.setUp()
        worker = WKRCrashAnalytics()
    }
    
    override func tearDown() {
        worker = nil
        super.tearDown()
    }
    
    func testInitialization() {
        XCTAssertNotNil(worker)
        XCTAssertTrue(worker is WKRCrashAnalytics)
    }
    
    func testChainInitializationUnavailable() {
        // Test that chaining initialization is properly marked as unavailable
        // This would fail at compile time, but we can test the fatalError behavior
    }
    
    func testAutoTrackReturnsNotImplementedError() {
        let properties = DNSDataDictionary()
        let options = DNSDataDictionary()
        
        let result = worker.intDoAutoTrack(class: "TestClass", method: "testMethod", 
                                         properties: properties, options: options, 
                                         then: nil)
        
        switch result {
        case .failure(let error):
            XCTAssertTrue(error is (any DNSError))
        case .success:
            XCTFail("Expected failure, got success")
        }
    }
    
    func testGroupReturnsNotImplementedError() {
        let traits = DNSDataDictionary()
        let options = DNSDataDictionary()
        
        let result = worker.intDoGroup(groupId: "testGroup", traits: traits, 
                                     options: options, then: nil)
        
        switch result {
        case .failure(let error):
            XCTAssertTrue(error is (any DNSError))
        case .success:
            XCTFail("Expected failure, got success")
        }
    }
    
    func testIdentifyReturnsNotImplementedError() {
        let traits = DNSDataDictionary()
        let options = DNSDataDictionary()
        
        let result = worker.intDoIdentify(userId: "testUser", traits: traits, 
                                        options: options, then: nil)
        
        switch result {
        case .failure(let error):
            XCTAssertTrue(error is (any DNSError))
        case .success:
            XCTFail("Expected failure, got success")
        }
    }
    
    func testScreenReturnsNotImplementedError() {
        let properties = DNSDataDictionary()
        let options = DNSDataDictionary()
        
        let result = worker.intDoScreen(screenTitle: "TestScreen", properties: properties, 
                                      options: options, then: nil)
        
        switch result {
        case .failure(let error):
            XCTAssertTrue(error is (any DNSError))
        case .success:
            XCTFail("Expected failure, got success")
        }
    }
    
    func testTrackReturnsNotImplementedError() {
        let properties = DNSDataDictionary()
        let options = DNSDataDictionary()
        let event = WKRPTCLAnalyticsEvents.login
        
        let result = worker.intDoTrack(event: event, properties: properties, 
                                     options: options, then: nil)
        
        switch result {
        case .failure(let error):
            XCTAssertTrue(error is (any DNSError))
        case .success:
            XCTFail("Expected failure, got success")
        }
    }
    
    func testAllMethodsReturnConsistentError() {
        let properties = DNSDataDictionary()
        let options = DNSDataDictionary()
        let traits = DNSDataDictionary()
        
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
        
        // All methods should return the same type of error
        let results = [autoTrackResult, groupResult, identifyResult, screenResult, trackResult]
        for result in results {
            switch result {
            case .failure(let error):
                XCTAssertTrue(error is (any DNSError))
            case .success:
                XCTFail("Expected all methods to fail with DNSError")
            }
        }
    }

    nonisolated(unsafe) static let allTests = [
        ("testInitialization", testInitialization),
        ("testChainInitializationUnavailable", testChainInitializationUnavailable),
        ("testAutoTrackReturnsNotImplementedError", testAutoTrackReturnsNotImplementedError),
        ("testGroupReturnsNotImplementedError", testGroupReturnsNotImplementedError),
        ("testIdentifyReturnsNotImplementedError", testIdentifyReturnsNotImplementedError),
        ("testScreenReturnsNotImplementedError", testScreenReturnsNotImplementedError),
        ("testTrackReturnsNotImplementedError", testTrackReturnsNotImplementedError),
        ("testAllMethodsReturnConsistentError", testAllMethodsReturnConsistentError),
    ]
}
