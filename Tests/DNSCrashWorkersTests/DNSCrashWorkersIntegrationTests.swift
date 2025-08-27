//
//  DNSCrashWorkersIntegrationTests.swift
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

final class DNSCrashWorkersIntegrationTests: XCTestCase {
    
    func testAllWorkerInitialization() {
        // Test that all crash workers can be initialized successfully
        XCTAssertNoThrow(WKRCrashAccount())
        XCTAssertNoThrow(WKRCrashActivities())
        XCTAssertNoThrow(WKRCrashActivityTypes())
        XCTAssertNoThrow(WKRCrashAdmin())
        XCTAssertNoThrow(WKRCrashAlerts())
        XCTAssertNoThrow(WKRCrashAnalytics())
        XCTAssertNoThrow(WKRCrashAnnouncements())
        XCTAssertNoThrow(WKRCrashAppEvents())
        XCTAssertNoThrow(WKRCrashAppReview())
        XCTAssertNoThrow(WKRCrashAuth())
        XCTAssertNoThrow(WKRCrashBeaconDist())
        XCTAssertNoThrow(WKRCrashBeacons())
        XCTAssertNoThrow(WKRCrashCache())
        XCTAssertNoThrow(WKRCrashCards())
        XCTAssertNoThrow(WKRCrashCart())
        XCTAssertNoThrow(WKRCrashChats())
        XCTAssertNoThrow(WKRCrashCms())
        XCTAssertNoThrow(WKRCrashEvents())
        XCTAssertNoThrow(WKRCrashGeo())
        XCTAssertNoThrow(WKRCrashIdentity())
        XCTAssertNoThrow(WKRCrashMedia())
        XCTAssertNoThrow(WKRCrashPassStrength())
        XCTAssertNoThrow(WKRCrashPassports())
        XCTAssertNoThrow(WKRCrashPermissions())
        XCTAssertNoThrow(WKRCrashPlaces())
        XCTAssertNoThrow(WKRCrashPricing())
        XCTAssertNoThrow(WKRCrashProducts())
        XCTAssertNoThrow(WKRCrashPromotions())
        XCTAssertNoThrow(WKRCrashSections())
        XCTAssertNoThrow(WKRCrashSupport())
        XCTAssertNoThrow(WKRCrashSystems())
        XCTAssertNoThrow(WKRCrashUsers())
        XCTAssertNoThrow(WKRCrashValidation())
    }
    
    func testAllWorkersAreUncheckedSendable() {
        // Test that all workers conform to @unchecked Sendable
        let workers: [any Sendable] = [
            WKRCrashAccount(),
            WKRCrashActivities(),
            WKRCrashActivityTypes(),
            WKRCrashAdmin(),
            WKRCrashAlerts(),
            WKRCrashAnalytics(),
            WKRCrashAnnouncements(),
            WKRCrashAppEvents(),
            WKRCrashAppReview(),
            WKRCrashAuth(),
            WKRCrashBeaconDist(),
            WKRCrashBeacons(),
            WKRCrashCache(),
            WKRCrashCards(),
            WKRCrashCart(),
            WKRCrashChats(),
            WKRCrashCms(),
            WKRCrashEvents(),
            WKRCrashGeo(),
            WKRCrashIdentity(),
            WKRCrashMedia(),
            WKRCrashPassStrength(),
            WKRCrashPassports(),
            WKRCrashPermissions(),
            WKRCrashPlaces(),
            WKRCrashPricing(),
            WKRCrashProducts(),
            WKRCrashPromotions(),
            WKRCrashSections(),
            WKRCrashSupport(),
            WKRCrashSystems(),
            WKRCrashUsers(),
            WKRCrashValidation()
        ]
        
        XCTAssertEqual(workers.count, 33, "All workers should be accounted for")
        
        for worker in workers {
            XCTAssertNotNil(worker, "Worker should not be nil")
        }
    }
    
    func testWorkersFollowNamingConvention() {
        // Test that all workers follow the naming convention
        let workers = [
            WKRCrashAccount(),
            WKRCrashActivities(),
            WKRCrashActivityTypes(),
            WKRCrashAdmin(),
            WKRCrashAlerts(),
            WKRCrashAnalytics(),
            WKRCrashAnnouncements(),
            WKRCrashAppEvents(),
            WKRCrashAppReview(),
            WKRCrashAuth(),
            WKRCrashBeaconDist(),
            WKRCrashBeacons(),
            WKRCrashCache(),
            WKRCrashCards(),
            WKRCrashCart(),
            WKRCrashChats(),
            WKRCrashCms(),
            WKRCrashEvents(),
            WKRCrashGeo(),
            WKRCrashIdentity(),
            WKRCrashMedia(),
            WKRCrashPassStrength(),
            WKRCrashPassports(),
            WKRCrashPermissions(),
            WKRCrashPlaces(),
            WKRCrashPricing(),
            WKRCrashProducts(),
            WKRCrashPromotions(),
            WKRCrashSections(),
            WKRCrashSupport(),
            WKRCrashSystems(),
            WKRCrashUsers(),
            WKRCrashValidation()
        ]
        
        for worker in workers {
            let className = String(describing: type(of: worker))
            XCTAssertTrue(className.starts(with: "WKRCrash"), 
                         "Worker \(className) should start with 'WKRCrash'")
        }
    }
    
    func testMemoryManagement() {
        // Test that workers can be properly deallocated
        weak var weakWorker: WKRCrashAnalytics?
        
        autoreleasepool {
            let worker = WKRCrashAnalytics()
            weakWorker = worker
            XCTAssertNotNil(weakWorker)
        }
        
        XCTAssertNil(weakWorker, "Worker should be deallocated")
    }
    
    func testConcurrentInitialization() {
        // Test concurrent initialization of workers
        let expectation = XCTestExpectation(description: "Concurrent initialization")
        expectation.expectedFulfillmentCount = 10
        
        DispatchQueue.concurrentPerform(iterations: 10) { _ in
            let worker = WKRCrashAnalytics()
            XCTAssertNotNil(worker)
            expectation.fulfill()
        }
        
        wait(for: [expectation], timeout: 5.0)
    }

    nonisolated(unsafe) static let allTests = [
        ("testAllWorkerInitialization", testAllWorkerInitialization),
        ("testAllWorkersAreUncheckedSendable", testAllWorkersAreUncheckedSendable),
        ("testWorkersFollowNamingConvention", testWorkersFollowNamingConvention),
        ("testMemoryManagement", testMemoryManagement),
        ("testConcurrentInitialization", testConcurrentInitialization),
    ]
}