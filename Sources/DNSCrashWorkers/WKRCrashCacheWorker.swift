//
//  WKRCrashAnalyticsWorker.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCrashWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2020 - 2016 DoubleNode.com. All rights reserved.
//

import DNSBlankWorkers
import Combine
import DNSCore
import DNSProtocols
import UIKit

open class WKRCrashCacheWorker: WKRBlankCacheWorker
{
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: PTCLCallNextWhen,
                         nextWorker: PTCLCache_Protocol) { fatalError("Unable to chain CrashWorker(s)") }
    
    public required init() { super.init() }
    
    // MARK: - Business Logic / Single Item CRUD
    override open func doDeleteObject(for id: String,
                                      with progress: PTCLProgressBlock?) -> AnyPublisher<Bool, Error> {
        return Future<Bool, Error> { promise in
            let error = PTCLCacheError.notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
            promise(.failure(error))
        }.eraseToAnyPublisher()
    }
    override open func doLoadImage(from url: NSURL,
                                   for id: String,
                                   with progress: PTCLProgressBlock?) -> AnyPublisher<UIImage, Error> {
        return Future<UIImage, Error> { promise in
            let error = PTCLCacheError.notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
            promise(.failure(error))
        }.eraseToAnyPublisher()
    }
    override open func doReadObject(for id: String,
                                    with progress: PTCLProgressBlock?) -> AnyPublisher<Any, Error> {
        return Future<Any, Error> { promise in
            let error = PTCLCacheError.notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
            promise(.failure(error))
        }.eraseToAnyPublisher()
    }
    override open func doReadObject(for id: String,
                                    with progress: PTCLProgressBlock?) -> AnyPublisher<String, Error> {
        return Future<String, Error> { promise in
            let error = PTCLCacheError.notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
            promise(.failure(error))
        }.eraseToAnyPublisher()
    }
    override open func doUpdate(object: Any,
                                for id: String,
                                with progress: PTCLProgressBlock?) -> AnyPublisher<Any, Error> {
        return Future<Any, Error> { promise in
            let error = PTCLCacheError.notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
            promise(.failure(error))
        }.eraseToAnyPublisher()
    }
}
