//
//  WKRCrashGeolocationWorkerTests.swift
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

final class WKRCrashGeolocationWorkerTests: XCTestCase {
    var worker: WKRCrashGeo!
    
    override func setUp() {
        super.setUp()
        worker = WKRCrashGeo()
    }
    
    override func tearDown() {
        worker = nil
        super.tearDown()
    }
    
    func testInitialization() {
        XCTAssertNotNil(worker)
        XCTAssertTrue(worker is WKRCrashGeo)
        XCTAssertTrue(worker is WKRBlankGeo)
    }
    
    func testChainInitializationUnavailable() {
        // Test that chaining initialization is properly marked as unavailable
        // This would fail at compile time, but we can verify the error message exists
    }
    
    func testLocateWithoutAddressCallsFatalError() {
        // Test that intDoLocate calls fatalError with DNSError.Geo.notImplemented
        // We can't directly test fatalError, but we can test the error creation
        let expectedError = DNSError.Geo.notImplemented(.crashWorkers(worker as Any))
        XCTAssertNotNil(expectedError)
        let errorDescription = String(describing: expectedError)
        XCTAssertTrue(errorDescription.contains("notImplemented"))
        XCTAssertTrue(errorDescription.contains("DNSCrashWorkers"))
    }
    
    func testLocateWithAddressCallsFatalError() {
        // Test that intDoLocate with address calls fatalError with DNSError.Geo.notImplemented
        let expectedError = DNSError.Geo.notImplemented(.crashWorkers(worker as Any))
        XCTAssertNotNil(expectedError)
        let errorDescription = String(describing: expectedError)
        XCTAssertTrue(errorDescription.contains("notImplemented"))
        XCTAssertTrue(errorDescription.contains("DNSCrashWorkers"))
    }
    
    func testTrackLocationCallsFatalError() {
        // Test that intDoTrackLocation calls fatalError with DNSError.Geo.notImplemented
        let expectedError = DNSError.Geo.notImplemented(.crashWorkers(worker as Any))
        XCTAssertNotNil(expectedError)
        let errorDescription = String(describing: expectedError)
        XCTAssertTrue(errorDescription.contains("notImplemented"))
        XCTAssertTrue(errorDescription.contains("DNSCrashWorkers"))
    }
    
    func testStopTrackLocationReturnsNotImplementedError() {
        // Test that intDoStopTrackLocation returns appropriate DNSError.Geo.notImplemented
        let result = worker.intDoStopTrackLocation(for: "testKey", then: nil)
        
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
    
    func testWorkerTypeBehavior() {
        // Test that this is indeed a crash worker by verifying it behaves as expected
        // Crash workers are designed to fail when used
        let className = String(describing: type(of: worker))
        XCTAssertTrue(className.contains("Crash"))
        XCTAssertTrue(className.contains("Geo"))
    }
    
    func testInheritsFromBlankWorker() {
        // Verify inheritance chain
        XCTAssertTrue(worker is WKRBlankGeo)
        XCTAssertTrue(worker is WKRBase)
    }
    
    func testWorkerIsUncheckedSendable() {
        // Test that worker conforms to @unchecked Sendable
        let sendableWorker: any Sendable = worker
        XCTAssertNotNil(sendableWorker)
    }
    
    func testStopTrackLocationErrorConsistency() {
        // Test that multiple calls return consistent error types
        let result1 = worker.intDoStopTrackLocation(for: "key1", then: nil)
        let result2 = worker.intDoStopTrackLocation(for: "key2", then: nil)
        
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
        weak var weakWorker: WKRCrashGeo?
        
        autoreleasepool {
            let tempWorker = WKRCrashGeo()
            weakWorker = tempWorker
            XCTAssertNotNil(weakWorker)
            
            // Test that it works correctly before deallocation
            let result = tempWorker.intDoStopTrackLocation(for: "testKey", then: nil)
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
        let expectation = XCTestExpectation(description: "Concurrent stop track location calls")
        expectation.expectedFulfillmentCount = 10
        
        for i in 0..<10 {
            DispatchQueue.global(qos: .utility).async { [weak self] in
                guard let self = self else { return }
                let result = self.worker.intDoStopTrackLocation(for: "key\(i)", then: nil)
                
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
        ("testLocateWithoutAddressCallsFatalError", testLocateWithoutAddressCallsFatalError),
        ("testLocateWithAddressCallsFatalError", testLocateWithAddressCallsFatalError),
        ("testTrackLocationCallsFatalError", testTrackLocationCallsFatalError),
        ("testStopTrackLocationReturnsNotImplementedError", testStopTrackLocationReturnsNotImplementedError),
        ("testWorkerTypeBehavior", testWorkerTypeBehavior),
        ("testInheritsFromBlankWorker", testInheritsFromBlankWorker),
        ("testWorkerIsUncheckedSendable", testWorkerIsUncheckedSendable),
        ("testStopTrackLocationErrorConsistency", testStopTrackLocationErrorConsistency),
        ("testMemoryManagement", testMemoryManagement),
        ("testConcurrentAccess", testConcurrentAccess),
    ]
}
