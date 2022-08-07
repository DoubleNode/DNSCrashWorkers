//
//  WKRCrashUsersWorker.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBlankWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2022 - 2016 DoubleNode.com. All rights reserved.
//

import DNSBlankWorkers
import DNSDataObjects
import DNSError
import DNSProtocols

open class WKRCrashUsersWorker: WKRBlankUsersWorker {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: DNSPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLUsers) { fatalError("Unable to chain CrashWorker(s)") }

    public required init() { super.init() }

    // MARK: - Internal Work Methods
    override open func intDoLoadCurrentUser(with progress: DNSPTCLProgressBlock?,
                                            and block: WKRPTCLUsersBlkUser?,
                                            then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Users
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
        fatalError(error.errorString)
    }
    override open func intDoLoadUser(for id: String,
                                     with progress: DNSPTCLProgressBlock?,
                                     and block: WKRPTCLUsersBlkUser?,
                                     then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Users
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
        fatalError(error.errorString)
    }
    override open func intDoLoadUsers(for account: DAOAccount,
                                      with progress: DNSPTCLProgressBlock?,
                                      and block: WKRPTCLUsersBlkAUser?,
                                      then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Users
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
        fatalError(error.errorString)
    }
    override open func intDoRemoveCurrentUser(with progress: DNSPTCLProgressBlock?,
                                              and block: WKRPTCLUsersBlkVoid?,
                                              then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Users
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
        fatalError(error.errorString)
     }
    override open func intDoRemove(_ user: DAOUser,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLUsersBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Users
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
        fatalError(error.errorString)
    }
    override open func intDoUpdate(_ user: DAOUser,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLUsersBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Users
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
        fatalError(error.errorString)
    }
}
