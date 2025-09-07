//
//  WKRCrashIdentity.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCrashWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2022 - 2016 DoubleNode.com. All rights reserved.
//

import DNSBlankWorkers
import Combine
import DNSCore
import DNSError
import DNSProtocols
import UIKit

open class WKRCrashIdentity: WKRBlankIdentity {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: DNSPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLIdentity) { DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashIdentity",
            operation: { fatalError("Unable to chain CrashWorker(s)") },
            fallbackBlock: { 
                DNSCore.reportError(DNSCrashWorkerError.crashWorkerInProduction(workerName: "WKRCrashIdentity"))
            }
        )
        fatalError("Should never reach here") }

    public required init() { super.init()
        
        // Log instantiation for tracking
        if !DNSCrashWorkerProtection.isCrashWorkerAllowed(workerName: "WKRCrashIdentity") {
            DNSCore.reportLog("🚨 WKRCrashIdentity instantiated in production build - this should not happen!")
        } }
    
    // MARK: - Internal Work Methods
    override open func intDoClearIdentity(with progress: DNSPTCLProgressBlock?,
                                          then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLIdentityPubVoid {
        return WKRPTCLIdentityFutVoid { promise in
            let error = DNSError.Identity.notImplemented(.crashWorkers(self))
            promise(.failure(error))
        }.eraseToAnyPublisher()
    }
    override open func intDoJoin(group: String,
                                 with progress: DNSPTCLProgressBlock?,
                                 then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLIdentityPubVoid {
        return WKRPTCLIdentityFutVoid { promise in
            let error = DNSError.Identity.notImplemented(.crashWorkers(self))
            promise(.failure(error))
        }.eraseToAnyPublisher()
    }
    override open func intDoLeave(group: String,
                                  with progress: DNSPTCLProgressBlock?,
                                  then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLIdentityPubVoid {
        return WKRPTCLIdentityFutVoid { promise in
            let error = DNSError.Identity.notImplemented(.crashWorkers(self))
            promise(.failure(error))
        }.eraseToAnyPublisher()
    }
    override open func intDoSetIdentity(using data: DNSDataDictionary,
                                        with progress: DNSPTCLProgressBlock?,
                                        then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLIdentityPubVoid {
        return WKRPTCLIdentityFutVoid { promise in
            let error = DNSError.Identity.notImplemented(.crashWorkers(self))
            promise(.failure(error))
        }.eraseToAnyPublisher()
    }
}
