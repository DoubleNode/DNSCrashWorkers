//
//  WKRCrashAlerts.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBlankWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2025 - 2016 DoubleNode.com. All rights reserved.
//

import Combine
import DNSBlankWorkers
import DNSCore
import DNSDataObjects
import DNSError
import DNSProtocols
import Foundation

open class WKRCrashAlerts: WKRBlankAlerts {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: DNSPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLAlerts) {
        super.init()
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashAlerts",
            operation: { fatalError("Unable to chain CrashWorker(s)") },
            fallbackBlock: {
                DNSCore.reportError(DNSCrashWorkerError.crashWorkerInProduction(workerName: "WKRCrashAlerts"))
            }
        )
    }

    public required init() { super.init()
        
        // Log instantiation for tracking
        if !DNSCrashWorkerProtection.isCrashWorkerAllowed(workerName: "WKRCrashAlerts") {
            DNSCore.reportLog("🚨 WKRCrashAlerts instantiated in production build - this should not happen!")
        } }

    // MARK: - Internal Work Methods
    override open func intDoLoadAlerts(for place: DAOPlace,
                                       with progress: DNSPTCLProgressBlock?,
                                       then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLAlertsPubAAlert {
        return WKRPTCLAlertsFutAAlert { promise in
            let error = DNSError.Alerts.notImplemented(.crashWorkers(self))
            promise(.failure(error))
        }.eraseToAnyPublisher()
    }
    override open func intDoLoadAlerts(for section: DAOSection,
                                       with progress: DNSPTCLProgressBlock?,
                                       then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLAlertsPubAAlert {
        return WKRPTCLAlertsFutAAlert { promise in
            let error = DNSError.Alerts.notImplemented(.crashWorkers(self))
            promise(.failure(error))
        }.eraseToAnyPublisher()
    }
    override open func intDoLoadAlerts(with progress: DNSPTCLProgressBlock?,
                                       then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLAlertsPubAAlert {
        return WKRPTCLAlertsFutAAlert { promise in
            let error = DNSError.Alerts.notImplemented(.crashWorkers(self))
            promise(.failure(error))
        }.eraseToAnyPublisher()
    }
}
