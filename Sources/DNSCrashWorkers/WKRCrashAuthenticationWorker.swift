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
    public required init(call callNextWhen: PTCLProtocol.Call.NextWhen,
                         nextWorker: PTCLAuthentication) { fatalError("Unable to chain CrashWorker(s)") }
    
    public required init() { super.init() }
    
    // MARK: - Internal Work Methods
    override open func intDoCheckAuthentication(using parameters: [String : Any],
                                                with progress: PTCLProgressBlock?,
                                                and block: PTCLAuthenticationBlockVoidBoolBoolAccessData?,
                                                then resultBlock: PTCLResultBlock?) throws {
        throw DNSError.Authentication
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoSignIn(from username: String?,
                                   and password: String?,
                                   using parameters: [String: Any],
                                   with progress: PTCLProgressBlock?,
                                   and block: PTCLAuthenticationBlockVoidBoolAccessData?,
                                   then resultBlock: PTCLResultBlock?) throws {
        throw DNSError.Authentication
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoSignOut(using parameters: [String: Any],
                                    with progress: PTCLProgressBlock?,
                                    and block: PTCLAuthenticationBlockVoidBool?,
                                    then resultBlock: PTCLResultBlock?) throws {
        throw DNSError.Authentication
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoSignUp(from user: DAOUser?,
                                   and password: String?,
                                   using parameters: [String: Any],
                                   with progress: PTCLProgressBlock?,
                                   and block: PTCLAuthenticationBlockVoidBoolAccessData?,
                                   then resultBlock: PTCLResultBlock?) throws {
        throw DNSError.Authentication
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
}
