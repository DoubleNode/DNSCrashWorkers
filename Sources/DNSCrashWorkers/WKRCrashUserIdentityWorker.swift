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
import DNSProtocols
import UIKit

open class WKRCrashUserIdentityWorker: WKRBlankUserIdentityWorker
{
    // MARK: - Business Logic / Single Item CRUD

    override open func doClearIdentity(with progress: PTCLProgressBlock?) -> AnyPublisher<Bool, Error> {
        guard let nextWorker = self.nextWorker else {
            return Future<Bool, Error> { promise in
                let error = PTCLBaseError.notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
                promise(.failure(error))
            }.eraseToAnyPublisher()
        }
        return nextWorker.doClearIdentity(with: progress)
    }
    override open func doJoin(group: String,
                              with progress: PTCLProgressBlock?) -> AnyPublisher<Bool, Error> {
        guard let nextWorker = self.nextWorker else {
            return Future<Bool, Error> { promise in
                let error = PTCLBaseError.notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
                promise(.failure(error))
            }.eraseToAnyPublisher()
        }
        return nextWorker.doJoin(group: group, with: progress)
    }
    override open func doLeave(group: String,
                               with progress: PTCLProgressBlock?) -> AnyPublisher<Bool, Error> {
        guard let nextWorker = self.nextWorker else {
            return Future<Bool, Error> { promise in
                let error = PTCLBaseError.notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
                promise(.failure(error))
            }.eraseToAnyPublisher()
        }
        return nextWorker.doLeave(group: group, with: progress)
    }
    override open func doSetIdentity(using data: [String: Any?],
                                     with progress: PTCLProgressBlock?) -> AnyPublisher<Bool, Error> {
        guard let nextWorker = self.nextWorker else {
            return Future<Bool, Error> { promise in
                let error = PTCLBaseError.notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
                promise(.failure(error))
            }.eraseToAnyPublisher()
        }
        return nextWorker.doSetIdentity(using: data, with: progress)
    }
}
