//
//  WKRCrashGeolocationWorker.swift
//  DoubleNode Core - DNSCrashWorkers
//
//  Created by Darren Ehlers on 2019/08/12.
//  Copyright © 2019 - 2016 Darren Ehlers and DoubleNode, LLC. All rights reserved.
//

import DNSBlankWorkers
import DNSProtocols
import Foundation

open class WKRCrashGeolocationWorker: WKRBlankGeolocationWorker
{
    // MARK: - Business Logic / Single Item CRUD

    override open func doLocate(with progress: PTCLProgressBlock?,
                                and block: PTCLGeolocationBlockVoidStringError?) throws {
        guard nextWorker != nil else {
            throw DNSBlankWorkersError.notImplemented(domain: "com.doublenode.\(type(of: self))",
                file: "\(#file)",
                line: "\(#line)",
                method: "\(#function)")
        }

        try nextWorker!.doLocate(with: progress, and: block)
    }

    override open func doTrackLocation(for processKey: String,
                                       with progress: PTCLProgressBlock?,
                                       and block: PTCLGeolocationBlockVoidStringError?) throws {
        guard nextWorker != nil else {
            throw DNSBlankWorkersError.notImplemented(domain: "com.doublenode.\(type(of: self))",
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
            throw DNSBlankWorkersError.notImplemented(domain: "com.doublenode.\(type(of: self))",
                file: "\(#file)",
                line: "\(#line)",
                method: "\(#function)")
        }

        try nextWorker!.doStopTrackLocation(for: processKey)
    }
}
