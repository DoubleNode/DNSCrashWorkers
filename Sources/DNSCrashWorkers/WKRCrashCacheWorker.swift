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
    // MARK: - Business Logic / Single Item CRUD
    override open func doDeleteObject(for id: String,
                                      with progress: PTCLProgressBlock?) -> AnyPublisher<Bool, Error> {
        guard let nextWorker = self.nextWorker else {
            return Future<Bool, Error> { promise in
                let error = PTCLBaseError.notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
                promise(.failure(error))
            }.eraseToAnyPublisher()
        }
        return nextWorker.doDeleteObject(for: id, with: progress)
    }
    override open func doLoadImage(from url: NSURL,
                                   for id: String,
                                   with progress: PTCLProgressBlock?) -> AnyPublisher<UIImage, Error> {
        guard let nextWorker = self.nextWorker else {
            return Future<UIImage, Error> { promise in
                let error = PTCLBaseError.notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
                promise(.failure(error))
            }.eraseToAnyPublisher()
        }
        return nextWorker.doLoadImage(from: url, for: id, with: progress)
    }
    override open func doReadObject(for id: String,
                                    with progress: PTCLProgressBlock?) -> AnyPublisher<Any, Error> {
        guard let nextWorker = self.nextWorker else {
            return Future<Any, Error> { promise in
                let error = PTCLBaseError.notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
                promise(.failure(error))
            }.eraseToAnyPublisher()
        }
        return nextWorker.doReadObject(for: id, with: progress)
    }
    override open func doReadObject(for id: String,
                                    with progress: PTCLProgressBlock?) -> AnyPublisher<String, Error> {
        guard let nextWorker = self.nextWorker else {
            return Future<String, Error> { promise in
                let error = PTCLBaseError.notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
                promise(.failure(error))
            }.eraseToAnyPublisher()
        }
        return nextWorker.doReadObject(for: id, with: progress)
    }
    override open func doUpdate(object: Any,
                                for id: String,
                                with progress: PTCLProgressBlock?) -> AnyPublisher<Any, Error> {
        guard let nextWorker = self.nextWorker else {
            return Future<Any, Error> { promise in
                let error = PTCLBaseError.notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
                promise(.failure(error))
            }.eraseToAnyPublisher()
        }
        return nextWorker.doUpdate(object: object, for: id, with: progress)
    }
}
