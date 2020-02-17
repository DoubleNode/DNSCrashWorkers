//
//  WKRCrashAuthenticationWorker.swift
//  DoubleNode Core - DNSCrashWorkers
//
//  Created by Darren Ehlers on 2019/08/12.
//  Copyright © 2019 - 2016 Darren Ehlers and DoubleNode, LLC. All rights reserved.
//

import DNSBlankWorkers
import DNSProtocols
import Foundation

open class WKRCrashAuthenticationWorker: WKRBlankAuthenticationWorker
{
    // MARK: - Business Logic / Single Item CRUD

    override open func doCheckAuthentication(using parameters: [String : Any],
                                             with progress: PTCLProgressBlock?,
                                             and block: PTCLAuthenticationBlockVoidBoolAccessDataError) throws {
        guard nextWorker != nil else {
            NSException.init(name: NSExceptionName(rawValue: "\(type(of: self)) Exception"),
                             reason: "Crash worker should not be actually used!",
                             userInfo: nil).raise()
            return
        }

        try nextWorker!.doCheckAuthentication(using: parameters,
                                              with: progress,
                                              and: block)
    }
    
    override open func doSignIn(from username: String?,
                                and password: String?,
                                using parameters: [String: Any],
                                with progress: PTCLProgressBlock?,
                                and block: @escaping PTCLAuthenticationBlockVoidBoolAccessDataError) throws {
        guard nextWorker != nil else {
            NSException.init(name: NSExceptionName(rawValue: "\(type(of: self)) Exception"),
                             reason: "Crash worker should not be actually used!",
                             userInfo: nil).raise()
            return
        }

        try nextWorker!.doSignIn(from: username,
                                 and: password,
                                 using: parameters,
                                 with: progress,
                                 and: block)
    }

    override open func doSignOut(using parameters: [String: Any],
                                 with progress: PTCLProgressBlock?,
                                 and block: @escaping PTCLAuthenticationBlockVoidBoolError) throws {
        guard nextWorker != nil else {
            NSException.init(name: NSExceptionName(rawValue: "\(type(of: self)) Exception"),
                             reason: "Crash worker should not be actually used!",
                             userInfo: nil).raise()
            return
        }

        try nextWorker!.doSignOut(using: parameters,
                                  with: progress,
                                  and: block)
    }
}
