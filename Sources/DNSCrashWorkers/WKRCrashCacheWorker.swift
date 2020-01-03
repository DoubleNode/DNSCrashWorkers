//
//  WKRCrashAnalyticsWorker.swift
//  DoubleNode Core - DNSCrashWorkers
//
//  Created by Darren Ehlers on 2019/08/12.
//  Copyright © 2019 - 2016 Darren Ehlers and DoubleNode, LLC. All rights reserved.
//

import DNSBlankWorkers
import DNSProtocols
import Foundation

open class WKRCrashCacheWorker: WKRBlankCacheWorker
{
    // MARK: - Business Logic / Single Item CRUD
    override open func doDeleteObject(for id: String,
                                      with progress: PTCLProgressBlock?,
                                      and block: PTCLCacheBlockVoidAnyError?) throws {
        guard nextWorker != nil else {
            throw DNSBlankWorkersError.notImplemented(domain: "com.doublenode.\(type(of: self))",
                file: "\(#file)",
                line: "\(#line)",
                method: "\(#function)")
        }

        try nextWorker!.doDeleteObject(for: id, with: progress, and:block)
    }

    override open func doReadObject(for id: String,
                                    with progress: PTCLProgressBlock?,
                                    and block: PTCLCacheBlockVoidAnyError?) throws {
        guard nextWorker != nil else {
            throw DNSBlankWorkersError.notImplemented(domain: "com.doublenode.\(type(of: self))",
                file: "\(#file)",
                line: "\(#line)",
                method: "\(#function)")
        }

        try nextWorker!.doReadObject(for: id, with: progress, and:block)
    }

    override open func doLoadImage(for url: NSURL,
                                   with progress: PTCLProgressBlock?,
                                   and block: PTCLCacheBlockVoidAnyError?) throws {
        guard nextWorker != nil else {
            throw DNSBlankWorkersError.notImplemented(domain: "com.doublenode.\(type(of: self))",
                file: "\(#file)",
                line: "\(#line)",
                method: "\(#function)")
        }

        try nextWorker!.doLoadImage(for: url, with: progress, and:block)
    }

    override open func doUpdateObject(for id: String,
                                      with progress: PTCLProgressBlock?,
                                      and block: PTCLCacheBlockVoidAnyError?) throws {
        guard nextWorker != nil else {
            throw DNSBlankWorkersError.notImplemented(domain: "com.doublenode.\(type(of: self))",
                file: "\(#file)",
                line: "\(#line)",
                method: "\(#function)")
        }

        try nextWorker!.doUpdateObject(for: id, with: progress, and:block)
    }
}
