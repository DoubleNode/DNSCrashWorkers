//
//  WKRCrashPassports.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCrashWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2025 - 2016 DoubleNode.com. All rights reserved.
//

import DNSBlankWorkers
import Combine
import DNSCore
import DNSDataObjects
import DNSError
import DNSProtocols
import UIKit

open class WKRCrashPassports: WKRBasePassports {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: DNSPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLPassports) {
        super.init()
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashPassports",
            operation: { fatalError("Unable to chain CrashWorker(s)") },
            fallbackBlock: {
                DNSCore.reportError(DNSCrashWorkerError.crashWorkerInProduction(workerName: "WKRCrashPassports"))
            }
        )
    }

    public required init() { super.init()
        
        // Log instantiation for tracking
        if !DNSCrashWorkerProtection.isCrashWorkerAllowed(workerName: "WKRCrashPassports") {
            DNSCore.reportLog("🚨 WKRCrashPassports instantiated in production build - this should not happen!")
        } }
    
    // MARK: - Internal Work Methods
    override open func intDoBuildPassport(ofType passportType: String,
                                          using data: [String: String],
                                          for account: DAOAccount,
                                          with progress: DNSPTCLProgressBlock?,
                                          then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLPassportsPubData {
        return WKRPTCLPassportsFutData { promise in
            let error = DNSError.Passports.notImplemented(.crashWorkers(self))
            promise(.failure(error))
        }.eraseToAnyPublisher()
    }
}
