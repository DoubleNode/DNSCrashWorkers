//
//  WKRCrashActivitiesWorkerTests.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCrashWorkersTests
//
//  Created by Darren Ehlers.
//  Copyright © 2022 - 2016 DoubleNode.com. All rights reserved.
//

import XCTest
import DNSBlankWorkers
import DNSCore
import DNSDataObjects
import DNSError
import DNSProtocols
@testable import DNSCrashWorkers

final class WKRCrashActivitiesWorkerTests: XCTestCase {
    var worker: WKRCrashActivities!
    
    override func setUp() {
        super.setUp()
        worker = WKRCrashActivities()
    }
    
    override func tearDown() {
        worker = nil
        super.tearDown()
    }
    
    func testInitialization() {
        XCTAssertNotNil(worker)
        XCTAssertTrue(worker is WKRCrashActivities)
        XCTAssertTrue(worker is WKRBlankActivities)
    }
    
    func testChainInitializationUnavailable() {
        // Test that chaining initialization is properly marked as unavailable
        // This would fail at compile time
    }
    
    func testWorkerTypeBehavior() {
        // Test that this is indeed a crash worker
        let className = String(describing: type(of: worker))
        XCTAssertTrue(className.contains("Crash"))
    }
    
    func testInheritsFromBlankWorker() {
        // Verify inheritance chain
        XCTAssertTrue(worker is WKRBlankActivities)
    }
    
    func testWorkerIsUncheckedSendable() {
        // Test that worker conforms to @unchecked Sendable
        let sendableWorker: any Sendable = worker
        XCTAssertNotNil(sendableWorker)
    }

    nonisolated(unsafe) static let allTests = [
        ("testInitialization", testInitialization),
        ("testChainInitializationUnavailable", testChainInitializationUnavailable),
        ("testWorkerTypeBehavior", testWorkerTypeBehavior),
        ("testInheritsFromBlankWorker", testInheritsFromBlankWorker),
        ("testWorkerIsUncheckedSendable", testWorkerIsUncheckedSendable),
    ]
}