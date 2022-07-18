//
//  WKRBlankAdminWorker.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBlankWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2020 - 2016 DoubleNode.com. All rights reserved.
//

import Combine
import DNSBlankWorkers
import DNSDataObjects
import DNSError
import DNSProtocols
import Foundation

open class WKRCrashAdminWorker: WKRBlankAdminWorker {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: DNSPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLAdmin) { fatalError("Unable to chain CrashWorker(s)") }

    public required init() { super.init() }

    // MARK: - Internal Work Methods
    override open func intDoChange(_ user: DAOUser,
                                   to role: DNSUserRole,
                                   with progress: DNSPTCLProgressBlock?,
                                   then resultBlock: DNSPTCLResultBlock?) -> AnyPublisher<Bool, Error> {
        return Future<Bool, Error> { promise in
            let error = DNSError.Cache.notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
            promise(.failure(error))
        }.eraseToAnyPublisher()
    }
    override open func intDoCheckAdmin(with progress: DNSPTCLProgressBlock?,
                                       then resultBlock: DNSPTCLResultBlock?) -> AnyPublisher<Bool, Error> {
        return Future<Bool, Error> { promise in
            let error = DNSError.Cache.notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
            promise(.failure(error))
        }.eraseToAnyPublisher()
    }
    override open func intDoDenyChangeRequest(for user: DAOUser,
                                              with progress: DNSPTCLProgressBlock?,
                                              then resultBlock: DNSPTCLResultBlock?) -> AnyPublisher<Bool, Error> {
        return Future<Bool, Error> { promise in
            let error = DNSError.Cache.notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
            promise(.failure(error))
        }.eraseToAnyPublisher()
    }
    override open func intDoLoadChangeRequests(with progress: DNSPTCLProgressBlock?,
                                               then resultBlock: DNSPTCLResultBlock?) ->
    AnyPublisher<(DAOUserChangeRequest?, [DAOUserChangeRequest]), Error> {
        return Future<(DAOUserChangeRequest?, [DAOUserChangeRequest]), Error> { promise in
            let error = DNSError.Cache.notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
            promise(.failure(error))
        }.eraseToAnyPublisher()
    }
    override open func intDoLoadTabs(with progress: DNSPTCLProgressBlock?,
                                     then resultBlock: DNSPTCLResultBlock?) -> AnyPublisher<[String], Error> {
        return Future<[String], Error> { promise in
            let error = DNSError.Cache.notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
            promise(.failure(error))
        }.eraseToAnyPublisher()
    }
    override open func intDoRequestChange(to role: DNSUserRole,
                                          with progress: DNSPTCLProgressBlock?,
                                          then resultBlock: DNSPTCLResultBlock?) -> AnyPublisher<Bool, Error> {
        return Future<Bool, Error> { promise in
            let error = DNSError.Cache.notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
            promise(.failure(error))
        }.eraseToAnyPublisher()
    }
}
