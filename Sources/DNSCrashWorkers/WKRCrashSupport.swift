//
//  WKRCrashSupport.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCrashWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2025 - 2016 DoubleNode.com. All rights reserved.
//

import DNSBlankWorkers
import Combine
import DNSCore
import DNSError
import DNSProtocols
import UIKit

open class WKRCrashSupport: WKRBaseSupport {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: DNSPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLSupport) {
        super.init()
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashSupport",
            operation: { fatalError("Unable to chain CrashWorker(s)") },
            fallbackBlock: {
                DNSCore.reportError(DNSCrashWorkerError.crashWorkerInProduction(workerName: "WKRCrashSupport"))
            }
        )
    }

    public required init() { super.init()
        
        // Log instantiation for tracking
        if !DNSCrashWorkerProtection.isCrashWorkerAllowed(workerName: "WKRCrashSupport") {
            DNSCore.reportLog("🚨 WKRCrashSupport instantiated in production build - this should not happen!")
        } }
    
    // MARK: - Internal Work Methods
    override open func intDoGetUpdatedCount(with progress: DNSPTCLProgressBlock?,
                                            then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLSupportPubInt {
        return WKRPTCLSupportFutInt { promise in
            let error = DNSError.Support.notImplemented(.crashWorkers(self))
            promise(.failure(error))
        }.eraseToAnyPublisher()
    }
    override open func intDoPrepare(attachment image: UIImage,
                                    with progress: DNSPTCLProgressBlock?,
                                    then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLSupportPubAttach {
        return WKRPTCLSupportFutAttach {
            let error = DNSError.Support.notImplemented(.crashWorkers(self))
            $0(.failure(error))
        }.eraseToAnyPublisher()
    }
    override open func intDoSendRequest(subject: String,
                                        body: String,
                                        tags: [String],
                                        attachments: [WKRPTCLSupportAttachment],
                                        properties: [String: String],
                                        with progress: DNSPTCLProgressBlock?,
                                        then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLSupportPubVoid {
        return WKRPTCLSupportFutVoid {
            let error = DNSError.Support.notImplemented(.crashWorkers(self))
            $0(.failure(error))
        }.eraseToAnyPublisher()
    }
}
