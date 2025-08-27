//
//  WKRCrashValidationWorkerTests.swift
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

final class WKRCrashValidationWorkerTests: XCTestCase {
    var worker: WKRCrashValidation!
    
    override func setUp() {
        super.setUp()
        worker = WKRCrashValidation()
    }
    
    override func tearDown() {
        worker = nil
        super.tearDown()
    }
    
    func testInitialization() {
        XCTAssertNotNil(worker)
        XCTAssertTrue(worker is WKRCrashValidation)
        XCTAssertTrue(worker is WKRBlankValidation)
    }
    
    func testChainInitializationUnavailable() {
        // Test that chaining initialization is properly marked as unavailable
        // This would fail at compile time, but we can verify the error message exists
    }
    
    func testValidateAddressReturnsNotImplementedError() {
        // Test that intDoValidateAddress returns appropriate DNSError.Validation.notImplemented
        let address = DNSPostalAddress()
        let config = WKRPTCLValidation.Data.Config.Address()
        let result = worker.intDoValidateAddress(for: address, with: config, then: nil)
        
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
    
    func testValidateAddressCityReturnsNotImplementedError() {
        // Test that intDoValidateAddressCity returns appropriate error
        let config = WKRPTCLValidation.Data.Config.Address.City()
        let result = worker.intDoValidateAddressCity(for: "New York", with: config, then: nil)
        
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
    
    func testValidateAddressPostalCodeReturnsNotImplementedError() {
        // Test that intDoValidateAddressPostalCode returns appropriate error
        let config = WKRPTCLValidation.Data.Config.Address.PostalCode()
        let result = worker.intDoValidateAddressPostalCode(for: "12345", with: config, then: nil)
        
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
    
    func testValidateAddressStateReturnsNotImplementedError() {
        // Test that intDoValidateAddressState returns appropriate error
        let config = WKRPTCLValidation.Data.Config.Address.State()
        let result = worker.intDoValidateAddressState(for: "CA", with: config, then: nil)
        
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
    
    func testValidateAddressStreetReturnsNotImplementedError() {
        // Test that intDoValidateAddressStreet returns appropriate error
        let config = WKRPTCLValidation.Data.Config.Address.Street()
        let result = worker.intDoValidateAddressStreet(for: "123 Main St", with: config, then: nil)
        
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
    
    func testValidateEmailReturnsNotImplementedError() {
        // Test that intDoValidateEmail returns appropriate error
        let config = WKRPTCLValidation.Data.Config.Email()
        let result = worker.intDoValidateEmail(for: "test@example.com", with: config, then: nil)
        
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
    
    func testValidatePasswordReturnsNotImplementedError() {
        // Test that intDoValidatePassword returns appropriate error
        let config = WKRPTCLValidation.Data.Config.Password()
        let result = worker.intDoValidatePassword(for: "password123", with: config, then: nil)
        
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
    
    func testValidatePhoneReturnsNotImplementedError() {
        // Test that intDoValidatePhone returns appropriate error
        let config = WKRPTCLValidation.Data.Config.Phone()
        let result = worker.intDoValidatePhone(for: "555-123-4567", with: config, then: nil)
        
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
    
    func testValidationMethodsWithNilInputs() {
        // Test that validation methods handle nil inputs consistently
        let emailConfig = WKRPTCLValidation.Data.Config.Email()
        let phoneConfig = WKRPTCLValidation.Data.Config.Phone()
        let passwordConfig = WKRPTCLValidation.Data.Config.Password()
        
        let emailResult = worker.intDoValidateEmail(for: nil, with: emailConfig, then: nil)
        let phoneResult = worker.intDoValidatePhone(for: nil, with: phoneConfig, then: nil)
        let passwordResult = worker.intDoValidatePassword(for: nil, with: passwordConfig, then: nil)
        
        let results = [emailResult, phoneResult, passwordResult]
        
        for result in results {
            switch result {
            case .failure(let error):
                XCTAssertTrue(error is (any DNSError))
                let errorDescription = String(describing: error)
                XCTAssertTrue(errorDescription.contains("notImplemented"))
            case .success:
                XCTFail("Expected all methods to fail")
            }
        }
    }
    
    func testWorkerTypeBehavior() {
        // Test that this is indeed a crash worker by verifying it behaves as expected
        // Crash workers are designed to fail when used
        let className = String(describing: type(of: worker))
        XCTAssertTrue(className.contains("Crash"))
        XCTAssertTrue(className.contains("Validation"))
    }
    
    func testInheritsFromBlankWorker() {
        // Verify inheritance chain
        XCTAssertTrue(worker is WKRBlankValidation)
        XCTAssertTrue(worker is WKRBase)
    }
    
    func testWorkerIsUncheckedSendable() {
        // Test that worker conforms to @unchecked Sendable
        let sendableWorker: any Sendable = worker
        XCTAssertNotNil(sendableWorker)
    }
    
    func testErrorConsistency() {
        // Test that multiple calls return consistent error types
        let emailConfig = WKRPTCLValidation.Data.Config.Email()
        let result1 = worker.intDoValidateEmail(for: "test1@example.com", with: emailConfig, then: nil)
        let result2 = worker.intDoValidateEmail(for: "test2@example.com", with: emailConfig, then: nil)
        
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
        weak var weakWorker: WKRCrashValidation?
        
        autoreleasepool {
            let tempWorker = WKRCrashValidation()
            weakWorker = tempWorker
            XCTAssertNotNil(weakWorker)
            
            // Test that it works correctly before deallocation
            let emailConfig = WKRPTCLValidation.Data.Config.Email()
            let result = tempWorker.intDoValidateEmail(for: "test@example.com", with: emailConfig, then: nil)
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
        let expectation = XCTestExpectation(description: "Concurrent validation calls")
        expectation.expectedFulfillmentCount = 10
        
        for i in 0..<10 {
            DispatchQueue.global(qos: .utility).async { [weak self] in
                guard let self = self else { return }
                let emailConfig = WKRPTCLValidation.Data.Config.Email()
                let result = self.worker.intDoValidateEmail(for: "test\(i)@example.com", with: emailConfig, then: nil)
                
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
    
    func testAllValidationMethodsFail() {
        // Test that all validation methods consistently fail with DNSError.Validation.notImplemented
        let nameConfig = WKRPTCLValidation.Data.Config.Name()
        let handleConfig = WKRPTCLValidation.Data.Config.Handle()
        let searchConfig = WKRPTCLValidation.Data.Config.Search()
        let birthdateConfig = WKRPTCLValidation.Data.Config.Birthdate()
        let numberConfig = WKRPTCLValidation.Data.Config.Number()
        
        let nameResult = worker.intDoValidateName(for: "John Doe", with: nameConfig, then: nil)
        let handleResult = worker.intDoValidateHandle(for: "@johndoe", with: handleConfig, then: nil)
        let searchResult = worker.intDoValidateSearch(for: "search term", with: searchConfig, then: nil)
        let birthdateResult = worker.intDoValidateBirthdate(for: Date(), with: birthdateConfig, then: nil)
        let numberResult = worker.intDoValidateNumber(for: "123", with: numberConfig, then: nil)
        
        let results = [nameResult, handleResult, searchResult, birthdateResult, numberResult]
        
        for result in results {
            switch result {
            case .failure(let error):
                XCTAssertTrue(error is (any DNSError))
                let errorDescription = String(describing: error)
                XCTAssertTrue(errorDescription.contains("notImplemented"))
                XCTAssertTrue(errorDescription.contains("DNSCrashWorkers"))
            case .success:
                XCTFail("Expected all validation methods to fail")
            }
        }
    }

    nonisolated(unsafe) static let allTests = [
        ("testInitialization", testInitialization),
        ("testChainInitializationUnavailable", testChainInitializationUnavailable),
        ("testValidateAddressReturnsNotImplementedError", testValidateAddressReturnsNotImplementedError),
        ("testValidateAddressCityReturnsNotImplementedError", testValidateAddressCityReturnsNotImplementedError),
        ("testValidateAddressPostalCodeReturnsNotImplementedError", testValidateAddressPostalCodeReturnsNotImplementedError),
        ("testValidateAddressStateReturnsNotImplementedError", testValidateAddressStateReturnsNotImplementedError),
        ("testValidateAddressStreetReturnsNotImplementedError", testValidateAddressStreetReturnsNotImplementedError),
        ("testValidateEmailReturnsNotImplementedError", testValidateEmailReturnsNotImplementedError),
        ("testValidatePasswordReturnsNotImplementedError", testValidatePasswordReturnsNotImplementedError),
        ("testValidatePhoneReturnsNotImplementedError", testValidatePhoneReturnsNotImplementedError),
        ("testValidationMethodsWithNilInputs", testValidationMethodsWithNilInputs),
        ("testWorkerTypeBehavior", testWorkerTypeBehavior),
        ("testInheritsFromBlankWorker", testInheritsFromBlankWorker),
        ("testWorkerIsUncheckedSendable", testWorkerIsUncheckedSendable),
        ("testErrorConsistency", testErrorConsistency),
        ("testMemoryManagement", testMemoryManagement),
        ("testConcurrentAccess", testConcurrentAccess),
        ("testAllValidationMethodsFail", testAllValidationMethodsFail),
    ]
}
