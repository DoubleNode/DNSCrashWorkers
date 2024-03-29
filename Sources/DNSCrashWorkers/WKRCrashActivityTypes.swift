//
//  WKRCrashActivityTypes.swift
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

open class WKRCrashActivityTypes: WKRBlankActivityTypes {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: DNSPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLActivityTypes) { fatalError("Unable to chain CrashWorker(s)") }

    public required init() { super.init() }

    // MARK: - Internal Work Methods
    override open func intDoLoadActivityType(for code: String,
                                             with progress: DNSPTCLProgressBlock?,
                                             and block: WKRPTCLActivityTypesBlkActivityType?,
                                             then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.ActivityTypes.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoLoadActivityType(for tag: DNSString,
                                             with progress: DNSPTCLProgressBlock?,
                                             and block: WKRPTCLActivityTypesBlkActivityType?,
                                             then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.ActivityTypes.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoLoadActivityTypes(with progress: DNSPTCLProgressBlock?,
                                              and block: WKRPTCLActivityTypesBlkAActivityType?,
                                              then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.ActivityTypes.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoLoadPricing(for activityType: DAOActivityType,
                                        with progress: DNSPTCLProgressBlock?,
                                        and block: WKRPTCLActivityTypesBlkPricing?,
                                        then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.ActivityTypes.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoReact(with reaction: DNSReactionType,
                                  to activityType: DAOActivityType,
                                  with progress: DNSPTCLProgressBlock?,
                                  and block: WKRPTCLActivityTypesBlkMeta?,
                                  then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.ActivityTypes.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoUnreact(with reaction: DNSReactionType,
                                    to activityType: DAOActivityType,
                                    with progress: DNSPTCLProgressBlock?,
                                    and block: WKRPTCLActivityTypesBlkMeta?,
                                    then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.ActivityTypes.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoUpdate(_ activityType: DAOActivityType,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLActivityTypesBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.ActivityTypes.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoUpdate(_ pricing: DAOPricing,
                                   for activityType: DAOActivityType,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLActivityTypesBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.ActivityTypes.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
}
