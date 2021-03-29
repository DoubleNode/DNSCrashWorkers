//
//  WKRCrashBeaconDistancesWorker.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCrashWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2020 - 2016 DoubleNode.com. All rights reserved.
//

import DNSBlankWorkers
import DNSCore
import DNSProtocols
import UIKit

open class WKRCrashBeaconDistancesWorker: WKRBlankBeaconDistancesWorker
{
    // MARK: - Business Logic / Single Item CRUD

    override open func doLoadBeaconDistances(with progress: PTCLProgressBlock?,
                                             and block: PTCLBeaconDistancesBlockVoidArrayDAOBeaconDistanceError?) throws {
        guard nextWorker != nil else {
            throw PTCLBeaconDistancesError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
        }
        try nextWorker!.doLoadBeaconDistances(with: progress, and: block)
    }
}
