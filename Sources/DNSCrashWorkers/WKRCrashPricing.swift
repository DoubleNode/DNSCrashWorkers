//
//  WKRCrashPricing.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBlankWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2025 - 2016 DoubleNode.com. All rights reserved.
//

import DNSBlankWorkers
import DNSCore
import DNSDataObjects
import DNSError
import DNSProtocols
import Foundation

open class WKRCrashPricing: WKRBasePricing {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: DNSPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLPricing) {
        super.init()
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashPricing",
            operation: { fatalError("Unable to chain CrashWorker(s)") },
            fallbackBlock: {
                DNSCore.reportError(DNSCrashWorkerError.crashWorkerInProduction(workerName: "WKRCrashPricing"))
            }
        )
    }

    public required init() { super.init()
        
        // Log instantiation for tracking
        if !DNSCrashWorkerProtection.isCrashWorkerAllowed(workerName: "WKRCrashPricing") {
            DNSCore.reportLog("🚨 WKRCrashPricing instantiated in production build - this should not happen!")
        } }

    // MARK: - Internal Work Methods
    override open func intDoLoadPricingItems(for pricingTier: DAOPricingTier,
                                             and pricingSeason: DAOPricingSeason,
                                             with progress: DNSPTCLProgressBlock?,
                                             and block: WKRPTCLPricingBlkAPricingItem?,
                                             then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Pricing.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashPricing.intDoLoadPricingItems",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoLoadPricingSeasons(for pricingTier: DAOPricingTier,
                                               with progress: DNSPTCLProgressBlock?,
                                               and block: WKRPTCLPricingBlkAPricingSeason?,
                                               then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Pricing.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashPricing.intDoLoadPricingSeasons",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoLoadPricingTiers(with progress: DNSPTCLProgressBlock?,
                                             and block: WKRPTCLPricingBlkAPricingTier?,
                                             then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Pricing.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashPricing.intDoLoadPricingTiers",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoRemove(_ pricingTier: DAOPricingTier,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLPricingBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Pricing.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashPricing.intDoRemove",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoRemove(_ pricingSeason: DAOPricingSeason,
                                   for pricingTier: DAOPricingTier,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLPricingBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Pricing.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashPricing.intDoRemove",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoRemove(_ pricingItem: DAOPricingItem,
                                   for pricingTier: DAOPricingTier,
                                   and pricingSeason: DAOPricingSeason,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLPricingBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Pricing.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashPricing.intDoRemove",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoUpdate(_ pricingTier: DAOPricingTier,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLPricingBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Pricing.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashPricing.intDoUpdate",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoUpdate(_ pricingSeason: DAOPricingSeason,
                                   for pricingTier: DAOPricingTier,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLPricingBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Pricing.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashPricing.intDoUpdate",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoUpdate(_ pricingItem: DAOPricingItem,
                                   for pricingTier: DAOPricingTier,
                                   and pricingSeason: DAOPricingSeason,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLPricingBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Pricing.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashPricing.intDoUpdate",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
}
