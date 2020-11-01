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
    // MARK: - Business Logic / Single Item CRUD

    override open func doCheckAuthentication(using parameters: [String : Any],
                                             with progress: PTCLProgressBlock?,
                                             and block: @escaping PTCLAuthenticationBlockVoidBoolBoolAccessDataDNSError) throws {
        guard nextWorker != nil else {
            throw PTCLBaseError.notImplemented(domain: "com.doublenode.\(type(of: self))",
                                               file: DNSCore.shortenErrorPath("\(#file)"),
                                               line: "\(#line)",
                                               method: "\(#function)")
        }
        try nextWorker!.doCheckAuthentication(using: parameters,
                                              with: progress,
                                              and: block)
    }
    override open func doSignIn(from username: String?,
                                and password: String?,
                                using parameters: [String: Any],
                                with progress: PTCLProgressBlock?,
                                and block: @escaping PTCLAuthenticationBlockVoidBoolAccessDataDNSError) throws {
        guard nextWorker != nil else {
            throw PTCLBaseError.notImplemented(domain: "com.doublenode.\(type(of: self))",
                                               file: DNSCore.shortenErrorPath("\(#file)"),
                                               line: "\(#line)",
                                               method: "\(#function)")
        }
        try nextWorker!.doSignIn(from: username,
                                 and: password,
                                 using: parameters,
                                 with: progress,
                                 and: block)
    }
    override open func doSignOut(using parameters: [String: Any],
                                 with progress: PTCLProgressBlock?,
                                 and block: @escaping PTCLAuthenticationBlockVoidBoolDNSError) throws {
        guard nextWorker != nil else {
            throw PTCLBaseError.notImplemented(domain: "com.doublenode.\(type(of: self))",
                                               file: DNSCore.shortenErrorPath("\(#file)"),
                                               line: "\(#line)",
                                               method: "\(#function)")
        }
        try nextWorker!.doSignOut(using: parameters,
                                  with: progress,
                                  and: block)
    }
    override open func doSignUp(from user: DAOUser?,
                                and password: String?,
                                using parameters: [String: Any],
                                with progress: PTCLProgressBlock?,
                                and block: @escaping PTCLAuthenticationBlockVoidBoolAccessDataDNSError) throws {
        guard nextWorker != nil else {
            throw PTCLBaseError.notImplemented(domain: "com.doublenode.\(type(of: self))",
                                               file: DNSCore.shortenErrorPath("\(#file)"),
                                               line: "\(#line)",
                                               method: "\(#function)")
        }
        try nextWorker!.doSignUp(from: user,
                                 and: password,
                                 using: parameters,
                                 with: progress,
                                 and: block)
    }
}
