//
//  WKRCrashBeacons.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCrashWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2025 - 2016 DoubleNode.com. All rights reserved.
//

import DNSBlankWorkers
import DNSCore
import DNSDataObjects
import DNSError
import DNSProtocols
import Foundation

open class WKRCrashBeacons: WKRBaseBeacons {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: DNSPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLBeacons) {
        super.init()
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashBeacons",
            operation: { fatalError("Unable to chain CrashWorker(s)") },
            fallbackBlock: {
                DNSCore.reportError(DNSCrashWorkerError.crashWorkerInProduction(workerName: "WKRCrashBeacons"))
            }
        )
    }

    public required init() { super.init()
        
        // Log instantiation for tracking
        if !DNSCrashWorkerProtection.isCrashWorkerAllowed(workerName: "WKRCrashBeacons") {
            DNSCore.reportLog("🚨 WKRCrashBeacons instantiated in production build - this should not happen!")
        } }
    
    // MARK: - Internal Work Methods
    override open func intDoLoadBeacons(in place: DAOPlace,
                                        with progress: DNSPTCLProgressBlock?,
                                        and block: WKRPTCLBeaconsBlkABeacon?,
                                        then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Beacons.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashBeacons.intDoLoadBeacons",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoLoadBeacons(in place: DAOPlace,
                                        for activity: DAOActivity,
                                        with progress: DNSPTCLProgressBlock?,
                                        and block: WKRPTCLBeaconsBlkABeacon?,
                                        then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Beacons.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashBeacons.intDoLoadBeacons",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoRangeBeacons(named uuids: [UUID],
                                         for processKey: String,
                                         with progress: DNSPTCLProgressBlock?,
                                         and block: WKRPTCLBeaconsBlkABeacon?,
                                         then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Beacons.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashBeacons.intDoRangeBeacons",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoStopRangeBeacons(for processKey: String,
                                             then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLBeaconsResVoid {
        let error = DNSError.Beacons.notImplemented(.crashWorkers(self))
        return .failure(error)
    }
}
