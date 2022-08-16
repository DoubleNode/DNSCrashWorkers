//
//  WKRCrashCacheWorker.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCrashWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2022 - 2016 DoubleNode.com. All rights reserved.
//

import DNSBlankWorkers
import Combine
import DNSCore
import DNSError
import DNSProtocols
import UIKit

open class WKRCrashCacheWorker: WKRBlankCacheWorker {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: DNSPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLCache) { fatalError("Unable to chain CrashWorker(s)") }

    public required init() { super.init() }
    
    // MARK: - Internal Work Methods
    override open func intDoDeleteObject(for id: String,
                                         with progress: DNSPTCLProgressBlock?,
                                         then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLCachePubVoid {
        return WKRPTCLCacheFutVoid { promise in
            let error = DNSError.Cache.notImplemented(.crashWorkers(self))
            promise(.failure(error))
        }.eraseToAnyPublisher()
    }
    override open func intDoLoadImage(from url: NSURL,
                                      for id: String,
                                      with progress: DNSPTCLProgressBlock?,
                                      then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLCachePubImage {
        return WKRPTCLCacheFutImage { promise in
            let error = DNSError.Cache.notImplemented(.crashWorkers(self))
            promise(.failure(error))
        }.eraseToAnyPublisher()
    }
    override open func intDoReadObject(for id: String,
                                       with progress: DNSPTCLProgressBlock?,
                                       then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLCachePubAny {
        return WKRPTCLCacheFutAny { promise in
            let error = DNSError.Cache.notImplemented(.crashWorkers(self))
            promise(.failure(error))
        }.eraseToAnyPublisher()
    }
    override open func intDoReadObject(for id: String,
                                       with progress: DNSPTCLProgressBlock?,
                                       then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLCachePubString {
        return WKRPTCLCacheFutString { promise in
            let error = DNSError.Cache.notImplemented(.crashWorkers(self))
            promise(.failure(error))
        }.eraseToAnyPublisher()
    }
    override open func intDoUpdate(object: Any,
                                   for id: String,
                                   with progress: DNSPTCLProgressBlock?,
                                   then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLCachePubAny {
        return WKRPTCLCacheFutAny { promise in
            let error = DNSError.Cache.notImplemented(.crashWorkers(self))
            promise(.failure(error))
        }.eraseToAnyPublisher()
    }
}
