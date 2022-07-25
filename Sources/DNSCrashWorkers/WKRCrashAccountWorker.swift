//
//  WKRCrashAccountWorker.swift
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

open class WKRCrashAccountWorker: WKRBlankAccountWorker {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: DNSPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLAccount) { fatalError("Unable to chain CrashWorker(s)") }

    public required init() { super.init() }

    // MARK: - Internal Work Methods
    override open func intDoLoadAccounts(for user: DAOUser,
                                         with progress: DNSProtocols.DNSPTCLProgressBlock?,
                                         and block: WKRPTCLAccountBlkAAccount?,
                                         then resultBlock: DNSPTCLResultBlock?) throws {
        throw DNSError.Analytics
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoLoadCurrentAccount(with progress: DNSPTCLProgressBlock?,
                                               and block: WKRPTCLAccountBlkAccount?,
                                               then resultBlock: DNSPTCLResultBlock?) throws {
        throw DNSError.Analytics
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoUpdate(account: DAOAccount,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLAccountBlkBool?,
                                   then resultBlock: DNSPTCLResultBlock?) throws {
        throw DNSError.Analytics
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
}
