//
//  WKRCrashCacheWorkerTests.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCrashWorkersTests
//
//  Created by Darren Ehlers.
//  Copyright © 2022 - 2016 DoubleNode.com. All rights reserved.
//

import XCTest
import Combine
import DNSBlankWorkers
import DNSCore
import DNSError
import DNSProtocols
#if canImport(UIKit)
import UIKit
#endif
@testable import DNSCrashWorkers

final class WKRCrashCacheWorkerTests: XCTestCase {
    var worker: WKRCrashCache!
    var cancellables: Set<AnyCancellable>!
    
    override func setUp() {
        super.setUp()
        worker = WKRCrashCache()
        cancellables = Set<AnyCancellable>()
    }
    
    override func tearDown() {
        cancellables = nil
        worker = nil
        super.tearDown()
    }
    
    func testInitialization() {
        XCTAssertNotNil(worker)
        XCTAssertTrue(worker is WKRCrashCache)
    }
    
    func testDeleteObjectReturnsNotImplementedError() {
        let expectation = XCTestExpectation(description: "Delete object returns error")
        
        let publisher = worker.intDoDeleteObject(for: "testId", with: nil, then: nil)
        
        publisher
            .sink(receiveCompletion: { completion in
                switch completion {
                case .failure(let error):
                    XCTAssertTrue(error is (any DNSError))
                    expectation.fulfill()
                case .finished:
                    XCTFail("Expected failure, got finished")
                }
            }, receiveValue: { _ in
                XCTFail("Expected no value")
            })
            .store(in: &cancellables)
        
        wait(for: [expectation], timeout: 1.0)
    }
    
    func testLoadImageReturnsNotImplementedError() {
        let expectation = XCTestExpectation(description: "Load image returns error")
        let testURL = NSURL(string: "https://example.com/image.jpg")!
        
        let publisher = worker.intDoLoadImage(from: testURL, for: "testId", with: nil, then: nil)
        
        publisher
            .sink(receiveCompletion: { completion in
                switch completion {
                case .failure(let error):
                    XCTAssertTrue(error is (any DNSError))
                    expectation.fulfill()
                case .finished:
                    XCTFail("Expected failure, got finished")
                }
            }, receiveValue: { _ in
                XCTFail("Expected no value")
            })
            .store(in: &cancellables)
        
        wait(for: [expectation], timeout: 1.0)
    }
    
    func testReadObjectReturnsNotImplementedError() {
        let expectation = XCTestExpectation(description: "Read object returns error")
        
        let publisher = worker.intDoReadObject(for: "testId", with: nil, then: nil)
        
        publisher
            .sink(receiveCompletion: { completion in
                switch completion {
                case .failure(let error):
                    XCTAssertTrue(error is (any DNSError))
                    expectation.fulfill()
                case .finished:
                    XCTFail("Expected failure, got finished")
                }
            }, receiveValue: { _ in
                XCTFail("Expected no value")
            })
            .store(in: &cancellables)
        
        wait(for: [expectation], timeout: 1.0)
    }
    
    func testReadStringReturnsNotImplementedError() {
        let expectation = XCTestExpectation(description: "Read string returns error")
        
        let publisher = worker.intDoReadString(for: "testId", with: nil, then: nil)
        
        publisher
            .sink(receiveCompletion: { completion in
                switch completion {
                case .failure(let error):
                    XCTAssertTrue(error is (any DNSError))
                    expectation.fulfill()
                case .finished:
                    XCTFail("Expected failure, got finished")
                }
            }, receiveValue: { _ in
                XCTFail("Expected no value")
            })
            .store(in: &cancellables)
        
        wait(for: [expectation], timeout: 1.0)
    }
    
    func testUpdateObjectReturnsNotImplementedError() {
        let expectation = XCTestExpectation(description: "Update object returns error")
        let testObject = "test object"
        
        let publisher = worker.intDoUpdate(object: testObject, for: "testId", with: nil, then: nil)
        
        publisher
            .sink(receiveCompletion: { completion in
                switch completion {
                case .failure(let error):
                    XCTAssertTrue(error is (any DNSError))
                    expectation.fulfill()
                case .finished:
                    XCTFail("Expected failure, got finished")
                }
            }, receiveValue: { _ in
                XCTFail("Expected no value")
            })
            .store(in: &cancellables)
        
        wait(for: [expectation], timeout: 1.0)
    }
    
    func testWorkerTypeBehavior() {
        // Test that this is indeed a crash worker
        let className = String(describing: type(of: worker))
        XCTAssertTrue(className.contains("Crash"))
        XCTAssertTrue(worker is WKRBlankCache)
    }

    nonisolated(unsafe) static let allTests = [
        ("testInitialization", testInitialization),
        ("testDeleteObjectReturnsNotImplementedError", testDeleteObjectReturnsNotImplementedError),
        ("testLoadImageReturnsNotImplementedError", testLoadImageReturnsNotImplementedError),
        ("testReadObjectReturnsNotImplementedError", testReadObjectReturnsNotImplementedError),
        ("testReadStringReturnsNotImplementedError", testReadStringReturnsNotImplementedError),
        ("testUpdateObjectReturnsNotImplementedError", testUpdateObjectReturnsNotImplementedError),
        ("testWorkerTypeBehavior", testWorkerTypeBehavior),
    ]
}
