//
//  WKRCrashUsers.swift
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

open class WKRCrashUsers: WKRBlankUsers {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: DNSPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLUsers) { fatalError("Unable to chain CrashWorker(s)") }

    public required init() { super.init() }

    // MARK: - Internal Work Methods
    override open func intDoActivate(_ user: DAOUser,
                                     with progress: DNSPTCLProgressBlock?,
                                     and block: WKRPTCLUsersBlkBool?,
                                     then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Users.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoConfirm(pendingUser: DAOUser,
                                    with progress: DNSPTCLProgressBlock?,
                                    and block: WKRPTCLAccountBlkVoid?,
                                    then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Users.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoConsent(childUser: DAOUser,
                                    with progress: DNSPTCLProgressBlock?,
                                    and block: WKRPTCLAccountBlkVoid?,
                                    then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Users.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoLoadCurrentUser(with progress: DNSPTCLProgressBlock?,
                                            and block: WKRPTCLUsersBlkUser?,
                                            then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Users.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoLoadChildUsers(for user: DAOUser,
                                           with progress: DNSPTCLProgressBlock?,
                                           and block: WKRPTCLUsersBlkAUser?,
                                           then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Users.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoLoadLinkRequests(for user: DAOUser,
                                             using parameters: DNSDataDictionary,
                                             with progress: DNSProtocols.DNSPTCLProgressBlock?,
                                             and block: WKRPTCLUsersBlkAAccountLinkRequest?,
                                             then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Users.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoLoadPendingUsers(for user: DAOUser,
                                             with progress: DNSPTCLProgressBlock?,
                                             and block: WKRPTCLUsersBlkAUser?,
                                             then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Users.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoLoadUnverifiedAccounts(for user: DAOUser,
                                                   with progress: DNSPTCLProgressBlock?,
                                                   and block: WKRPTCLUsersBlkAAccount?,
                                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Users.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoLoadUser(for id: String,
                                     with progress: DNSPTCLProgressBlock?,
                                     and block: WKRPTCLUsersBlkUser?,
                                     then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Users.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoLoadUsers(for account: DAOAccount,
                                      with progress: DNSPTCLProgressBlock?,
                                      and block: WKRPTCLUsersBlkAUser?,
                                      then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Users.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoRemove(_ user: DAOUser,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLUsersBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Users.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoUpdate(_ user: DAOUser,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLUsersBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Users.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
}
