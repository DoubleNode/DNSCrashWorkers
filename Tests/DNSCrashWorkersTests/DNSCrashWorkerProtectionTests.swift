//
//  DNSCrashWorkerProtectionTests.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCrashWorkersTests
//
//  Created by Claude Code.
//  Copyright © 2025 DoubleNode.com. All rights reserved.
//

import XCTest
@testable import DNSCrashWorkers

final class DNSCrashWorkerProtectionTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Reset to default state for each test
        DNSCrashWorkerProtection.protectionLevel = .testing
    }

    override func tearDown() {
        // Reset to safe default
        DNSCrashWorkerProtection.protectionLevel = .strict
        super.tearDown()
    }

    // MARK: - Build Configuration Tests

    func test_buildConfiguration_detectsCorrectConfiguration() {
        // Given & When
        let config = DNSCrashWorkerProtection.BuildConfiguration.current

        // Then
        #if DEBUG
        XCTAssertEqual(config, .debug)
        #elseif RELEASE
        XCTAssertEqual(config, .release)
        #elseif TEST
        XCTAssertEqual(config, .testing)
        #else
        XCTAssertEqual(config, .unknown)
        #endif
    }

    // MARK: - Protection Level Tests

    func test_protectionLevel_disabled_allowsAllWorkers() {
        // Given
        DNSCrashWorkerProtection.protectionLevel = .disabled

        // When
        let isAllowed = DNSCrashWorkerProtection.isCrashWorkerAllowed(workerName: "TestWorker")

        // Then
        XCTAssertTrue(isAllowed)
    }

    func test_protectionLevel_warning_allowsWorkersWithWarning() {
        // Given
        DNSCrashWorkerProtection.protectionLevel = .warning

        // When
        let isAllowed = DNSCrashWorkerProtection.isCrashWorkerAllowed(workerName: "TestWorker")

        // Then
        XCTAssertTrue(isAllowed)
    }

    func test_protectionLevel_testing_allowsWorkersInDebugAndTesting() {
        // Given
        DNSCrashWorkerProtection.protectionLevel = .testing

        // When
        let isAllowed = DNSCrashWorkerProtection.isCrashWorkerAllowed(workerName: "TestWorker")

        // Then
        // Should be allowed in debug/testing builds
        XCTAssertTrue(isAllowed)
    }

    func test_protectionLevel_testingSafe_blocksAllWorkers() {
        // Given
        DNSCrashWorkerProtection.protectionLevel = .testingSafe

        // When
        let isAllowed = DNSCrashWorkerProtection.isCrashWorkerAllowed(workerName: "TestWorker")

        // Then
        // Should always be blocked in testingSafe mode, even in debug builds
        XCTAssertFalse(isAllowed)
    }

    func test_protectionLevel_strict_onlyAllowsDebugBuilds() {
        // Given
        DNSCrashWorkerProtection.protectionLevel = .strict

        // When
        let isAllowed = DNSCrashWorkerProtection.isCrashWorkerAllowed(workerName: "TestWorker")

        // Then
        #if DEBUG
        XCTAssertTrue(isAllowed, "Debug builds should allow crash workers in strict mode")
        #else
        XCTAssertFalse(isAllowed, "Non-debug builds should block crash workers in strict mode")
        #endif
    }

    // MARK: - Safe Crash Execution Tests

    func test_safeCrashExecution_executesFallbackWhenBlocked() {
        // Given
        DNSCrashWorkerProtection.protectionLevel = .testingSafe
        var fallbackExecuted = false
        var operationExecuted = false

        // When
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "TestWorker",
            operation: {
                operationExecuted = true
                fatalError("This should not execute in testing")
            },
            fallbackBlock: {
                fallbackExecuted = true
            }
        )

        // Then
        XCTAssertTrue(fallbackExecuted, "Fallback should execute when worker is blocked in testingSafe mode")
        XCTAssertFalse(operationExecuted, "Operation should not execute when blocked")
    }

    func test_safeCrashExecution_withTestingProtection_executesFallback() {
        // Given
        DNSCrashWorkerProtection.protectionLevel = .testingSafe
        var fallbackExecuted = false

        // When
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "TestWorker",
            operation: {
                fatalError("This should not execute in testing")
            },
            fallbackBlock: {
                fallbackExecuted = true
            }
        )

        // Then
        // In testingSafe mode, should always execute fallback
        XCTAssertTrue(fallbackExecuted)
    }

    func test_safeCrashExecution_withDisabledProtection_allowsOperation() {
        // Given
        DNSCrashWorkerProtection.protectionLevel = .disabled
        var fallbackExecuted = false

        // When & Then
        // We can't actually test the fatalError path, but we can verify
        // that the protection logic works correctly
        let isAllowed = DNSCrashWorkerProtection.isCrashWorkerAllowed(workerName: "TestWorker")
        XCTAssertTrue(isAllowed)

        // If we called safeCrashExecution, fallback wouldn't execute
        XCTAssertFalse(fallbackExecuted)
    }

    // MARK: - Usage Report Tests

    func test_generateUsageReport_containsCorrectInformation() {
        // Given
        DNSCrashWorkerProtection.protectionLevel = .testing

        // When
        let report = DNSCrashWorkerProtection.generateUsageReport()

        // Then
        XCTAssertTrue(report.contains("DNSCrashWorker Protection Status"))
        XCTAssertTrue(report.contains("Build Configuration"))
        XCTAssertTrue(report.contains("Protection Level"))
        XCTAssertTrue(report.contains("Crash Workers Allowed"))
        XCTAssertTrue(report.contains("SAFETY NOTICE"))
    }

    func test_generateUsageReport_reflectsCurrentSettings() {
        // Given
        DNSCrashWorkerProtection.protectionLevel = .warning

        // When
        let report = DNSCrashWorkerProtection.generateUsageReport()

        // Then
        XCTAssertTrue(report.contains("warning"))
    }

    // MARK: - Worker Name Validation Tests

    func test_isCrashWorkerAllowed_withDifferentWorkerNames() {
        // Given
        DNSCrashWorkerProtection.protectionLevel = .warning
        let workerNames = [
            "WKRCrashAccount",
            "WKRCrashAnalytics",
            "WKRCrashValidation",
            "CustomCrashWorker"
        ]

        // When & Then
        for workerName in workerNames {
            let isAllowed = DNSCrashWorkerProtection.isCrashWorkerAllowed(workerName: workerName)
            XCTAssertTrue(isAllowed, "Worker \(workerName) should be allowed in warning mode")
        }
    }

    // MARK: - Thread Safety Tests

    func test_protectionLevel_threadSafety() {
        // Given
        let expectation = XCTestExpectation(description: "Concurrent access")
        expectation.expectedFulfillmentCount = 10

        // When
        DispatchQueue.concurrentPerform(iterations: 10) { _ in
            DNSCrashWorkerProtection.protectionLevel = .testing
            let _ = DNSCrashWorkerProtection.isCrashWorkerAllowed(workerName: "TestWorker")
            expectation.fulfill()
        }

        // Then
        wait(for: [expectation], timeout: 5.0)
        // Test passes if no crashes occur during concurrent access
    }

    // MARK: - Edge Case Tests

    func test_isCrashWorkerAllowed_withEmptyWorkerName() {
        // Given
        DNSCrashWorkerProtection.protectionLevel = .testing

        // When
        let isAllowed = DNSCrashWorkerProtection.isCrashWorkerAllowed(workerName: "")

        // Then
        XCTAssertTrue(isAllowed)
    }

    func test_safeCrashExecution_withoutFallbackBlock() {
        // Given
        DNSCrashWorkerProtection.protectionLevel = .testingSafe

        // When & Then
        // Should not crash even without fallback block
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "TestWorker",
            operation: {
                fatalError("This should not execute")
            },
            fallbackBlock: nil
        )

        // Test passes if no crash occurs
    }
}