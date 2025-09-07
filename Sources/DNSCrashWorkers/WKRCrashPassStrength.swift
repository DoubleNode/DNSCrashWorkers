//
//  WKRCrashPassStrength.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCrashWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2022 - 2016 DoubleNode.com. All rights reserved.
//

import DNSBlankWorkers
import DNSCore
import DNSError
import DNSProtocols
import Foundation

open class WKRCrashPassStrength: WKRBlankPassStrength {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: DNSPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLPassStrength) { DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashPassStrength",
            operation: { fatalError("Unable to chain CrashWorker(s)") },
            fallbackBlock: { 
                DNSCore.reportError(DNSCrashWorkerError.crashWorkerInProduction(workerName: "WKRCrashPassStrength"))
            }
        )
        fatalError("Should never reach here") }

    public required init() { super.init()
        
        // Log instantiation for tracking
        if !DNSCrashWorkerProtection.isCrashWorkerAllowed(workerName: "WKRCrashPassStrength") {
            DNSCore.reportLog("🚨 WKRCrashPassStrength instantiated in production build - this should not happen!")
        } }
    
    // MARK: - Internal Work Methods
    override open func intDoCheckPassStrength(for password: String,
                                              then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLPassStrengthResVoid {
        let error = DNSError.PassStrength.notImplemented(.crashWorkers(self))
        return .failure(error)
    }
}
