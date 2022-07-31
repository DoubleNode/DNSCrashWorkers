//
//  WKRCrashGeoWorker.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCrashWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2022 - 2016 DoubleNode.com. All rights reserved.
//

import DNSBlankWorkers
import DNSCore
import DNSError
import DNSProtocols
import Foundation

open class WKRCrashGeoWorker: WKRBlankGeoWorker {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: DNSPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLGeo) { fatalError("Unable to chain CrashWorker(s)") }

    public required init() { super.init() }
    
    // MARK: - Internal Work Methods
    override open func intDoLocate(with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLGeoBlkString?,
                                   then resultBlock: DNSPTCLResultBlock?) throws {
        throw DNSError.Geo
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoTrackLocation(for processKey: String,
                                          with progress: DNSPTCLProgressBlock?,
                                          and block: WKRPTCLGeoBlkString?,
                                          then resultBlock: DNSPTCLResultBlock?) throws {
        throw DNSError.Geo
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoStopTrackLocation(for processKey: String,
                                              then resultBlock: DNSPTCLResultBlock?) throws {
        throw DNSError.Geo
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
}