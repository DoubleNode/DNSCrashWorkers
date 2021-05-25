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
import DNSProtocols
import Foundation

open class WKRCrashAuthenticationWorker: WKRBlankAuthenticationWorker
{
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: PTCLCallNextWhen,
                         nextWorker: PTCLAuthentication_Protocol) { fatalError("Unable to chain CrashWorker(s)") }
    
    public required init() { super.init() }
    
    // MARK: - Business Logic / Single Item CRUD
    override open func doCheckAuthentication(using parameters: [String : Any],
                                             with progress: PTCLProgressBlock?,
                                             and block: PTCLAuthenticationBlockVoidBoolBoolAccessDataDNSError?) throws {
        throw PTCLAuthenticationError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
    }
    override open func doSignIn(from username: String?,
                                and password: String?,
                                using parameters: [String: Any],
                                with progress: PTCLProgressBlock?,
                                and block: PTCLAuthenticationBlockVoidBoolAccessDataDNSError?) throws {
        throw PTCLAuthenticationError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
    }
    override open func doSignOut(using parameters: [String: Any],
                                 with progress: PTCLProgressBlock?,
                                 and block: PTCLAuthenticationBlockVoidBoolDNSError?) throws {
        throw PTCLAuthenticationError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
    }
    override open func doSignUp(from user: DAOUser?,
                                and password: String?,
                                using parameters: [String: Any],
                                with progress: PTCLProgressBlock?,
                                and block: PTCLAuthenticationBlockVoidBoolAccessDataDNSError?) throws {
        throw PTCLAuthenticationError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
    }
}
