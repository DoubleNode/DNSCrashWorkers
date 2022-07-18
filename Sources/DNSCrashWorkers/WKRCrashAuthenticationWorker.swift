//
//  WKRCrashAuthenticationWorker.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCrashWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2020 - 2016 DoubleNode.com. All rights reserved.
//

import DNSBlankWorkers
import DNSCore
import DNSDataObjects
import DNSError
import DNSProtocols
import Foundation

open class WKRCrashAuthenticationWorker: WKRBlankAuthenticationWorker
{
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: DNSPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLAuthentication) { fatalError("Unable to chain CrashWorker(s)") }

    public required init() { super.init() }
    
    // MARK: - Internal Work Methods
    override open func intDoCheckAuthentication(using parameters: [String : Any],
                                                with progress: DNSPTCLProgressBlock?,
                                                and block: WKRPTCLAuthenticationBlockBoolBoolAccessData?,
                                                then resultBlock: DNSPTCLResultBlock?) throws {
        throw DNSError.Authentication
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoSignIn(from username: String?,
                                   and password: String?,
                                   using parameters: [String: Any],
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLAuthenticationBlockBoolAccessData?,
                                   then resultBlock: DNSPTCLResultBlock?) throws {
        throw DNSError.Authentication
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoSignOut(using parameters: [String: Any],
                                    with progress: DNSPTCLProgressBlock?,
                                    and block: WKRPTCLAuthenticationBlockBool?,
                                    then resultBlock: DNSPTCLResultBlock?) throws {
        throw DNSError.Authentication
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoSignUp(from user: DAOUser?,
                                   and password: String?,
                                   using parameters: [String: Any],
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLAuthenticationBlockBoolAccessData?,
                                   then resultBlock: DNSPTCLResultBlock?) throws {
        throw DNSError.Authentication
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
}
