//
//  WKRCrashActivityTypesWorker.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBlankWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2020 - 2016 DoubleNode.com. All rights reserved.
//

import DNSBlankWorkers
import DNSDataObjects
import DNSError
import DNSProtocols
import Foundation

open class WKRCrashActivityTypesWorker: WKRBlankActivityTypesWorker {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: WKRPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLActivityTypes) { fatalError("Unable to chain CrashWorker(s)") }

    public required init() { super.init() }

    // MARK: - Internal Work Methods
    override open func intDoLoadAccount(for user: DAOUser,
                                        with progress: WKRPTCLProgressBlock?,
                                        and block: WKRPTCLAccountBlockAccount?,
                                        then resultBlock: WKRPTCLResultBlock?) throws {
        throw DNSError.Analytics
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoFavorite(_ activityType: DAOActivityType,
                                     for user: DAOUser,
                                     with progress: WKRPTCLProgressBlock?,
                                     and block: WKRPTCLActivityTypesBlockVoid?,
                                     then resultBlock: WKRPTCLResultBlock?) throws {
        throw DNSError.Analytics
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoIsFavorited(_ activityType: DAOActivityType,
                                        for user: DAOUser,
                                        with progress: WKRPTCLProgressBlock?,
                                        and block: WKRPTCLActivityTypesBlockBool?,
                                        then resultBlock: WKRPTCLResultBlock?) throws {
        throw DNSError.Analytics
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoLoadActivityType(for code: String,
                                             with progress: WKRPTCLProgressBlock?,
                                             and block: WKRPTCLActivityTypesBlockActivityType?,
                                             then resultBlock: WKRPTCLResultBlock?) throws {
        throw DNSError.Analytics
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoLoadActivityTypes(with progress: WKRPTCLProgressBlock?,
                                              and block: WKRPTCLActivityTypesBlockArrayActivityType?,
                                              then resultBlock: WKRPTCLResultBlock?) throws {
        throw DNSError.Analytics
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoUnfavorite(_ activityType: DAOActivityType,
                                       for user: DAOUser,
                                       with progress: WKRPTCLProgressBlock?,
                                       and block: WKRPTCLActivityTypesBlockVoid?,
                                       then resultBlock: WKRPTCLResultBlock?) throws {
        throw DNSError.Analytics
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoUpdate(_ activityType: DAOActivityType,
                                   with progress: WKRPTCLProgressBlock?,
                                   and block: WKRPTCLActivityTypesBlockBool?,
                                   then resultBlock: WKRPTCLResultBlock?) throws {
        throw DNSError.Analytics
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
}
