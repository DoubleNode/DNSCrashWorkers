//
//  WKRBlankAdmin.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBlankWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2022 - 2016 DoubleNode.com. All rights reserved.
//

import Combine
import DNSBlankWorkers
import DNSDataObjects
import DNSError
import DNSProtocols
import Foundation

open class WKRCrashAdmin: WKRBlankAdmin {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: DNSPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLAdmin) { fatalError("Unable to chain CrashWorker(s)") }

    public required init() { super.init() }

    // MARK: - Internal Work Methods
    override open func intDoChange(_ user: DAOUser,
                                   to role: DNSUserRole,
                                   with progress: DNSPTCLProgressBlock?,
                                   then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLAdminPubVoid {
        return WKRPTCLAdminFutVoid { promise in
            let error = DNSError.Admin.notImplemented(.crashWorkers(self))
            promise(.failure(error))
        }.eraseToAnyPublisher()
    }
    override open func intDoCheckAdmin(with progress: DNSPTCLProgressBlock?,
                                       then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLAdminPubBool {
        return WKRPTCLAdminFutBool { promise in
            let error = DNSError.Admin.notImplemented(.crashWorkers(self))
            promise(.failure(error))
        }.eraseToAnyPublisher()
    }
    override open func intDoCompleteDeleted(account: DAOAccount,
                                            with progress: DNSPTCLProgressBlock?,
                                            then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLAdminPubVoid {
        return WKRPTCLAdminFutVoid { promise in
            let error = DNSError.Admin.notImplemented(.crashWorkers(self))
            promise(.failure(error))
        }.eraseToAnyPublisher()
    }
    override open func intDoDenyChangeRequest(for user: DAOUser,
                                              with progress: DNSPTCLProgressBlock?,
                                              then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLAdminPubVoid {
        return WKRPTCLAdminFutVoid { promise in
            let error = DNSError.Admin.notImplemented(.crashWorkers(self))
            promise(.failure(error))
        }.eraseToAnyPublisher()
    }
    override open func intDoLoadChangeRequests(with progress: DNSPTCLProgressBlock?,
                                               then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLAdminPubUserChangeRequest {
        return WKRPTCLAdminFutUserChangeRequest { promise in
            let error = DNSError.Admin.notImplemented(.crashWorkers(self))
            promise(.failure(error))
        }.eraseToAnyPublisher()
    }
    override open func intDoLoadDeletedAccounts(thatAre status: DNSPTCLDeletedStatus,
                                                with progress: DNSPTCLProgressBlock?,
                                                and block: WKRPTCLAdminBlkAAccount?,
                                                then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Account.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoLoadDeletedStatus(with progress: DNSPTCLProgressBlock?,
                                              and block: WKRPTCLAdminBlkAAccount?,
                                              then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Account.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoLoadTabs(with progress: DNSPTCLProgressBlock?,
                                     then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLAdminPubAString {
        return WKRPTCLAdminFutAString { promise in
            let error = DNSError.Admin.notImplemented(.crashWorkers(self))
            promise(.failure(error))
        }.eraseToAnyPublisher()
    }
    override open func intDoRequestChange(to role: DNSUserRole,
                                          with progress: DNSPTCLProgressBlock?,
                                          then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLAdminPubVoid {
        return WKRPTCLAdminFutVoid { promise in
            let error = DNSError.Admin.notImplemented(.crashWorkers(self))
            promise(.failure(error))
        }.eraseToAnyPublisher()
    }
}
