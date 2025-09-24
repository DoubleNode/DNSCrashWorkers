//
//  WKRCrashMedia.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCrashWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2025 - 2016 DoubleNode.com. All rights reserved.
//

import DNSBlankWorkers
import DNSCore
import DNSDataObjects
import DNSDataTypes
import DNSError
import DNSProtocols
import PDFKit
import UIKit

open class WKRCrashMedia: WKRBaseMedia {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: DNSPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLMedia) {
        super.init()
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashMedia",
            operation: { fatalError("Unable to chain CrashWorker(s)") },
            fallbackBlock: {
                DNSCore.reportError(DNSCrashWorkerError.crashWorkerInProduction(workerName: "WKRCrashMedia"))
            }
        )
    }

    public required init() { super.init()
        
        // Log instantiation for tracking
        if !DNSCrashWorkerProtection.isCrashWorkerAllowed(workerName: "WKRCrashMedia") {
            DNSCore.reportLog("🚨 WKRCrashMedia instantiated in production build - this should not happen!")
        } }
    
    // MARK: - Internal Work Methods
    override open func intDoReact(with reaction: DNSReactionType,
                                  to media: DAOMedia,
                                  with progress: DNSPTCLProgressBlock?,
                                  and block: WKRPTCLMediaBlkMeta?,
                                  then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Media.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashMedia.intDoReact",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoRemove(_ media: DAOMedia,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLMediaBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Media.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashMedia.intDoRemove",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoUnreact(with reaction: DNSReactionType,
                                    to media: DAOMedia,
                                    with progress: DNSPTCLProgressBlock?,
                                    and block: WKRPTCLMediaBlkMeta?,
                                    then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Media.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashMedia.intDoUnreact",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoUpload(from fileUrl: URL,
                                   to path: String,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLMediaBlkMedia?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Media.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashMedia.intDoUpload",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoUpload(_ image: UIImage,
                                   to path: String,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLMediaBlkMedia?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Media.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashMedia.intDoUpload",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoUpload(_ pdfDocument: PDFDocument,
                                   to path: String,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLMediaBlkMedia?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Media.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashMedia.intDoUpload",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoUpload(_ text: String,
                                   to path: String,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLMediaBlkMedia?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Media.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashMedia.intDoUpload",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
}
