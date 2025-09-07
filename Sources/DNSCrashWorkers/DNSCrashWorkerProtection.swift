//
//  DNSCrashWorkerProtection.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCrashWorkers
//
//  Created by Claude Code.
//  Copyright © 2025 DoubleNode.com. All rights reserved.
//

import DNSCore
import DNSError
import Foundation

/// Production safety system for crash workers
/// This system provides multiple layers of protection to prevent crash workers
/// from being accidentally used in production builds.
public final class DNSCrashWorkerProtection {
    
    /// Build configuration detection
    public enum BuildConfiguration {
        case debug
        case release
        case testing
        case unknown
        
        static var current: BuildConfiguration {
            #if DEBUG
            return .debug
            #elseif RELEASE
            return .release
            #elseif TEST
            return .testing
            #else
            return .unknown
            #endif
        }
    }
    
    /// Protection level for crash workers
    public enum ProtectionLevel {
        case disabled      // No protection (dangerous)
        case warning       // Log warnings but allow execution
        case strict        // Prevent execution in production
        case testing       // Only allow in test environments
        case testingSafe   // Block all fatal operations, even in debug builds
    }
    
    /// Current protection level (can be overridden for testing)
    public static var protectionLevel: ProtectionLevel = {
        switch BuildConfiguration.current {
        case .debug:
            return .warning
        case .release:
            return .strict
        case .testing:
            return .testing
        case .unknown:
            return .strict
        }
    }()
    
    /// Check if crash workers are allowed in current build configuration
    /// - Parameter workerName: Name of the crash worker being instantiated
    /// - Returns: true if allowed, false if blocked
    public static func isCrashWorkerAllowed(workerName: String) -> Bool {
        switch protectionLevel {
        case .disabled:
            return true

        case .warning:
            DNSCore.reportLog("⚠️ WARNING: CrashWorker '\(workerName)' instantiated in \(BuildConfiguration.current) build")
            return true

        case .testing:
            let isAllowed = BuildConfiguration.current == .testing || BuildConfiguration.current == .debug
            if !isAllowed {
                DNSCore.reportLog("🚨 ERROR: CrashWorker '\(workerName)' blocked in \(BuildConfiguration.current) build")
            }
            return isAllowed

        case .testingSafe:
            // Always block fatal operations in testing mode, even in debug builds
            DNSCore.reportLog("🧪 TESTING: CrashWorker '\(workerName)' blocked for safe testing")
            return false

        case .strict:
            let isAllowed = BuildConfiguration.current == .debug
            if !isAllowed {
                DNSCore.reportLog("🚨 BLOCKED: CrashWorker '\(workerName)' prevented in \(BuildConfiguration.current) build")
                DNSCore.reportError(DNSCrashWorkerError.crashWorkerInProduction(workerName: workerName))
            }
            return isAllowed
        }
    }
    
    /// Execute a potentially crashing operation with safety checks
    /// - Parameters:
    ///   - workerName: Name of the crash worker
    ///   - operation: The operation that would normally call fatalError
    ///   - fallbackBlock: Block to execute if operation is blocked
    public static func safeCrashExecution(
        workerName: String,
        operation: () -> Never,
        fallbackBlock: (() -> Void)? = nil
    ) {
        guard isCrashWorkerAllowed(workerName: workerName) else {
            // Execute fallback instead of crashing
            fallbackBlock?()
            return
        }
        
        // If we reach here, crash is allowed (debug builds)
        operation()
    }
    
    /// Generate a crash worker usage report
    public static func generateUsageReport() -> String {
        let config = BuildConfiguration.current
        let protection = protectionLevel
        
        return """
        DNSCrashWorker Protection Status:
        - Build Configuration: \(config)
        - Protection Level: \(protection)
        - Crash Workers Allowed: \(isCrashWorkerAllowed(workerName: "test"))
        - Framework Version: \(DNSCore.versionString)
        
        SAFETY NOTICE: 
        Crash workers should NEVER be used in production builds.
        They are designed to force implementation during development.
        """
    }
}

/// Errors related to crash worker protection
public enum DNSCrashWorkerError: DNSError {
    case crashWorkerInProduction(workerName: String)
    case unsafeConfiguration
    
    public static let domain = "CRASHWORKER_PROTECTION"
    
    public enum Code: Int {
        case crashWorkerInProduction = 1001
        case unsafeConfiguration = 1002
    }
    
    public var code: Code {
        switch self {
        case .crashWorkerInProduction: return .crashWorkerInProduction
        case .unsafeConfiguration: return .unsafeConfiguration
        }
    }
    
    public var codeValue: Int {
        switch self {
        case .crashWorkerInProduction: return Code.crashWorkerInProduction.rawValue
        case .unsafeConfiguration: return Code.unsafeConfiguration.rawValue
        }
    }
    
    public var errorDescription: String? {
        switch self {
        case .crashWorkerInProduction(let workerName):
            return "🚨 CRITICAL: Crash worker '\(workerName)' attempted execution in production build. This would cause app crash."
        case .unsafeConfiguration:
            return "⚠️ WARNING: Crash worker protection is disabled or misconfigured."
        }
    }
    
    public var failureReason: String? {
        switch self {
        case .crashWorkerInProduction:
            return "Crash workers contain fatalError() calls and will immediately crash the application if executed."
        case .unsafeConfiguration:
            return "Protection level is set to allow crash workers in non-development builds."
        }
    }
    
    public var recoverySuggestion: String? {
        switch self {
        case .crashWorkerInProduction:
            return "Replace all crash workers with proper implementations before release builds. Use blank workers or actual implementations."
        case .unsafeConfiguration:
            return "Review DNSCrashWorkerProtection.protectionLevel configuration and ensure it's appropriate for your build."
        }
    }
    
    public var errorString: String {
        return errorDescription ?? "Unknown crash worker protection error"
    }
}
