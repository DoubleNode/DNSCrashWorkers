//
//  WKRCrashAppReview.swift
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

open class WKRCrashAppReview: WKRBlankAppReview {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: DNSPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLAppReview) { DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashAppReview",
            operation: { fatalError("Unable to chain CrashWorker(s)") },
            fallbackBlock: { 
                DNSCore.reportError(DNSCrashWorkerError.crashWorkerInProduction(workerName: "WKRCrashAppReview"))
            }
        )
        fatalError("Should never reach here") }

    public required init() { super.init()
        
        // Log instantiation for tracking
        if !DNSCrashWorkerProtection.isCrashWorkerAllowed(workerName: "WKRCrashAppReview") {
            DNSCore.reportLog("🚨 WKRCrashAppReview instantiated in production build - this should not happen!")
        } }
    
    // MARK: - Internal Work Methods
    override open func intDoReview(then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLAppReviewResVoid {
        let error = DNSError.AppReview.notImplemented(.crashWorkers(self))
        return .failure(error)
    }
}
