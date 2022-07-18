//
//  WKRCrashUserWorker.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBlankWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2020 - 2016 DoubleNode.com. All rights reserved.
//

import DNSBlankWorkers
import DNSDataObjects
import DNSError
import DNSProtocols

open class WKRCrashUserWorker: WKRBlankUserWorker {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: WKRPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLUsers) { fatalError("Unable to chain CrashWorker(s)") }

    public required init() { super.init() }

    // MARK: - Internal Work Methods
    override open func intDoLoadCurrentUser(with progress: WKRPTCLProgressBlock?,
                                            and block: WKRPTCLUsersBlockUser?,
                                            then resultBlock: WKRPTCLResultBlock?) throws {
        throw DNSError.Analytics
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoLoadUser(for id: String,
                                     with progress: WKRPTCLProgressBlock?,
                                     and block: WKRPTCLUsersBlockUser?,
                                     then resultBlock: WKRPTCLResultBlock?) throws {
        throw DNSError.Analytics
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoRemoveCurrentUser(with progress: WKRPTCLProgressBlock?,
                                              and block: WKRPTCLUsersBlockBool?,
                                              then resultBlock: WKRPTCLResultBlock?) throws {
        throw DNSError.Analytics
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoRemove(_ user: DAOUser,
                                   with progress: WKRPTCLProgressBlock?,
                                   and block: WKRPTCLUsersBlockBool?,
                                   then resultBlock: WKRPTCLResultBlock?) throws {
        throw DNSError.Analytics
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoUpdate(_ user: DAOUser,
                                   with progress: WKRPTCLProgressBlock?,
                                   and block: WKRPTCLUsersBlockBool?,
                                   then resultBlock: WKRPTCLResultBlock?) throws {
        throw DNSError.Analytics
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
}
