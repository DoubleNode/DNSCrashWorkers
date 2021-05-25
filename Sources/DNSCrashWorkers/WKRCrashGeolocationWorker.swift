//
//  WKRCrashGeolocationWorker.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCrashWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2020 - 2016 DoubleNode.com. All rights reserved.
//

import DNSBlankWorkers
import DNSCore
import DNSProtocols
import Foundation

open class WKRCrashGeolocationWorker: WKRBlankGeolocationWorker
{
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: PTCLCallNextWhen,
                         nextWorker: PTCLGeolocation_Protocol) { fatalError("Unable to chain CrashWorker(s)") }
    
    public required init() { super.init() }
    
    // MARK: - Business Logic / Single Item CRUD
    override open func doLocate(with progress: PTCLProgressBlock?,
                                and block: PTCLGeolocationBlockVoidStringDNSError?) throws {
        throw PTCLGeolocationError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
    }
    override open func doTrackLocation(for processKey: String,
                                       with progress: PTCLProgressBlock?,
                                       and block: PTCLGeolocationBlockVoidStringDNSError?) throws {
        throw PTCLGeolocationError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
    }
    override open func doStopTrackLocation(for processKey: String) throws {
        throw PTCLGeolocationError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
    }
}
