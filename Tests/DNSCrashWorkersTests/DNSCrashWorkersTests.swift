//
//  DNSCrashWorkersTests.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCrashWorkersTests
//
//  Created by Claude Code.
//  Copyright © 2025 DoubleNode.com. All rights reserved.
//

import XCTest
@testable import DNSCrashWorkers

final class DNSCrashWorkersTests: XCTestCase {

    // MARK: - Framework Availability Tests

    func test_framework_canImportDNSCrashWorkers() {
        // Given & When & Then
        // If this test runs, the framework imported successfully
        XCTAssertTrue(true, "DNSCrashWorkers framework should be importable")
    }

    func test_framework_hasRequiredTypes() {
        // Given & When & Then
        // Verify key types are available
        XCTAssertNotNil(DNSCrashWorkerProtection.self)
        XCTAssertNotNil(WKRCrashAccount.self)
        XCTAssertNotNil(WKRCrashAnalytics.self)
        XCTAssertNotNil(WKRCrashValidation.self)
    }

    // MARK: - Error Type Tests

    func test_crashWorkerError_hasCorrectProperties() {
        // Given
        let workerName = "TestWorker"
        let error = DNSCrashWorkerError.crashWorkerInProduction(workerName: workerName)

        // When & Then
        XCTAssertEqual(DNSCrashWorkerError.domain, "CRASHWORKER_PROTECTION")
        XCTAssertEqual(error.codeValue, 1001)
        XCTAssertTrue(error.errorDescription?.contains(workerName) == true)
        XCTAssertNotNil(error.failureReason)
        XCTAssertNotNil(error.recoverySuggestion)
    }

    func test_unsafeConfigurationError_hasCorrectProperties() {
        // Given
        let error = DNSCrashWorkerError.unsafeConfiguration

        // When & Then
        XCTAssertEqual(DNSCrashWorkerError.domain, "CRASHWORKER_PROTECTION")
        XCTAssertEqual(error.codeValue, 1002)
        XCTAssertNotNil(error.errorDescription)
        XCTAssertNotNil(error.failureReason)
        XCTAssertNotNil(error.recoverySuggestion)
    }

    // MARK: - Integration Tests

    func test_crashWorkerProtection_integrationWithWorkers() {
        // Given
        DNSCrashWorkerProtection.protectionLevel = .testing
        let worker = WKRCrashAccount()

        // When & Then
        XCTAssertNotNil(worker)
        // Verify the worker can be instantiated without issues
    }

    func test_multipleWorkerInstantiation() {
        // Given
        DNSCrashWorkerProtection.protectionLevel = .testing

        // When
        let accountWorker = WKRCrashAccount()
        let analyticsWorker = WKRCrashAnalytics()
        let validationWorker = WKRCrashValidation()

        // Then
        XCTAssertNotNil(accountWorker)
        XCTAssertNotNil(analyticsWorker)
        XCTAssertNotNil(validationWorker)
    }

    // MARK: - Framework Configuration Tests

    func test_defaultProtectionLevel_isAppropriate() {
        // Given & When
        let originalLevel = DNSCrashWorkerProtection.protectionLevel

        // Then
        // Verify default is safe (not disabled)
        XCTAssertNotEqual(originalLevel, .disabled, "Default protection should not be disabled")
    }

    // MARK: - Performance Tests

    func test_workerInstantiation_performance() {
        // Given
        DNSCrashWorkerProtection.protectionLevel = .testing

        // When & Then
        self.measure {
            for _ in 0..<100 {
                let _ = WKRCrashAccount()
            }
        }
    }

    func test_protectionCheck_performance() {
        // Given
        let workerName = "TestWorker"

        // When & Then
        self.measure {
            for _ in 0..<1000 {
                let _ = DNSCrashWorkerProtection.isCrashWorkerAllowed(workerName: workerName)
            }
        }
    }
}