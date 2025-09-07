//
//  WKRCrashSections.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBlankWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2025 - 2016 DoubleNode.com. All rights reserved.
//

import Combine
import DNSBlankWorkers
import DNSCore
import DNSDataObjects
import DNSDataTypes
import DNSError
import DNSProtocols
import Foundation

open class WKRCrashSections: WKRBlankSections {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: DNSPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLSections) {
        super.init()
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashSections",
            operation: { fatalError("Unable to chain CrashWorker(s)") },
            fallbackBlock: {
                DNSCore.reportError(DNSCrashWorkerError.crashWorkerInProduction(workerName: "WKRCrashSections"))
            }
        )
    }

    public required init() { super.init()
        
        // Log instantiation for tracking
        if !DNSCrashWorkerProtection.isCrashWorkerAllowed(workerName: "WKRCrashSections") {
            DNSCore.reportLog("🚨 WKRCrashSections instantiated in production build - this should not happen!")
        } }

    // MARK: - Internal Work Methods
    override open func intDoLoadChildren(for section: DAOSection,
                                with progress: DNSPTCLProgressBlock?,
                                and block: WKRPTCLSectionsBlkASection?,
                                then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Sections.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashSections.intDoLoadChildren",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoLoadParent(for section: DAOSection,
                              with progress: DNSPTCLProgressBlock?,
                              and block: WKRPTCLSectionsBlkSection?,
                              then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Sections.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashSections.intDoLoadParent",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoLoadSection(for id: String,
                               with progress: DNSPTCLProgressBlock?,
                               and block: WKRPTCLSectionsBlkSection?,
                               then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Sections.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashSections.intDoLoadSection",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoLoadSections(with progress: DNSPTCLProgressBlock?,
                                and block: WKRPTCLSectionsBlkASection?,
                                then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Sections.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashSections.intDoLoadSections",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoReact(with reaction: DNSReactionType,
                                  to section: DAOSection,
                                  with progress: DNSPTCLProgressBlock?,
                                  and block: WKRPTCLSectionsBlkMeta?,
                                  then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Sections.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashSections.intDoReact",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoUnreact(with reaction: DNSReactionType,
                                    to section: DAOSection,
                                    with progress: DNSPTCLProgressBlock?,
                                    and block: WKRPTCLSectionsBlkMeta?,
                                    then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Sections.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashSections.intDoUnreact",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoUpdate(_ section: DAOSection,
                          with progress: DNSPTCLProgressBlock?,
                          and block: WKRPTCLSectionsBlkVoid?,
                          then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Sections.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashSections.intDoUpdate",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
}
