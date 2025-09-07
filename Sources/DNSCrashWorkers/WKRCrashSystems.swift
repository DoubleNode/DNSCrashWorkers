//
//  WKRCrashSystems.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCrashWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2025 - 2016 DoubleNode.com. All rights reserved.
//

import DNSBlankWorkers
import Combine
import DNSCore
import DNSDataObjects
import DNSDataTypes
import DNSError
import DNSProtocols
import UIKit

open class WKRCrashSystems: WKRBlankSystems {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: DNSPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLSystems) {
        super.init()
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashSystems",
            operation: { fatalError("Unable to chain CrashWorker(s)") },
            fallbackBlock: {
                DNSCore.reportError(DNSCrashWorkerError.crashWorkerInProduction(workerName: "WKRCrashSystems"))
            }
        )
    }

    public required init() { super.init()
        
        // Log instantiation for tracking
        if !DNSCrashWorkerProtection.isCrashWorkerAllowed(workerName: "WKRCrashSystems") {
            DNSCore.reportLog("🚨 WKRCrashSystems instantiated in production build - this should not happen!")
        } }
    
    // MARK: - Internal Work Methods
    override open func intDoLoadSystem(for id: String,
                                       with progress: DNSPTCLProgressBlock?,
                                       and block: WKRPTCLSystemsBlkSystem?,
                                       then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Systems.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashSystems.intDoLoadSystem",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoLoadEndPoints(for system: DAOSystem,
                                          with progress: DNSPTCLProgressBlock?,
                                          and block: WKRPTCLSystemsBlkASystemEndPoint?,
                                          then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Systems.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashSystems.intDoLoadEndPoints",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoLoadHistory(for system: DAOSystem,
                                        since time: Date,
                                        with progress: DNSPTCLProgressBlock?,
                                        and block: WKRPTCLSystemsBlkASystemState?,
                                        then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Systems.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashSystems.intDoLoadHistory",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoLoadHistory(for endPoint: DAOSystemEndPoint,
                                        since time: Date,
                                        include failureCodes: Bool,
                                        with progress: DNSPTCLProgressBlock?,
                                        and block: WKRPTCLSystemsBlkASystemState?,
                                        then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Systems.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashSystems.intDoLoadHistory",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoLoadSystems(with progress: DNSPTCLProgressBlock?,
                                        and block: WKRPTCLSystemsBlkASystem?,
                                        then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Systems.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashSystems.intDoLoadSystems",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoOverride(system: DAOSystem,
                                     with state: DNSSystemState,
                                     with progress: DNSPTCLProgressBlock?,
                                     and block: WKRPTCLSystemsBlkSystem?,
                                     then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Systems.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashSystems.intDoOverride",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoReact(with reaction: DNSReactionType,
                                  to system: DAOSystem,
                                  with progress: DNSPTCLProgressBlock?,
                                  and block: WKRPTCLSystemsBlkMeta?,
                                  then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Systems.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashSystems.intDoReact",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoReport(result: WKRPTCLSystemsData.Result,
                                   and failureCode: String,
                                   and debugString: String,
                                   for systemId: String,
                                   and endPointId: String,
                                   with progress: DNSPTCLProgressBlock?,
                                   then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLSystemsPubVoid {
        return WKRPTCLSystemsFutVoid {
            let error = DNSError.Systems.notImplemented(.crashWorkers(self))
            $0(.failure(error))
        }.eraseToAnyPublisher()
    }
    override open func intDoUnreact(with reaction: DNSReactionType,
                                    to system: DAOSystem,
                                    with progress: DNSPTCLProgressBlock?,
                                    and block: WKRPTCLSystemsBlkMeta?,
                                    then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Systems.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashSystems.intDoUnreact",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
}
