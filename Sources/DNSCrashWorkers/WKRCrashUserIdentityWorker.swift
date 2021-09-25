//
//  WKRCrashUserIdentityWorker.swift
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

open class WKRCrashUserIdentityWorker: WKRBlankUserIdentityWorker
{
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: PTCLProtocol.Call.NextWhen,
                         nextWorker: PTCLUserIdentity) { fatalError("Unable to chain CrashWorker(s)") }
    
    public required init() { super.init() }
    
    // MARK: - Internal Work Methods
    override open func intDoClearIdentity(with progress: PTCLProgressBlock?,
                                          then resultBlock: PTCLResultBlock?) -> AnyPublisher<Bool, Error> {
        return Future<Bool, Error> { promise in
            let error = DNSError.UserIdentity.notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
            promise(.failure(error))
        }.eraseToAnyPublisher()
    }
    override open func intDoJoin(group: String,
                                 with progress: PTCLProgressBlock?,
                                 then resultBlock: PTCLResultBlock?) -> AnyPublisher<Bool, Error> {
        return Future<Bool, Error> { promise in
            let error = DNSError.UserIdentity.notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
            promise(.failure(error))
        }.eraseToAnyPublisher()
    }
    override open func intDoLeave(group: String,
                                  with progress: PTCLProgressBlock?,
                                  then resultBlock: PTCLResultBlock?) -> AnyPublisher<Bool, Error> {
        return Future<Bool, Error> { promise in
            let error = DNSError.UserIdentity.notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
            promise(.failure(error))
        }.eraseToAnyPublisher()
    }
    override open func intDoSetIdentity(using data: [String: Any?],
                                        with progress: PTCLProgressBlock?,
                                        then resultBlock: PTCLResultBlock?) -> AnyPublisher<Bool, Error> {
        return Future<Bool, Error> { promise in
            let error = DNSError.UserIdentity.notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
            promise(.failure(error))
        }.eraseToAnyPublisher()
    }
}
