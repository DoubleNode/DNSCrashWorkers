//
//  WKRCrashCards.swift
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

open class WKRCrashCards: WKRBaseCards {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: DNSPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLCards) {
        super.init()
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashCards",
            operation: { fatalError("Unable to chain CrashWorker(s)") },
            fallbackBlock: {
                DNSCore.reportError(DNSCrashWorkerError.crashWorkerInProduction(workerName: "WKRCrashCards"))
            }
        )
    }

    public required init() { super.init()
        
        // Log instantiation for tracking
        if !DNSCrashWorkerProtection.isCrashWorkerAllowed(workerName: "WKRCrashCards") {
            DNSCore.reportLog("🚨 WKRCrashCards instantiated in production build - this should not happen!")
        } }

    // MARK: - Internal Work Methods
    override open func intDoAdd(_ card: DAOCard,
                                to user: DAOUser,
                                with progress: DNSPTCLProgressBlock?,
                                and block: WKRPTCLCardsBlkVoid?,
                                then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Cards.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashCards.intDoAdd",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoLoadCard(for id: String,
                                     with progress: DNSPTCLProgressBlock?,
                                     and block: WKRPTCLCardsBlkCard?,
                                     then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Cards.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashCards.intDoLoadCard",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoLoadCard(for transaction: DAOTransaction,
                                     with progress: DNSPTCLProgressBlock?,
                                     and block: WKRPTCLCardsBlkCard?,
                                     then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Cards.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashCards.intDoLoadCard",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoLoadCards(for user: DAOUser,
                                      with progress: DNSPTCLProgressBlock?,
                                      and block: WKRPTCLCardsBlkACard?,
                                      then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Cards.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashCards.intDoLoadCards",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoLoadTransactions(for card: DAOCard,
                                             with progress: DNSPTCLProgressBlock?,
                                             and block: WKRPTCLCardsBlkATransaction?,
                                             then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Cards.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashCards.intDoLoadTransactions",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoRemove(_ card: DAOCard,
                                   from user: DAOUser,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLCardsBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Cards.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashCards.intDoRemove",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoUpdate(_ card: DAOCard,
                                   for user: DAOUser,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLCardsBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Cards.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashCards.intDoUpdate",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
}
