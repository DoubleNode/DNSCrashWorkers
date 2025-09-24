//
//  WKRCrashActivityTypes.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBlankWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2025 - 2016 DoubleNode.com. All rights reserved.
//

import DNSBlankWorkers
import DNSCore
import DNSDataObjects
import DNSDataTypes
import DNSError
import DNSProtocols
import Foundation

open class WKRCrashActivityTypes: WKRBaseActivityTypes {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: DNSPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLActivityTypes) {
        super.init()
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashActivityTypes",
            operation: { fatalError("Unable to chain CrashWorker(s)") },
            fallbackBlock: {
                DNSCore.reportError(DNSCrashWorkerError.crashWorkerInProduction(workerName: "WKRCrashActivityTypes"))
            }
        )
    }

    public required init() { super.init()
        
        // Log instantiation for tracking
        if !DNSCrashWorkerProtection.isCrashWorkerAllowed(workerName: "WKRCrashActivityTypes") {
            DNSCore.reportLog("🚨 WKRCrashActivityTypes instantiated in production build - this should not happen!")
        } }

    // MARK: - Internal Work Methods
    override open func intDoLoadActivityType(for code: String,
                                             with progress: DNSPTCLProgressBlock?,
                                             and block: WKRPTCLActivityTypesBlkActivityType?,
                                             then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.ActivityTypes.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashActivityTypes.intDoLoadActivityType",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoLoadActivityType(for tag: DNSString,
                                             with progress: DNSPTCLProgressBlock?,
                                             and block: WKRPTCLActivityTypesBlkActivityType?,
                                             then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.ActivityTypes.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashActivityTypes.intDoLoadActivityType",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoLoadActivityTypes(with progress: DNSPTCLProgressBlock?,
                                              and block: WKRPTCLActivityTypesBlkAActivityType?,
                                              then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.ActivityTypes.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashActivityTypes.intDoLoadActivityTypes",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoLoadPricing(for activityType: DAOActivityType,
                                        with progress: DNSPTCLProgressBlock?,
                                        and block: WKRPTCLActivityTypesBlkPricing?,
                                        then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.ActivityTypes.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashActivityTypes.intDoLoadPricing",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoReact(with reaction: DNSReactionType,
                                  to activityType: DAOActivityType,
                                  with progress: DNSPTCLProgressBlock?,
                                  and block: WKRPTCLActivityTypesBlkMeta?,
                                  then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.ActivityTypes.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashActivityTypes.intDoReact",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoUnreact(with reaction: DNSReactionType,
                                    to activityType: DAOActivityType,
                                    with progress: DNSPTCLProgressBlock?,
                                    and block: WKRPTCLActivityTypesBlkMeta?,
                                    then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.ActivityTypes.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashActivityTypes.intDoUnreact",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoUpdate(_ activityType: DAOActivityType,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLActivityTypesBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.ActivityTypes.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashActivityTypes.intDoUpdate",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoUpdate(_ pricing: DAOPricing,
                                   for activityType: DAOActivityType,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLActivityTypesBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.ActivityTypes.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashActivityTypes.intDoUpdate",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
}
