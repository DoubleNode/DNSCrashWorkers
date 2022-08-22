//
//  WKRCrashProducts.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBlankWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2022 - 2016 DoubleNode.com. All rights reserved.
//

import DNSBlankWorkers
import DNSDataObjects
import DNSError
import DNSProtocols
import Foundation

open class WKRCrashProducts: WKRBlankProducts {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: DNSPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLProducts) { fatalError("Unable to chain CrashWorker(s)") }

    public required init() { super.init() }

    // MARK: - Internal Work Methods
    override open func intDoLoadProduct(for id: String,
                                        with progress: DNSPTCLProgressBlock?,
                                        and block: WKRPTCLProductsBlkProduct?,
                                        then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Products
            .notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoLoadProduct(for id: String,
                                        and place: DAOPlace,
                                        with progress: DNSPTCLProgressBlock?,
                                        and block: WKRPTCLProductsBlkProduct?,
                                        then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Products
            .notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoLoadProducts(with progress: DNSPTCLProgressBlock?,
                                         and block: WKRPTCLProductsBlkAProduct?,
                                         then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Products
            .notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoLoadProducts(for place: DAOPlace,
                                         with progress: DNSPTCLProgressBlock?,
                                         and block: WKRPTCLProductsBlkAProduct?,
                                         then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Products
            .notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoRemove(_ product: DAOProduct,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLProductsBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Products
            .notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoUpdate(_ product: DAOProduct,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLProductsBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Products
            .notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
}
