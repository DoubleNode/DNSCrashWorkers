//
//  WKRCrashActivityTypesWorker.swift
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

open class WKRCrashActivityTypesWorker: WKRBlankActivityTypesWorker {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: DNSPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLActivityTypes) { fatalError("Unable to chain CrashWorker(s)") }

    public required init() { super.init() }

    // MARK: - Internal Work Methods
    override open func intDoLoadAccount(for user: DAOUser,
                                        with progress: DNSPTCLProgressBlock?,
                                        and block: WKRPTCLAccountBlkAccount?,
                                        then resultBlock: DNSPTCLResultBlock?) throws {
        throw DNSError.Analytics
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoFavorite(_ activityType: DAOActivityType,
                                     for user: DAOUser,
                                     with progress: DNSPTCLProgressBlock?,
                                     and block: WKRPTCLActivityTypesBlkVoid?,
                                     then resultBlock: DNSPTCLResultBlock?) throws {
        throw DNSError.Analytics
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoIsFavorited(_ activityType: DAOActivityType,
                                        for user: DAOUser,
                                        with progress: DNSPTCLProgressBlock?,
                                        and block: WKRPTCLActivityTypesBlkBool?,
                                        then resultBlock: DNSPTCLResultBlock?) throws {
        throw DNSError.Analytics
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoLoadActivityType(for code: String,
                                             with progress: DNSPTCLProgressBlock?,
                                             and block: WKRPTCLActivityTypesBlkActivityType?,
                                             then resultBlock: DNSPTCLResultBlock?) throws {
        throw DNSError.Analytics
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoLoadActivityTypes(with progress: DNSPTCLProgressBlock?,
                                              and block: WKRPTCLActivityTypesBlkAActivityType?,
                                              then resultBlock: DNSPTCLResultBlock?) throws {
        throw DNSError.Analytics
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoUnfavorite(_ activityType: DAOActivityType,
                                       for user: DAOUser,
                                       with progress: DNSPTCLProgressBlock?,
                                       and block: WKRPTCLActivityTypesBlkVoid?,
                                       then resultBlock: DNSPTCLResultBlock?) throws {
        throw DNSError.Analytics
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoUpdate(_ activityType: DAOActivityType,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLActivityTypesBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) throws {
        throw DNSError.Analytics
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
}
