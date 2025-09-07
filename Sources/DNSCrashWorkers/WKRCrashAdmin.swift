//
//  WKRBlankAdmin.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBlankWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2025 - 2016 DoubleNode.com. All rights reserved.
//

import Combine
import DNSBlankWorkers
import DNSCore
import DNSDataObjects
import DNSDataTypes
import DNSError
import DNSProtocols
import Foundation

open class WKRCrashAdmin: WKRBlankAdmin {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: DNSPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLAdmin) {
        super.init()
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashAdmin",
            operation: { fatalError("Unable to chain CrashWorker(s)") },
            fallbackBlock: {
                DNSCore.reportError(DNSCrashWorkerError.crashWorkerInProduction(workerName: "WKRCrashAdmin"))
            }
        )
    }

    public required init() { super.init()
        
        // Log instantiation for tracking
        if !DNSCrashWorkerProtection.isCrashWorkerAllowed(workerName: "WKRCrashAdmin") {
            DNSCore.reportLog("🚨 WKRCrashAdmin instantiated in production build - this should not happen!")
        } }

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
    override open func intDoLoadDeletedAccounts(thatAre state: DNSPTCLDeletedStates,
                                                with progress: DNSPTCLProgressBlock?,
                                                and block: WKRPTCLAdminBlkADeletedAccount?,
                                                then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Account.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashAdmin.intDoLoadDeletedAccounts",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoLoadDeletedStatus(with progress: DNSPTCLProgressBlock?,
                                              and block: WKRPTCLAdminBlkDeletedStatus?,
                                              then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Account.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashAdmin.intDoLoadDeletedStatus",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
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
