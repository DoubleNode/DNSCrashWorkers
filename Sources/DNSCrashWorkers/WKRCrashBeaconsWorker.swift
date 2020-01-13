//
//  WKRCrashBeaconsWorker.swift
//  DoubleNode Core - DNSCrashWorkers
//
//  Created by Darren Ehlers on 2019/08/12.
//  Copyright © 2019 - 2016 Darren Ehlers and DoubleNode, LLC. All rights reserved.
//

import DNSBlankWorkers
import DNSProtocols
import Foundation

open class WKRCrashBeaconsWorker: WKRBlankBeaconsWorker
{
    // MARK: - Business Logic / Single Item CRUD

    override open func doRangeBeacons(named uuids: [UUID],
                        for processKey: String,
                        with progress: PTCLProgressBlock?,
                        and block: PTCLBeaconsBlockVoidArrayDAOBeaconError?) throws {
        guard nextWorker != nil else {
            throw DNSBlankWorkersError.notImplemented(domain: "com.doublenode.\(type(of: self))",
                file: "\(#file)",
                line: "\(#line)",
                method: "\(#function)")
        }

        try nextWorker!.doRangeBeacons(named: uuids, for: processKey, with: progress, and: block)
    }

    override open func doStopRangeBeacons(for processKey: String) throws {
        guard nextWorker != nil else {
            throw DNSBlankWorkersError.notImplemented(domain: "com.doublenode.\(type(of: self))",
                file: "\(#file)",
                line: "\(#line)",
                method: "\(#function)")
        }

        try nextWorker!.doStopRangeBeacons(for: processKey)
    }
}
