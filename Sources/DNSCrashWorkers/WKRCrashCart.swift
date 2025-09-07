//
//  WKRCrashCart.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBlankWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2025 - 2016 DoubleNode.com. All rights reserved.
//

import DNSBlankWorkers
import DNSCore
import DNSDataObjects
import DNSDataTypes
import DNSError
import DNSProtocols
import Foundation

open class WKRCrashCart: WKRBlankCart {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: DNSPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLCart) {
        super.init()
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashCart",
            operation: { fatalError("Unable to chain CrashWorker(s)") },
            fallbackBlock: {
                DNSCore.reportError(DNSCrashWorkerError.crashWorkerInProduction(workerName: "WKRCrashCart"))
            }
        )
    }

    public required init() { super.init()
        
        // Log instantiation for tracking
        if !DNSCrashWorkerProtection.isCrashWorkerAllowed(workerName: "WKRCrashCart") {
            DNSCore.reportLog("🚨 WKRCrashCart instantiated in production build - this should not happen!")
        } }

    // MARK: - Internal Work Methods
    override open func intDoAdd(_ basketItem: DAOBasketItem,
                                to basket: DAOBasket,
                                with progress: DNSPTCLProgressBlock?,
                                and block: WKRPTCLCartBlkBasket?,
                                then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Cart.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashCart.intDoAdd",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoCheckout(for basket: DAOBasket,
                                     using card: DAOCard,
                                     with progress: DNSPTCLProgressBlock?,
                                     and block: WKRPTCLCartBlkOrder?,
                                     then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Cart.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashCart.intDoCheckout",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoCreate(with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLCartBlkBasket?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Cart.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashCart.intDoCreate",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoCreate(and add: DAOBasketItem,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLCartBlkBasket?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Cart.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashCart.intDoCreate",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoLoadOrder(for id: String,
                                      with progress: DNSPTCLProgressBlock?,
                                      and block: WKRPTCLCartBlkOrder?,
                                      then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Cart.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashCart.intDoLoadOrder",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoLoadOrders(for account: DAOAccount,
                                       with progress: DNSPTCLProgressBlock?,
                                       and block: WKRPTCLCartBlkAOrder?,
                                       then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Cart.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashCart.intDoLoadOrders",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoLoadOrders(for account: DAOAccount,
                                       and state: DNSOrderState,
                                       with progress: DNSPTCLProgressBlock?,
                                       and block: WKRPTCLCartBlkAOrder?,
                                       then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Cart.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashCart.intDoLoadOrders",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoRemove(_ basket: DAOBasket,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLCartBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Cart.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashCart.intDoRemove",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoRemove(_ basketItem: DAOBasketItem,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLCartBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Cart.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashCart.intDoRemove",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoUpdate(_ basket: DAOBasket,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLCartBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Cart.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashCart.intDoUpdate",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoUpdate(_ basketItem: DAOBasketItem,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLCartBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Cart.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashCart.intDoUpdate",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
}
