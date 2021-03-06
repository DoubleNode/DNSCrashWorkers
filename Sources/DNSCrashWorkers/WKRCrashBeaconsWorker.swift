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
    // MARK: - Business Logic / Single Item CRUD

    override open func doLoadBeacons(in center: DAOCenter,
                                     with progress: PTCLProgressBlock?,
                                     and block: PTCLBeaconsBlockVoidArrayDAOBeaconError?) throws {
        guard nextWorker != nil else {
            throw PTCLBaseError
                .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
        }
        try nextWorker!.doLoadBeacons(in: center, with: progress, and: block)
    }
    override open func doLoadBeacons(in center: DAOCenter,
                                     for activity: DAOActivity,
                                     with progress: PTCLProgressBlock?,
                                     and block: PTCLBeaconsBlockVoidArrayDAOBeaconError?) throws {
        guard nextWorker != nil else {
            throw PTCLBaseError
                .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
        }
        try nextWorker!.doLoadBeacons(in: center, for: activity, with: progress, and: block)
    }
    override open func doRangeBeacons(named uuids: [UUID],
                                      for processKey: String,
                                      with progress: PTCLProgressBlock?,
                                      and block: PTCLBeaconsBlockVoidArrayDAOBeaconError?) throws {
        guard nextWorker != nil else {
            throw PTCLBaseError
                .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
        }
        try nextWorker!.doRangeBeacons(named: uuids, for: processKey, with: progress, and: block)
    }
    override open func doStopRangeBeacons(for processKey: String) throws {
        guard nextWorker != nil else {
            throw PTCLBaseError
                .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
        }
        try nextWorker!.doStopRangeBeacons(for: processKey)
    }
}
