//
//  WKRCrashBeaconDistancesWorker.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCrashWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2020 - 2016 DoubleNode.com. All rights reserved.
//

import DNSBlankWorkers
import DNSCore
import DNSError
import DNSProtocols
import UIKit

open class WKRCrashBeaconDistancesWorker: WKRBlankBeaconDistancesWorker
{
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: DNSPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLBeaconDistances) { fatalError("Unable to chain CrashWorker(s)") }

    public required init() { super.init() }
    
    // MARK: - Internal Work Methods
    override open func intDoLoadBeaconDistances(with progress: DNSPTCLProgressBlock?,
                                                and block: WKRPTCLBeaconDistancesBlockArrayBeaconDistance?,
                                                then resultBlock: DNSPTCLResultBlock?) throws {
        throw DNSError.BeaconDistances
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
}
