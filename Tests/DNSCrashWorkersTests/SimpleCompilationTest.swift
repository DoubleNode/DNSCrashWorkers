//
//  SimpleCompilationTest.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCrashWorkersTests
//
//  Created by Darren Ehlers.
//  Copyright © 2022 - 2016 DoubleNode.com. All rights reserved.
//

import Foundation
@testable import DNSCrashWorkers

// Simple compilation test to verify our code compiles
class SimpleCompilationTest {
    func testBasicCompilation() {
        let analyticsWorker = WKRCrashAnalytics()
        let authWorker = WKRCrashAuth()
        let cacheWorker = WKRCrashCache()
        
        // Just test that these can be instantiated
        assert(String(describing: type(of: analyticsWorker)).contains("Crash"))
        assert(String(describing: type(of: authWorker)).contains("Crash"))
        assert(String(describing: type(of: cacheWorker)).contains("Crash"))
        
        print("✅ All crash workers compile and instantiate correctly")
    }
}