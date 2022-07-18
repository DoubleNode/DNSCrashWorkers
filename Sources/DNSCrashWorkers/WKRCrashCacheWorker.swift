//
//  WKRCrashCacheWorker.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCrashWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2020 - 2016 DoubleNode.com. All rights reserved.
//

import DNSBlankWorkers
import Combine
import DNSCore
import DNSError
import DNSProtocols
import UIKit

open class WKRCrashCacheWorker: WKRBlankCacheWorker
{
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: WKRPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLCache) { fatalError("Unable to chain CrashWorker(s)") }

    public required init() { super.init() }
    
    // MARK: - Internal Work Methods
    override open func intDoDeleteObject(for id: String,
                                         with progress: WKRPTCLProgressBlock?,
                                         then resultBlock: WKRPTCLResultBlock?) -> AnyPublisher<Bool, Error> {
        return Future<Bool, Error> { promise in
            let error = DNSError.Cache.notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
            promise(.failure(error))
        }.eraseToAnyPublisher()
    }
    override open func intDoLoadImage(from url: NSURL,
                                      for id: String,
                                      with progress: WKRPTCLProgressBlock?,
                                      then resultBlock: WKRPTCLResultBlock?) -> AnyPublisher<UIImage, Error> {
        return Future<UIImage, Error> { promise in
            let error = DNSError.Cache.notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
            promise(.failure(error))
        }.eraseToAnyPublisher()
    }
    override open func intDoReadObject(for id: String,
                                       with progress: WKRPTCLProgressBlock?,
                                       then resultBlock: WKRPTCLResultBlock?) -> AnyPublisher<Any, Error> {
        return Future<Any, Error> { promise in
            let error = DNSError.Cache.notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
            promise(.failure(error))
        }.eraseToAnyPublisher()
    }
    override open func intDoReadObject(for id: String,
                                       with progress: WKRPTCLProgressBlock?,
                                       then resultBlock: WKRPTCLResultBlock?) -> AnyPublisher<String, Error> {
        return Future<String, Error> { promise in
            let error = DNSError.Cache.notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
            promise(.failure(error))
        }.eraseToAnyPublisher()
    }
    override open func intDoUpdate(object: Any,
                                   for id: String,
                                   with progress: WKRPTCLProgressBlock?,
                                   then resultBlock: WKRPTCLResultBlock?) -> AnyPublisher<Any, Error> {
        return Future<Any, Error> { promise in
            let error = DNSError.Cache.notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
            promise(.failure(error))
        }.eraseToAnyPublisher()
    }
}
