//
//  WKRCrashPermissions.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCrashWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2022 - 2016 DoubleNode.com. All rights reserved.
//

import DNSBlankWorkers
import DNSCore
import DNSError
import DNSProtocols
import UIKit

open class WKRCrashPermissions: WKRBlankPermissions {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: DNSPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLPermissions) { DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashPermissions",
            operation: { fatalError("Unable to chain CrashWorker(s)") },
            fallbackBlock: { 
                DNSCore.reportError(DNSCrashWorkerError.crashWorkerInProduction(workerName: "WKRCrashPermissions"))
            }
        )
        fatalError("Should never reach here") }

    public required init() { super.init()
        
        // Log instantiation for tracking
        if !DNSCrashWorkerProtection.isCrashWorkerAllowed(workerName: "WKRCrashPermissions") {
            DNSCore.reportLog("🚨 WKRCrashPermissions instantiated in production build - this should not happen!")
        } }
    
    // MARK: - Internal Work Methods
    override open func intDoRequest(_ desire: WKRPTCLPermissions.Data.Desire,
                                    _ permission: WKRPTCLPermissions.Data.System,
                                    with progress: DNSPTCLProgressBlock?,
                                    and block: WKRPTCLPermissionsBlkAction?,
                                    then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Permissions.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashPermissions.intDoRequest",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoRequest(_ desire: WKRPTCLPermissions.Data.Desire,
                                    _ permissions: [WKRPTCLPermissions.Data.System],
                                    with progress: DNSPTCLProgressBlock?,
                                    and block: WKRPTCLPermissionsBlkAAction?,
                                    then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Permissions.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashPermissions.intDoRequest",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoStatus(of permissions: [WKRPTCLPermissions.Data.System],
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLPermissionsBlkAAction?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Permissions.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashPermissions.intDoStatus",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoWait(for permission: WKRPTCLPermissions.Data.System,
                                 with progress: DNSPTCLProgressBlock?,
                                 and block: WKRPTCLPermissionsBlkAction?,
                                 then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Permissions.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashPermissions.intDoWait",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
}
