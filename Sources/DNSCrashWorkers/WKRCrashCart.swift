//
//  WKRCrashCart.swift
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

open class WKRCrashCart: WKRBlankCart {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: DNSPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLCart) { fatalError("Unable to chain CrashWorker(s)") }

    public required init() { super.init() }

    // MARK: - Internal Work Methods
    override open func intDoAdd(_ basketItem: DAOBasketItem,
                                to basket: DAOBasket,
                                with progress: DNSPTCLProgressBlock?,
                                and block: WKRPTCLCartBlkBasket?,
                                then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Cart
            .notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoCheckout(for basket: DAOBasket,
                                     with progress: DNSPTCLProgressBlock?,
                                     and block: WKRPTCLCartBlkOrder?,
                                     then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Cart
            .notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoCreate(with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLCartBlkBasket?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Cart
            .notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoCreate(and add: DAOBasketItem,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLCartBlkBasket?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Cart
            .notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoLoadOrder(for id: String,
                                      with progress: DNSPTCLProgressBlock?,
                                      and block: WKRPTCLCartBlkOrder?,
                                      then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Cart
            .notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoLoadOrders(for account: DAOAccount,
                                       with progress: DNSPTCLProgressBlock?,
                                       and block: WKRPTCLCartBlkAOrder?,
                                       then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Cart
            .notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoLoadOrders(for account: DAOAccount,
                                       and state: DNSOrderState,
                                       with progress: DNSPTCLProgressBlock?,
                                       and block: WKRPTCLCartBlkAOrder?,
                                       then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Cart
            .notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoRemove(_ basket: DAOBasket,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLCartBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Cart
            .notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoRemove(_ basketItem: DAOBasketItem,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLCartBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Cart
            .notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoUpdate(_ basket: DAOBasket,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLCartBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Cart
            .notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoUpdate(_ basketItem: DAOBasketItem,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLCartBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Cart
            .notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
}
