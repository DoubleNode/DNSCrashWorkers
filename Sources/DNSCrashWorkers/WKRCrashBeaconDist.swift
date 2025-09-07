//
//  WKRCrashBeaconDist.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCrashWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2022 - 2016 DoubleNode.com. All rights reserved.
//

import DNSBlankWorkers
import DNSCore
import DNSError
import DNSProtocols
import UIKit

open class WKRCrashBeaconDist: WKRBlankBeaconDist {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: DNSPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLBeaconDist) { DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashBeaconDist",
            operation: { fatalError("Unable to chain CrashWorker(s)") },
            fallbackBlock: { 
                DNSCore.reportError(DNSCrashWorkerError.crashWorkerInProduction(workerName: "WKRCrashBeaconDist"))
            }
        )
        fatalError("Should never reach here") }

    public required init() { super.init()
        
        // Log instantiation for tracking
        if !DNSCrashWorkerProtection.isCrashWorkerAllowed(workerName: "WKRCrashBeaconDist") {
            DNSCore.reportLog("🚨 WKRCrashBeaconDist instantiated in production build - this should not happen!")
        } }
    
    // MARK: - Internal Work Methods
    override open func intDoLoadBeaconDistances(with progress: DNSPTCLProgressBlock?,
                                                and block: WKRPTCLBeaconDistBlkABeaconDistance?,
                                                then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.BeaconDist.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashBeaconDist.intDoLoadBeaconDistances",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
}
