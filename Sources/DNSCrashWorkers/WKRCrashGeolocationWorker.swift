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
    public required init(call callNextWhen: PTCLProtocol.Call.NextWhen,
                         nextWorker: PTCLGeolocation) { fatalError("Unable to chain CrashWorker(s)") }
    
    public required init() { super.init() }
    
    // MARK: - Internal Work Methods
    override open func intDoLocate(with progress: PTCLProgressBlock?,
                                   and block: PTCLGeolocationBlockVoidString?,
                                   then resultBlock: PTCLResultBlock?) throws {
        throw DNSError.Geolocation
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoTrackLocation(for processKey: String,
                                          with progress: PTCLProgressBlock?,
                                          and block: PTCLGeolocationBlockVoidString?,
                                          then resultBlock: PTCLResultBlock?) throws {
        throw DNSError.Geolocation
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoStopTrackLocation(for processKey: String,
                                              then resultBlock: PTCLResultBlock?) throws {
        throw DNSError.Geolocation
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
}
