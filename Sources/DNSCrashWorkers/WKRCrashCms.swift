//
//  WKRCrashCms.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCrashWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2025 - 2016 DoubleNode.com. All rights reserved.
//

import DNSBlankWorkers
import DNSCore
import DNSError
import DNSProtocols
import UIKit

open class WKRCrashCms: WKRBlankCms {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: DNSPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLCms) {
        super.init()
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashCms",
            operation: { fatalError("Unable to chain CrashWorker(s)") },
            fallbackBlock: {
                DNSCore.reportError(DNSCrashWorkerError.crashWorkerInProduction(workerName: "WKRCrashCms"))
            }
        )
    }

    public required init() { super.init()
        
        // Log instantiation for tracking
        if !DNSCrashWorkerProtection.isCrashWorkerAllowed(workerName: "WKRCrashCms") {
            DNSCore.reportLog("🚨 WKRCrashCms instantiated in production build - this should not happen!")
        } }

    // MARK: - Internal Work Methods
    override open func intDoLoad(for group: String,
                                 with progress: DNSPTCLProgressBlock?,
                                 and block: WKRPTCLCmsBlkAAny?,
                                 then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Cms.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashCms.intDoLoad",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
}
