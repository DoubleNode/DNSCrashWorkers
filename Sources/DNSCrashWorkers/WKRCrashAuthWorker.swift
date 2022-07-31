//
//  WKRCrashAuthWorker.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCrashWorkers
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

open class WKRCrashAuthWorker: WKRBlankAuthWorker {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: DNSPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLAuth) { fatalError("Unable to chain CrashWorker(s)") }

    public required init() { super.init() }
    
    // MARK: - Internal Work Methods
    override open func intDoCheckAuthentication(using parameters: [String : Any],
                                                with progress: DNSPTCLProgressBlock?,
                                                and block: WKRPTCLAuthBlkBoolBoolAccessData?,
                                                then resultBlock: DNSPTCLResultBlock?) throws {
        throw DNSError.Auth
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoSignIn(from username: String?,
                                   and password: String?,
                                   using parameters: [String: Any],
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLAuthBlkBoolAccessData?,
                                   then resultBlock: DNSPTCLResultBlock?) throws {
        throw DNSError.Auth
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoSignOut(using parameters: [String: Any],
                                    with progress: DNSPTCLProgressBlock?,
                                    and block: WKRPTCLAuthBlkBool?,
                                    then resultBlock: DNSPTCLResultBlock?) throws {
        throw DNSError.Auth
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoSignUp(from user: DAOUser?,
                                   and password: String?,
                                   using parameters: [String: Any],
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLAuthBlkBoolAccessData?,
                                   then resultBlock: DNSPTCLResultBlock?) throws {
        throw DNSError.Auth
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
}