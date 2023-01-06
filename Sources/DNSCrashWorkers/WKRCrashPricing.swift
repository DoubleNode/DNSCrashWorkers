//
//  WKRCrashPricing.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBlankWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2022 - 2016 DoubleNode.com. All rights reserved.
//

import DNSBlankWorkers
import DNSDataObjects
import DNSError
import DNSProtocols
import Foundation

open class WKRCrashPricing: WKRBlankPricing {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: DNSPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLPricing) { fatalError("Unable to chain CrashWorker(s)") }

    public required init() { super.init() }

    // MARK: - Internal Work Methods
    override open func intDoLoadPricingItems(for pricingTier: DAOPricingTier,
                                             and pricingSeason: DAOPricingSeason,
                                             with progress: DNSPTCLProgressBlock?,
                                             and block: WKRPTCLPricingBlkAPricingItem?,
                                             then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Pricing.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoLoadPricingSeasons(for pricingTier: DAOPricingTier,
                                               with progress: DNSPTCLProgressBlock?,
                                               and block: WKRPTCLPricingBlkAPricingSeason?,
                                               then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Pricing.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoLoadPricingTiers(with progress: DNSPTCLProgressBlock?,
                                             and block: WKRPTCLPricingBlkAPricingTier?,
                                             then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Pricing.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoRemove(_ pricingTier: DAOPricingTier,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLPricingBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Pricing.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoRemove(_ pricingSeason: DAOPricingSeason,
                                   for pricingTier: DAOPricingTier,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLPricingBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Pricing.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoRemove(_ pricingItem: DAOPricingItem,
                                   for pricingTier: DAOPricingTier,
                                   and pricingSeason: DAOPricingSeason,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLPricingBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Pricing.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoUpdate(_ pricingTier: DAOPricingTier,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLPricingBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Pricing.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoUpdate(_ pricingSeason: DAOPricingSeason,
                                   for pricingTier: DAOPricingTier,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLPricingBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Pricing.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoUpdate(_ pricingItem: DAOPricingItem,
                                   for pricingTier: DAOPricingTier,
                                   and pricingSeason: DAOPricingSeason,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLPricingBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Pricing.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
}
