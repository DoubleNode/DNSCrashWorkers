//
//  WKRCrashAccount.swift
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

open class WKRCrashAccount: WKRBlankAccount {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: DNSPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLAccount) { fatalError("Unable to chain CrashWorker(s)") }

    public required init() { super.init() }

    // MARK: - Internal Work Methods
    override open func intDoActivate(account: DAOAccount,
                                     with progress: DNSPTCLProgressBlock?,
                                     and block: WKRPTCLAccountBlkBool?,
                                     then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Account.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoDeactivate(account: DAOAccount,
                                       with progress: DNSPTCLProgressBlock?,
                                       and block: WKRPTCLAccountBlkVoid?,
                                       then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Account.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoDelete(account: DAOAccount,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLAccountBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Account.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoLoadAccount(for id: String,
                                        with progress: DNSProtocols.DNSPTCLProgressBlock?,
                                        and block: WKRPTCLAccountBlkAccount?,
                                        then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Account.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoLoadAccounts(for user: DAOUser,
                                         with progress: DNSProtocols.DNSPTCLProgressBlock?,
                                         and block: WKRPTCLAccountBlkAAccount?,
                                         then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Account.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoLoadCurrentAccounts(with progress: DNSPTCLProgressBlock?,
                                                and block: WKRPTCLAccountBlkAAccount?,
                                                then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Account.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoSearchAccounts(using parameters: DNSDataDictionary,
                                           with progress: DNSPTCLProgressBlock?,
                                           and block: WKRPTCLAccountBlkAAccount?,
                                           then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Account.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoUpdate(account: DAOAccount,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLAccountBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Account.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
}
