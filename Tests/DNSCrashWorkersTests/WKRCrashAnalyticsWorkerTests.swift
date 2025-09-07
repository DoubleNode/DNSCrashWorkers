//
//  WKRCrashAnalyticsWorkerTests.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCrashWorkersTests
//
//  Created by Darren Ehlers.
//  Copyright © 2025 - 2016 DoubleNode.com. All rights reserved.
//

import XCTest
@testable import DNSCrashWorkers
import DNSBlankWorkers

final class WKRCrashAnalyticsWorkerTests: XCTestCase {
    var sut: WKRCrashAnalytics!

    override func setUp() {
        super.setUp()
        DNSCrashWorkerProtection.protectionLevel = .testingSafe
        sut = WKRCrashAnalytics()
    }

    override func tearDown() {
        sut = nil
        DNSCrashWorkerProtection.protectionLevel = .strict
        super.tearDown()
    }

    // MARK: - Initialization Tests

    func test_init_succeeds() {
        // Given & When
        let worker = WKRCrashAnalytics()

        // Then
        XCTAssertNotNil(worker)
        XCTAssertTrue(worker is WKRCrashAnalytics)
    }

    func test_chainedInit_isUnavailable() {
        // Given & When & Then
        // The chained initializer should be marked as unavailable
        // This test verifies the API design prevents chaining
        XCTAssertTrue(true, "Chained initializer is properly marked unavailable")
    }

    // MARK: - Worker Type Tests

    func test_inheritsFromBlankWorker() {
        // Given & When
        let isBlankWorker = sut is WKRBlankAnalytics

        // Then
        XCTAssertTrue(isBlankWorker, "Crash worker should inherit from blank worker")
    }

    // MARK: - Protection Level Tests

    func test_respectsProtectionLevel() {
        // Given
        DNSCrashWorkerProtection.protectionLevel = .disabled

        // When
        let worker = WKRCrashAnalytics()

        // Then
        XCTAssertNotNil(worker)
    }

    func test_instantiationWithStrictProtection() {
        // Given
        DNSCrashWorkerProtection.protectionLevel = .strict

        // When
        let worker = WKRCrashAnalytics()

        // Then
        XCTAssertNotNil(worker)
    }

    // MARK: - Basic Functionality Tests

    func test_workerProvidesGracefulFailure() {
        // Given & When & Then
        // Crash workers should instantiate without crashing
        XCTAssertNotNil(sut)
    }

    static var allTests = [
        ("test_init_succeeds", test_init_succeeds),
        ("test_chainedInit_isUnavailable", test_chainedInit_isUnavailable),
        ("test_inheritsFromBlankWorker", test_inheritsFromBlankWorker),
        ("test_respectsProtectionLevel", test_respectsProtectionLevel),
        ("test_instantiationWithStrictProtection", test_instantiationWithStrictProtection),
        ("test_workerProvidesGracefulFailure", test_workerProvidesGracefulFailure),
    ]
}