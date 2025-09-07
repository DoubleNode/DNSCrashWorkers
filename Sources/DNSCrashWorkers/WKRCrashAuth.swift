//
//  WKRCrashAuth.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCrashWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2025 - 2016 DoubleNode.com. All rights reserved.
//

import DNSBlankWorkers
import DNSCore
import DNSDataContracts
import DNSDataObjects
import DNSError
import DNSProtocols
import Foundation

open class WKRCrashAuth: WKRBlankAuth {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: DNSPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLAuth) {
        super.init()
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashAuth",
            operation: { fatalError("Unable to chain CrashWorker(s)") },
            fallbackBlock: {
                DNSCore.reportError(DNSCrashWorkerError.crashWorkerInProduction(workerName: "WKRCrashAuth"))
            }
        )
    }

    public required init() { 
        super.init()
        
        // Log instantiation for tracking
        if !DNSCrashWorkerProtection.isCrashWorkerAllowed(workerName: "WKRCrashAuth") {
            DNSCore.reportLog("🚨 WKRCrashAuth instantiated in production build - this should not happen!")
        }
    }
    
    // MARK: - Internal Work Methods
    override open func intDoCheckAuth(using parameters: DNSDataDictionary,
                                      with progress: DNSPTCLProgressBlock?,
                                      and block: WKRPTCLAuthBlkBoolBoolAccessData?,
                                      then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Auth.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashAuth.intDoCheckAuth",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                // Safe fallback - call error block instead of crashing
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoLinkAuth(from username: String,
                                     and password: String,
                                     using parameters: DNSDataDictionary,
                                     with progress: DNSPTCLProgressBlock?,
                                     and block: WKRPTCLAuthBlkBoolAccessData?,
                                     then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Auth.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashAuth.intDoLinkAuth",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                // Safe fallback - call error block instead of crashing
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoPasswordResetStart(from username: String?,
                                               using parameters: DNSDataDictionary,
                                               with progress: DNSPTCLProgressBlock?,
                                               and block: WKRPTCLAuthBlkVoid?,
                                               then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Auth.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashAuth.intDoPasswordResetStart",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                // Safe fallback - call error block instead of crashing
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoSignIn(from username: String?,
                                   and password: String?,
                                   using parameters: DNSDataDictionary,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLAuthBlkBoolAccessData?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Auth.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashAuth.intDoSignIn",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                // Safe fallback - call error block instead of crashing
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoSignOut(using parameters: DNSDataDictionary,
                                    with progress: DNSPTCLProgressBlock?,
                                    and block: WKRPTCLAuthBlkVoid?,
                                    then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Auth.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashAuth.intDoSignOut",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                // Safe fallback - call error block instead of crashing
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoSignUp(from user: (any DAOUserProtocol)?,
                                   and password: String?,
                                   using parameters: DNSDataDictionary,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLAuthBlkBoolAccessData?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Auth.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashAuth.intDoSignUp",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                // Safe fallback - call error block instead of crashing
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
}
