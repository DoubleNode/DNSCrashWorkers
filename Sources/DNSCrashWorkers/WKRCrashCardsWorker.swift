//
//  WKRCrashCardsWorker.swift
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

open class WKRCrashCardsWorker: WKRBlankCardsWorker {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: DNSPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLCards) { fatalError("Unable to chain CrashWorker(s)") }

    public required init() { super.init() }

    // MARK: - Internal Work Methods
    override open func intDoAdd(_ card: DAOCard,
                                to user: DAOUser,
                                with progress: DNSPTCLProgressBlock?,
                                and block: WKRPTCLCardsBlkVoid?,
                                then resultBlock: DNSPTCLResultBlock?) throws {
        throw DNSError.Analytics
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoLoadCard(for id: String,
                                     with progress: DNSPTCLProgressBlock?,
                                     and block: WKRPTCLCardsBlkCard?,
                                     then resultBlock: DNSPTCLResultBlock?) throws {
        throw DNSError.Analytics
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoLoadCard(for transaction: DAOTransaction,
                                     with progress: DNSPTCLProgressBlock?,
                                     and block: WKRPTCLCardsBlkCard?,
                                     then resultBlock: DNSPTCLResultBlock?) throws {
        throw DNSError.Analytics
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoLoadCards(for user: DAOUser,
                                      with progress: DNSPTCLProgressBlock?,
                                      and block: WKRPTCLCardsBlkACard?,
                                      then resultBlock: DNSPTCLResultBlock?) throws {
        throw DNSError.Analytics
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoLoadTransactions(for card: DAOCard,
                                             with progress: DNSPTCLProgressBlock?,
                                             and block: WKRPTCLCardsBlkATransaction?,
                                             then resultBlock: DNSPTCLResultBlock?) throws {
        throw DNSError.Analytics
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoRemove(_ card: DAOCard,
                                   from user: DAOUser,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLCardsBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) throws {
        throw DNSError.Analytics
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoUpdate(_ card: DAOCard,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLCardsBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) throws {
        throw DNSError.Analytics
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
}
