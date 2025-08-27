//
//  DNSCrashWorkersPerformanceTests.swift
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

final class DNSCrashWorkersPerformanceTests: XCTestCase {
    
    func testWorkerInitializationPerformance() {
        measure {
            for _ in 0..<1000 {
                _ = WKRCrashAnalytics()
                _ = WKRCrashAuth()
                _ = WKRCrashCache()
                _ = WKRCrashUsers()
                _ = WKRCrashSystems()
            }
        }
    }
    
    func testAnalyticsWorkerErrorCreationPerformance() {
        let worker = WKRCrashAnalytics()
        let properties = DNSDataDictionary()
        let options = DNSDataDictionary()
        
        measure {
            for _ in 0..<1000 {
                let result = worker.intDoAutoTrack(class: "Test", method: "test", 
                                                 properties: properties, options: options, then: nil)
                switch result {
                case .failure:
                    break // Expected
                case .success:
                    XCTFail("Unexpected success")
                }
            }
        }
    }
    
    func testCacheWorkerPublisherCreationPerformance() {
        let worker = WKRCrashCache()
        
        measure {
            for _ in 0..<1000 {
                let publisher = worker.intDoDeleteObject(for: "testId", with: nil, then: nil)
                _ = publisher // Prevent optimization
            }
        }
    }
    
    func testMemoryUsageStressTest() {
        // Test creating and destroying many workers quickly
        measure {
            var workers: [WKRCrashAnalytics] = []
            workers.reserveCapacity(10000)
            
            for _ in 0..<10000 {
                workers.append(WKRCrashAnalytics())
            }
            
            // Force deallocation
            workers.removeAll()
        }
    }
    
    func testConcurrentWorkerCreation() {
        measure {
            let group = DispatchGroup()
            let queue = DispatchQueue.global(qos: .utility)
            
            for _ in 0..<100 {
                group.enter()
                queue.async {
                    for _ in 0..<10 {
                        _ = WKRCrashAnalytics()
                        _ = WKRCrashAuth()
                        _ = WKRCrashCache()
                    }
                    group.leave()
                }
            }
            
            group.wait()
        }
    }
    
    func testErrorStringGenerationPerformance() {
        let worker = WKRCrashAuth()
        
        measure {
            for _ in 0..<1000 {
                let error = DNSError.Auth.notImplemented(.crashWorkers(worker))
                _ = String(describing: error)
            }
        }
    }

    nonisolated(unsafe) static let allTests = [
        ("testWorkerInitializationPerformance", testWorkerInitializationPerformance),
        ("testAnalyticsWorkerErrorCreationPerformance", testAnalyticsWorkerErrorCreationPerformance),
        ("testCacheWorkerPublisherCreationPerformance", testCacheWorkerPublisherCreationPerformance),
        ("testMemoryUsageStressTest", testMemoryUsageStressTest),
        ("testConcurrentWorkerCreation", testConcurrentWorkerCreation),
        ("testErrorStringGenerationPerformance", testErrorStringGenerationPerformance),
    ]
}