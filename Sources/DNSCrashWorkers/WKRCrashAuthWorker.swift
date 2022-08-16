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
    override open func intDoCheckAuth(using parameters: DNSDataDictionary,
                                                with progress: DNSPTCLProgressBlock?,
                                                and block: WKRPTCLAuthBlkBoolBoolAccessData?,
                                                then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Auth
            .notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoSignIn(from username: String?,
                                   and password: String?,
                                   using parameters: DNSDataDictionary,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLAuthBlkBoolAccessData?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Auth
            .notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoSignOut(using parameters: DNSDataDictionary,
                                    with progress: DNSPTCLProgressBlock?,
                                    and block: WKRPTCLAuthBlkVoid?,
                                    then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Auth
            .notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoSignUp(from user: DAOUser?,
                                   and password: String?,
                                   using parameters: DNSDataDictionary,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLAuthBlkBoolAccessData?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Auth
            .notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
}
