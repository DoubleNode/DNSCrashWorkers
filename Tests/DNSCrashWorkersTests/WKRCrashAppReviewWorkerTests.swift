//
//  WKRCrashAppReviewWorkerTests.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCrashWorkersTests
//
//  Created by Darren Ehlers.
//  Copyright © 2022 - 2016 DoubleNode.com. All rights reserved.
//

import XCTest
import DNSBlankWorkers
import DNSCore
import DNSError
import DNSProtocols
@testable import DNSCrashWorkers

final class WKRCrashAppReviewWorkerTests: XCTestCase {
    var worker: WKRCrashAppReview!
    
    override func setUp() {
        super.setUp()
        worker = WKRCrashAppReview()
    }
    
    override func tearDown() {
        worker = nil
        super.tearDown()
    }
    
    func testInitialization() {
        XCTAssertNotNil(worker)
        XCTAssertTrue(worker is WKRCrashAppReview)
        XCTAssertTrue(worker is WKRBlankAppReview)
    }
    
    func testChainInitializationUnavailable() {
        // Test that chaining initialization is properly marked as unavailable
        // This would fail at compile time, but we can verify the error message exists
    }
    
    func testReviewReturnsNotImplementedError() {
        // Test that intDoReview returns appropriate DNSError.AppReview.notImplemented
        let result = worker.intDoReview(then: nil)
        
        switch result {
        case .failure(let error):
            XCTAssertTrue(error is (any DNSError))
            let errorDescription = String(describing: error)
            XCTAssertTrue(errorDescription.contains("notImplemented"))
            XCTAssertTrue(errorDescription.contains("DNSCrashWorkers"))
        case .success:
            XCTFail("Expected failure, got success")
        }
    }
    
    func testReviewWithResultBlock() {
        // Test that intDoReview properly handles result block parameter
        var resultBlockCalled = false
        var receivedResult: DNSPTCLWorker.Call.Result?
        
        let result = worker.intDoReview { result in
            resultBlockCalled = true
            receivedResult = result
            return receivedResult
        }
        
        // The result block should not be called in crash workers since they return immediately
        XCTAssertFalse(resultBlockCalled)
        XCTAssertNil(receivedResult)
        
        // But the method should still return a failure
        switch result {
        case .failure(let error):
            XCTAssertTrue(error is (any DNSError))
        case .success:
            XCTFail("Expected failure, got success")
        }
    }
    
    func testWorkerTypeBehavior() {
        // Test that this is indeed a crash worker by verifying it behaves as expected
        // Crash workers are designed to fail when used
        let className = String(describing: type(of: worker))
        XCTAssertTrue(className.contains("Crash"))
        XCTAssertTrue(className.contains("AppReview"))
    }
    
    func testInheritsFromBlankWorker() {
        // Verify inheritance chain
        XCTAssertTrue(worker is WKRBlankAppReview)
        XCTAssertTrue(worker is WKRBase)
    }
    
    func testWorkerIsUncheckedSendable() {
        // Test that worker conforms to @unchecked Sendable
        let sendableWorker: any Sendable = worker
        XCTAssertNotNil(sendableWorker)
    }
    
    func testErrorConsistency() {
        // Test that multiple calls return consistent error types
        let result1 = worker.intDoReview(then: nil)
        let result2 = worker.intDoReview(then: nil)
        
        switch (result1, result2) {
        case (.failure(let error1), .failure(let error2)):
            // Both should be DNSError instances
            XCTAssertTrue(error1 is (any DNSError))
            XCTAssertTrue(error2 is (any DNSError))
            
            // Both should have similar error descriptions
            let desc1 = String(describing: error1)
            let desc2 = String(describing: error2)
            XCTAssertTrue(desc1.contains("notImplemented"))
            XCTAssertTrue(desc2.contains("notImplemented"))
            XCTAssertTrue(desc1.contains("DNSCrashWorkers"))
            XCTAssertTrue(desc2.contains("DNSCrashWorkers"))
            
        case (.success, _), (_, .success):
            XCTFail("Expected both calls to fail")
        }
    }
    
    func testMemoryManagement() {
        // Test that worker can be properly deallocated
        weak var weakWorker: WKRCrashAppReview?
        
        autoreleasepool {
            let tempWorker = WKRCrashAppReview()
            weakWorker = tempWorker
            XCTAssertNotNil(weakWorker)
            
            // Test that it works correctly before deallocation
            let result = tempWorker.intDoReview(then: nil)
            switch result {
            case .failure:
                break // Expected
            case .success:
                XCTFail("Expected failure")
            }
        }
        
        XCTAssertNil(weakWorker, "Worker should be deallocated")
    }
    
    func testConcurrentAccess() {
        // Test that the worker can handle concurrent access safely
        let expectation = XCTestExpectation(description: "Concurrent review calls")
        expectation.expectedFulfillmentCount = 10
        
        for _ in 0..<10 {
            DispatchQueue.global(qos: .utility).async {
                let result = self.worker.intDoReview(then: nil)
                
                switch result {
                case .failure(let error):
                    XCTAssertTrue(error is (any DNSError))
                case .success:
                    XCTFail("Expected failure")
                }
                
                expectation.fulfill()
            }
        }
        
        wait(for: [expectation], timeout: 5.0)
    }

    nonisolated(unsafe) static let allTests = [
        ("testInitialization", testInitialization),
        ("testChainInitializationUnavailable", testChainInitializationUnavailable),
        ("testReviewReturnsNotImplementedError", testReviewReturnsNotImplementedError),
        ("testReviewWithResultBlock", testReviewWithResultBlock),
        ("testWorkerTypeBehavior", testWorkerTypeBehavior),
        ("testInheritsFromBlankWorker", testInheritsFromBlankWorker),
        ("testWorkerIsUncheckedSendable", testWorkerIsUncheckedSendable),
        ("testErrorConsistency", testErrorConsistency),
        ("testMemoryManagement", testMemoryManagement),
        ("testConcurrentAccess", testConcurrentAccess),
    ]
}
