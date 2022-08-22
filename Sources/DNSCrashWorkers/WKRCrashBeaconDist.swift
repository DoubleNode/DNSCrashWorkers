//
//  WKRCrashBeaconDist.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCrashWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2022 - 2016 DoubleNode.com. All rights reserved.
//

import DNSBlankWorkers
import DNSCore
import DNSError
import DNSProtocols
import UIKit

open class WKRCrashBeaconDist: WKRBlankBeaconDist {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: DNSPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLBeaconDist) { fatalError("Unable to chain CrashWorker(s)") }

    public required init() { super.init() }
    
    // MARK: - Internal Work Methods
    override open func intDoLoadBeaconDistances(with progress: DNSPTCLProgressBlock?,
                                                and block: WKRPTCLBeaconDistBlkABeaconDistance?,
                                                then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.BeaconDist
            .notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
}
