//
//  WKRCrashBeaconsWorker.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCrashWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2020 - 2016 DoubleNode.com. All rights reserved.
//

import DNSBlankWorkers
import DNSCore
import DNSDataObjects
import DNSProtocols
import Foundation

open class WKRCrashBeaconsWorker: WKRBlankBeaconsWorker
{
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: PTCLCallNextWhen,
                         nextWorker: PTCLBeacons_Protocol) { fatalError("Unable to chain CrashWorker(s)") }
    
    public required init() { super.init() }
    
    // MARK: - Internal Work Methods
    override open func intDoLoadBeacons(in center: DAOCenter,
                                        with progress: PTCLProgressBlock?,
                                        and block: PTCLBeaconsBlockVoidArrayDAOBeaconError?,
                                        then resultBlock: PTCLResultBlock?) throws {
        throw PTCLBeaconsError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoLoadBeacons(in center: DAOCenter,
                                        for activity: DAOActivity,
                                        with progress: PTCLProgressBlock?,
                                        and block: PTCLBeaconsBlockVoidArrayDAOBeaconError?,
                                        then resultBlock: PTCLResultBlock?) throws {
        throw PTCLBeaconsError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoRangeBeacons(named uuids: [UUID],
                                         for processKey: String,
                                         with progress: PTCLProgressBlock?,
                                         and block: PTCLBeaconsBlockVoidArrayDAOBeaconError?,
                                         then resultBlock: PTCLResultBlock?) throws {
        throw PTCLBeaconsError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoStopRangeBeacons(for processKey: String,
                                             then resultBlock: PTCLResultBlock?) throws {
        throw PTCLBeaconsError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
    }
}
