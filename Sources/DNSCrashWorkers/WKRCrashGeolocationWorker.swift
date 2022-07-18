//
//  WKRCrashGeolocationWorker.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCrashWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2020 - 2016 DoubleNode.com. All rights reserved.
//

import DNSBlankWorkers
import DNSCore
import DNSError
import DNSProtocols
import Foundation

open class WKRCrashGeolocationWorker: WKRBlankGeolocationWorker
{
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: WKRPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLGeolocation) { fatalError("Unable to chain CrashWorker(s)") }

    public required init() { super.init() }
    
    // MARK: - Internal Work Methods
    override open func intDoLocate(with progress: WKRPTCLProgressBlock?,
                                   and block: WKRPTCLGeolocationBlockString?,
                                   then resultBlock: WKRPTCLResultBlock?) throws {
        throw DNSError.Geolocation
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoTrackLocation(for processKey: String,
                                          with progress: WKRPTCLProgressBlock?,
                                          and block: WKRPTCLGeolocationBlockString?,
                                          then resultBlock: WKRPTCLResultBlock?) throws {
        throw DNSError.Geolocation
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoStopTrackLocation(for processKey: String,
                                              then resultBlock: WKRPTCLResultBlock?) throws {
        throw DNSError.Geolocation
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
}
