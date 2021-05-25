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
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: PTCLCallNextWhen,
                         nextWorker: PTCLBeaconDistances_Protocol) { fatalError("Unable to chain CrashWorker(s)") }
    
    public required init() { super.init() }
    
    // MARK: - Business Logic / Single Item CRUD
    override open func doLoadBeaconDistances(with progress: PTCLProgressBlock?,
                                             and block: PTCLBeaconDistancesBlockVoidArrayDAOBeaconDistanceError?) throws {
        throw PTCLBeaconDistancesError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
    }
}
