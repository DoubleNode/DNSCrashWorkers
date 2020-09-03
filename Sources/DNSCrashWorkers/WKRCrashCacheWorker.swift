//
//  WKRCrashAnalyticsWorker.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCrashWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2020 - 2016 DoubleNode.com. All rights reserved.
//

import DNSBlankWorkers
import DNSProtocols
import Foundation

open class WKRCrashCacheWorker: WKRBlankCacheWorker
{
    // MARK: - Business Logic / Single Item CRUD
    override open func doDeleteObject(for id: String,
                                      with progress: PTCLProgressBlock?,
                                      and block: PTCLCacheBlockVoidDNSError?) throws {
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
                                    and block: PTCLCacheBlockVoidAnyDNSError?) throws {
        guard nextWorker != nil else {
            throw DNSBlankWorkersError.notImplemented(domain: "com.doublenode.\(type(of: self))",
                file: "\(#file)",
                line: "\(#line)",
                method: "\(#function)")
        }

        try nextWorker!.doReadObject(for: id, with: progress, and:block)
    }

    override open func doReadObject(for id: String,
                                    with progress: PTCLProgressBlock?,
                                    and block: PTCLCacheBlockVoidStringDNSError?) throws {
        guard nextWorker != nil else {
            throw DNSBlankWorkersError.notImplemented(domain: "com.doublenode.\(type(of: self))",
                                                      file: "\(#file)",
                                                      line: "\(#line)",
                                                      method: "\(#function)")
        }

        try nextWorker!.doReadObject(for: id, with: progress, and:block)
    }

    override open func doLoadImage(from url: NSURL,
                                   for id: String,
                                   with progress: PTCLProgressBlock?,
                                   and block: PTCLCacheBlockVoidAnyDNSError?) throws {
        guard nextWorker != nil else {
            throw DNSBlankWorkersError.notImplemented(domain: "com.doublenode.\(type(of: self))",
                file: "\(#file)",
                line: "\(#line)",
                method: "\(#function)")
        }

        try nextWorker!.doLoadImage(from: url, for: id, with: progress, and:block)
    }

    override open func doUpdate(object: Any,
                                for id: String,
                                with progress: PTCLProgressBlock?,
                                and block: PTCLCacheBlockVoidAnyDNSError?) throws {
        guard nextWorker != nil else {
            throw DNSBlankWorkersError.notImplemented(domain: "com.doublenode.\(type(of: self))",
                file: "\(#file)",
                line: "\(#line)",
                method: "\(#function)")
        }

        try nextWorker!.doUpdate(object: object, for: id, with: progress, and:block)
    }
}
