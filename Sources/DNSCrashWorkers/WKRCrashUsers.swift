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
                         nextWorker: WKRPTCLUsers) { DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashUsers",
            operation: { fatalError("Unable to chain CrashWorker(s)") },
            fallbackBlock: { 
                DNSCore.reportError(DNSCrashWorkerError.crashWorkerInProduction(workerName: "WKRCrashUsers"))
            }
        )
        fatalError("Should never reach here") }

    public required init() { super.init()
        
        // Log instantiation for tracking
        if !DNSCrashWorkerProtection.isCrashWorkerAllowed(workerName: "WKRCrashUsers") {
            DNSCore.reportLog("🚨 WKRCrashUsers instantiated in production build - this should not happen!")
        } }

    // MARK: - Internal Work Methods
    override open func intDoActivate(_ user: DAOUser,
                                     with progress: DNSPTCLProgressBlock?,
                                     and block: WKRPTCLUsersBlkBool?,
                                     then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Users.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashUsers.intDoActivate",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoConfirm(pendingUser: DAOUser,
                                    with progress: DNSPTCLProgressBlock?,
                                    and block: WKRPTCLAccountBlkVoid?,
                                    then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Users.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashUsers.intDoConfirm",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoConsent(childUser: DAOUser,
                                    with progress: DNSPTCLProgressBlock?,
                                    and block: WKRPTCLAccountBlkVoid?,
                                    then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Users.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashUsers.intDoConsent",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoLoadCurrentUser(with progress: DNSPTCLProgressBlock?,
                                            and block: WKRPTCLUsersBlkUser?,
                                            then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Users.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashUsers.intDoLoadCurrentUser",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoLoadChildUsers(for user: DAOUser,
                                           with progress: DNSPTCLProgressBlock?,
                                           and block: WKRPTCLUsersBlkAUser?,
                                           then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Users.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashUsers.intDoLoadChildUsers",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoLoadLinkRequests(for user: DAOUser,
                                             using parameters: DNSDataDictionary,
                                             with progress: DNSProtocols.DNSPTCLProgressBlock?,
                                             and block: WKRPTCLUsersBlkAAccountLinkRequest?,
                                             then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Users.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashUsers.intDoLoadLinkRequests",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoLoadPendingUsers(for user: DAOUser,
                                             with progress: DNSPTCLProgressBlock?,
                                             and block: WKRPTCLUsersBlkAUser?,
                                             then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Users.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashUsers.intDoLoadPendingUsers",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoLoadUnverifiedAccounts(for user: DAOUser,
                                                   with progress: DNSPTCLProgressBlock?,
                                                   and block: WKRPTCLUsersBlkAAccount?,
                                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Users.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashUsers.intDoLoadUnverifiedAccounts",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoLoadUser(for id: String,
                                     with progress: DNSPTCLProgressBlock?,
                                     and block: WKRPTCLUsersBlkUser?,
                                     then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Users.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashUsers.intDoLoadUser",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoLoadUsers(for account: DAOAccount,
                                      with progress: DNSPTCLProgressBlock?,
                                      and block: WKRPTCLUsersBlkAUser?,
                                      then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Users.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashUsers.intDoLoadUsers",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoReact(with reaction: DNSReactionType,
                                  to user: DAOUser,
                                  with progress: DNSPTCLProgressBlock?,
                                  and block: WKRPTCLUsersBlkMeta?,
                                  then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Users.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashUsers.intDoReact",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoRemove(_ user: DAOUser,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLUsersBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Users.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashUsers.intDoRemove",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoUnreact(with reaction: DNSReactionType,
                                    to user: DAOUser,
                                    with progress: DNSPTCLProgressBlock?,
                                    and block: WKRPTCLUsersBlkMeta?,
                                    then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Users.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashUsers.intDoUnreact",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoUpdate(_ user: DAOUser,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLUsersBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Users.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashUsers.intDoUpdate",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
}
