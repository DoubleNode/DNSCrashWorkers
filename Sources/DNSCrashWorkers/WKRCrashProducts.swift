//
//  WKRCrashProducts.swift
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

open class WKRCrashProducts: WKRBlankProducts {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: DNSPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLProducts) { DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashProducts",
            operation: { fatalError("Unable to chain CrashWorker(s)") },
            fallbackBlock: { 
                DNSCore.reportError(DNSCrashWorkerError.crashWorkerInProduction(workerName: "WKRCrashProducts"))
            }
        )
        fatalError("Should never reach here") }

    public required init() { super.init()
        
        // Log instantiation for tracking
        if !DNSCrashWorkerProtection.isCrashWorkerAllowed(workerName: "WKRCrashProducts") {
            DNSCore.reportLog("🚨 WKRCrashProducts instantiated in production build - this should not happen!")
        } }

    // MARK: - Internal Work Methods
    override open func intDoLoadPricing(for product: DAOProduct,
                                        with progress: DNSPTCLProgressBlock?,
                                        and block: WKRPTCLProductsBlkPricing?,
                                        then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Products.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashProducts.intDoLoadPricing",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoLoadProduct(for id: String,
                                        with progress: DNSPTCLProgressBlock?,
                                        and block: WKRPTCLProductsBlkProduct?,
                                        then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Products.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashProducts.intDoLoadProduct",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoLoadProduct(for id: String,
                                        and place: DAOPlace,
                                        with progress: DNSPTCLProgressBlock?,
                                        and block: WKRPTCLProductsBlkProduct?,
                                        then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Products.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashProducts.intDoLoadProduct",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoLoadProducts(with progress: DNSPTCLProgressBlock?,
                                         and block: WKRPTCLProductsBlkAProduct?,
                                         then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Products.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashProducts.intDoLoadProducts",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoLoadProducts(for place: DAOPlace,
                                         with progress: DNSPTCLProgressBlock?,
                                         and block: WKRPTCLProductsBlkAProduct?,
                                         then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Products.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashProducts.intDoLoadProducts",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoReact(with reaction: DNSReactionType,
                                  to product: DAOProduct,
                                  with progress: DNSPTCLProgressBlock?,
                                  and block: WKRPTCLProductsBlkMeta?,
                                  then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Products.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashProducts.intDoReact",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoRemove(_ product: DAOProduct,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLProductsBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Products.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashProducts.intDoRemove",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoUnreact(with reaction: DNSReactionType,
                                    to product: DAOProduct,
                                    with progress: DNSPTCLProgressBlock?,
                                    and block: WKRPTCLProductsBlkMeta?,
                                    then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Products.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashProducts.intDoUnreact",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoUpdate(_ pricing: DAOPricing,
                                   for product: DAOProduct,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLProductsBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Products.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashProducts.intDoUpdate",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoUpdate(_ product: DAOProduct,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLProductsBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Products.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashProducts.intDoUpdate",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
}
