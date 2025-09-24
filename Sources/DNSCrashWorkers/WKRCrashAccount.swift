//
//  WKRCrashAccount.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBlankWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2025 - 2016 DoubleNode.com. All rights reserved.
//

import DNSBlankWorkers
import DNSCore
import DNSDataObjects
import DNSError
import DNSProtocols
import Foundation

open class WKRCrashAccount: WKRBaseAccount {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: DNSPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLAccount) {
        super.init()
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashAccount",
            operation: { fatalError("Unable to chain CrashWorker(s)") },
            fallbackBlock: {
                DNSCore.reportError(DNSCrashWorkerError.crashWorkerInProduction(workerName: "WKRCrashAccount"))
            }
        )
    }

    public required init() { 
        super.init()
        
        // Log instantiation for tracking
        if !DNSCrashWorkerProtection.isCrashWorkerAllowed(workerName: "WKRCrashAccount") {
            DNSCore.reportLog("🚨 WKRCrashAccount instantiated in production build - this should not happen!")
        }
    }

    // MARK: - Internal Work Methods
    override open func intDoActivate(account: DAOAccount,
                                     with progress: DNSPTCLProgressBlock?,
                                     and block: WKRPTCLAccountBlkBool?,
                                     then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Account.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashAccount.intDoActivate",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoApprove(linkRequest: DAOAccountLinkRequest,
                                    with progress: DNSPTCLProgressBlock?,
                                    and block: WKRPTCLAccountBlkVoid?,
                                    then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Account.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashAccount.intDoApprove",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoDeactivate(account: DAOAccount,
                                       with progress: DNSPTCLProgressBlock?,
                                       and block: WKRPTCLAccountBlkVoid?,
                                       then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Account.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashAccount.intDoDeactivate",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoDecline(linkRequest: DAOAccountLinkRequest,
                                    with progress: DNSPTCLProgressBlock?,
                                    and block: WKRPTCLAccountBlkVoid?,
                                    then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Account.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashAccount.intDoDecline",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoDelete(account: DAOAccount,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLAccountBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Account.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashAccount.intDoDelete",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoLink(account: DAOAccount,
                                 to user: DAOUser,
                                 with progress: DNSPTCLProgressBlock?,
                                 and block: WKRPTCLAccountBlkVoid?,
                                 then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Account.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashAccount.intDoLink",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoLink(account: DAOAccount,
                                 to place: DAOPlace,
                                 with progress: DNSPTCLProgressBlock?,
                                 and block: WKRPTCLAccountBlkVoid?,
                                 then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Account.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashAccount.intDoLink",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoLoadAccount(for id: String,
                                        with progress: DNSProtocols.DNSPTCLProgressBlock?,
                                        and block: WKRPTCLAccountBlkAccount?,
                                        then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Account.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashAccount.intDoLoadAccount",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoLoadAccounts(for place: DAOPlace,
                                         with progress: DNSProtocols.DNSPTCLProgressBlock?,
                                         and block: WKRPTCLAccountBlkAAccount?,
                                         then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Account.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashAccount.intDoLoadAccounts",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoLoadAccounts(for user: DAOUser,
                                         with progress: DNSProtocols.DNSPTCLProgressBlock?,
                                         and block: WKRPTCLAccountBlkAAccount?,
                                         then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Account.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashAccount.intDoLoadAccounts",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoLoadCurrentAccounts(with progress: DNSPTCLProgressBlock?,
                                                and block: WKRPTCLAccountBlkAAccount?,
                                                then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Account.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashAccount.intDoLoadCurrentAccounts",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoRename(accountId: String,
                                   to newAccountId: String,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLAccountBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Account.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashAccount.intDoRename",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoSearchAccounts(using parameters: DNSDataDictionary,
                                           with progress: DNSPTCLProgressBlock?,
                                           and block: WKRPTCLAccountBlkAAccount?,
                                           then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Account.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashAccount.intDoSearchAccounts",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoUnlink(account: DAOAccount,
                                   from user: DAOUser,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLAccountBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Account.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashAccount.intDoUnlink",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoUnlink(account: DAOAccount,
                                   from place: DAOPlace,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLAccountBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Account.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashAccount.intDoUnlink",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoUpdate(account: DAOAccount,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLAccountBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Account.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashAccount.intDoUpdate",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoVerify(account: DAOAccount,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLAccountBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Account.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashAccount.intDoVerify",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
}
