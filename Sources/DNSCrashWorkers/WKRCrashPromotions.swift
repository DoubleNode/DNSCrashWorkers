//
//  WKRCrashPromotions.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBlankWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2022 - 2016 DoubleNode.com. All rights reserved.
//

import DNSBlankWorkers
import DNSCore
import DNSDataObjects
import DNSError
import DNSProtocols
import Foundation

open class WKRCrashPromotions: WKRBlankPromotions {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: DNSPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLPromotions) { fatalError("Unable to chain CrashWorker(s)") }

    public required init() { super.init() }

    // MARK: - Internal Work Methods
    override open func intDoAnalytics(for object: DAOBaseObject,
                                      using data: DNSDataDictionary,
                                      with progress: DNSPTCLProgressBlock?,
                                      and block: WKRPTCLWorkerBaseBlkAAnalyticsData?,
                                      then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Promotions.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoDelete(_ promotion: DAOPromotion,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLPromotionsBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Promotions.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoDispense(_ id: String,
                                     with progress: DNSPTCLProgressBlock?,
                                     and block: WKRPTCLPromotionsBlkVoid?,
                                     then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Promotions.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoLoadPromotion(for id: String,
                                          with progress: DNSPTCLProgressBlock?,
                                          and block: WKRPTCLPromotionsBlkPromotion?,
                                          then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Promotions.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoLoadPromotions(for account: DAOAccount?,
                                           with progress: DNSPTCLProgressBlock?,
                                           and block: WKRPTCLPromotionsBlkAPromotion?,
                                           then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Promotions.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoLoadPromotions(for path: String,
                                           with progress: DNSPTCLProgressBlock?,
                                           and block: WKRPTCLPromotionsBlkAPromotion?,
                                           then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Promotions.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoReact(with reaction: DNSReactionType,
                                  to promotion: DAOPromotion,
                                  with progress: DNSPTCLProgressBlock?,
                                  and block: WKRPTCLPromotionsBlkMeta?,
                                  then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Promotions.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoUnreact(with reaction: DNSReactionType,
                                    to promotion: DAOPromotion,
                                    with progress: DNSPTCLProgressBlock?,
                                    and block: WKRPTCLPromotionsBlkMeta?,
                                    then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Promotions.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoUpdate(_ promotion: DAOPromotion,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLPromotionsBlkPromotion?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Promotions.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
}
