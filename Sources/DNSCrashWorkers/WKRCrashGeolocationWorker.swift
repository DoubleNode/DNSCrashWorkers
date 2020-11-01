//
//  WKRCrashGeolocationWorker.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCrashWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2020 - 2016 DoubleNode.com. All rights reserved.
//

import DNSBlankWorkers
import DNSProtocols
import Foundation

open class WKRCrashGeolocationWorker: WKRBlankGeolocationWorker
{
    // MARK: - Business Logic / Single Item CRUD

    override open func doLocate(with progress: PTCLProgressBlock?,
                                and block: PTCLGeolocationBlockVoidStringDNSError?) throws {
        guard nextWorker != nil else {
            throw PTCLBaseError.notImplemented(domain: "com.doublenode.\(type(of: self))",
                                               file: "\(#file)",
                                               line: "\(#line)",
                                               method: "\(#function)")
        }
        try nextWorker!.doLocate(with: progress, and: block)
    }

    override open func doTrackLocation(for processKey: String,
                                       with progress: PTCLProgressBlock?,
                                       and block: PTCLGeolocationBlockVoidStringDNSError?) throws {
        guard nextWorker != nil else {
            throw PTCLBaseError.notImplemented(domain: "com.doublenode.\(type(of: self))",
                                               file: "\(#file)",
                                               line: "\(#line)",
                                               method: "\(#function)")
        }
        try nextWorker!.doTrackLocation(for: processKey,
                                        with: progress,
                                        and: block)
    }

    override open func doStopTrackLocation(for processKey: String) throws {
        guard nextWorker != nil else {
            throw PTCLBaseError.notImplemented(domain: "com.doublenode.\(type(of: self))",
                                               file: "\(#file)",
                                               line: "\(#line)",
                                               method: "\(#function)")
        }
        try nextWorker!.doStopTrackLocation(for: processKey)
    }
}
