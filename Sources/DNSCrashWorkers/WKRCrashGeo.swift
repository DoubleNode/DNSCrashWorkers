//
//  WKRCrashGeo.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCrashWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2025 - 2016 DoubleNode.com. All rights reserved.
//

import DNSBlankWorkers
import DNSCore
import DNSError
import DNSProtocols
import Foundation

open class WKRCrashGeo: WKRBlankGeo {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: DNSPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLGeo) {
        super.init()
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashGeo",
            operation: { fatalError("Unable to chain CrashWorker(s)") },
            fallbackBlock: {
                DNSCore.reportError(DNSCrashWorkerError.crashWorkerInProduction(workerName: "WKRCrashGeo"))
            }
        )
    }

    public required init() { super.init()
        
        // Log instantiation for tracking
        if !DNSCrashWorkerProtection.isCrashWorkerAllowed(workerName: "WKRCrashGeo") {
            DNSCore.reportLog("🚨 WKRCrashGeo instantiated in production build - this should not happen!")
        } }
    
    // MARK: - Internal Work Methods
    override open func intDoLocate(with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLGeoBlkStringLocation?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Geo.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashGeo.intDoLocate",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoLocate(_ address: DNSPostalAddress,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLGeoBlkStringLocation?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Geo.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashGeo.intDoLocate",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoTrackLocation(for processKey: String,
                                          with progress: DNSPTCLProgressBlock?,
                                          and block: WKRPTCLGeoBlkStringLocation?,
                                          then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Geo.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashGeo.intDoTrackLocation",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoStopTrackLocation(for processKey: String,
                                              then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLGeoResVoid {
        let error = DNSError.Geo.notImplemented(.crashWorkers(self))
        return .failure(error)
    }
}
