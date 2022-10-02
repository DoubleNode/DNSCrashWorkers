//
//  WKRCrashBeacons.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCrashWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2022 - 2016 DoubleNode.com. All rights reserved.
//

import DNSBlankWorkers
import DNSCore
import DNSDataObjects
import DNSError
import DNSProtocols
import Foundation

open class WKRCrashBeacons: WKRBlankBeacons {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: DNSPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLBeacons) { fatalError("Unable to chain CrashWorker(s)") }

    public required init() { super.init() }
    
    // MARK: - Internal Work Methods
    override open func intDoLoadBeacons(in place: DAOPlace,
                                        with progress: DNSPTCLProgressBlock?,
                                        and block: WKRPTCLBeaconsBlkABeacon?,
                                        then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Beacons.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoLoadBeacons(in place: DAOPlace,
                                        for activity: DAOActivity,
                                        with progress: DNSPTCLProgressBlock?,
                                        and block: WKRPTCLBeaconsBlkABeacon?,
                                        then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Beacons.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoRangeBeacons(named uuids: [UUID],
                                         for processKey: String,
                                         with progress: DNSPTCLProgressBlock?,
                                         and block: WKRPTCLBeaconsBlkABeacon?,
                                         then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Beacons.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoStopRangeBeacons(for processKey: String,
                                             then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLBeaconsResVoid {
        let error = DNSError.Beacons.notImplemented(.crashWorkers(self))
        return .failure(error)
    }
}
