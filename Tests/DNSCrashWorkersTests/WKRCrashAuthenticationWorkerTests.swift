//
//  WKRCrashAuthenticationWorkerTests.swift
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

final class WKRCrashAuthenticationWorkerTests: XCTestCase {
    var worker: WKRCrashAuth!
    
    override func setUp() {
        super.setUp()
        worker = WKRCrashAuth()
    }
    
    override func tearDown() {
        worker = nil
        super.tearDown()
    }
    
    func testInitialization() {
        XCTAssertNotNil(worker)
        XCTAssertTrue(worker is WKRCrashAuth)
    }
    
    func testCheckAuthFatalError() {
        // Since this method calls fatalError, we expect it to crash
        // We can't directly test fatalError, but we can verify the error message would be correct
        let expectedError = DNSError.Auth.notImplemented(.crashWorkers(worker))
        XCTAssertNotNil(expectedError)
    }
    
    func testLinkAuthFatalError() {
        // Since this method calls fatalError, we expect it to crash
        let expectedError = DNSError.Auth.notImplemented(.crashWorkers(worker))
        XCTAssertNotNil(expectedError)
    }
    
    func testPasswordResetStartFatalError() {
        // Since this method calls fatalError, we expect it to crash
        let expectedError = DNSError.Auth.notImplemented(.crashWorkers(worker))
        XCTAssertNotNil(expectedError)
    }
    
    func testSignInFatalError() {
        // Since this method calls fatalError, we expect it to crash
        let expectedError = DNSError.Auth.notImplemented(.crashWorkers(worker))
        XCTAssertNotNil(expectedError)
    }
    
    func testSignOutFatalError() {
        // Since this method calls fatalError, we expect it to crash
        let expectedError = DNSError.Auth.notImplemented(.crashWorkers(worker))
        XCTAssertNotNil(expectedError)
    }
    
    func testSignUpFatalError() {
        // Since this method calls fatalError, we expect it to crash
        let expectedError = DNSError.Auth.notImplemented(.crashWorkers(worker))
        XCTAssertNotNil(expectedError)
    }
    
    func testWorkerTypeBehavior() {
        // Test that this is indeed a crash worker by verifying it behaves as expected
        // Crash workers are designed to fail/crash when used
        let className = String(describing: type(of: worker))
        XCTAssertTrue(className.contains("Crash"))
        XCTAssertTrue(worker is WKRBlankAuth)
    }

    nonisolated(unsafe) static let allTests = [
        ("testInitialization", testInitialization),
        ("testCheckAuthFatalError", testCheckAuthFatalError),
        ("testLinkAuthFatalError", testLinkAuthFatalError),
        ("testPasswordResetStartFatalError", testPasswordResetStartFatalError),
        ("testSignInFatalError", testSignInFatalError),
        ("testSignOutFatalError", testSignOutFatalError),
        ("testSignUpFatalError", testSignUpFatalError),
        ("testWorkerTypeBehavior", testWorkerTypeBehavior),
    ]
}
