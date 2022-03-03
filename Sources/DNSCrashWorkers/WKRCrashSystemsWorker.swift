//
//  WKRCrashSystemsWorker.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCrashWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2020 - 2016 DoubleNode.com. All rights reserved.
//

import DNSBlankWorkers
import Combine
import DNSCore
import DNSDataObjects
import DNSError
import DNSProtocols
import UIKit

open class WKRCrashSystemsWorker: WKRBlankSystemsWorker
{
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: PTCLProtocol.Call.NextWhen,
                         nextWorker: PTCLSystems) { fatalError("Unable to chain CrashWorker(s)") }
    
    public required init() { super.init() }
    
    // MARK: - Internal Work Methods
    override open func intDoLoadSystem(for id: String,
                                       with progress: PTCLProgressBlock?,
                                       and block: PTCLSystemsBlockVoidSystem?,
                                       then resultBlock: PTCLResultBlock?) throws {
        throw DNSError.Systems
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoLoadEndPoints(for system: DAOSystem,
                                          with progress: PTCLProgressBlock?,
                                          and block: PTCLSystemsBlockVoidArraySystemEndPoint?,
                                          then resultBlock: PTCLResultBlock?) throws {
        throw DNSError.Systems
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoLoadHistory(for system: DAOSystem,
                                        with progress: PTCLProgressBlock?,
                                        and block: PTCLSystemsBlockVoidArraySystemState?,
                                        then resultBlock: PTCLResultBlock?) throws {
        throw DNSError.Systems
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoLoadHistory(for endPoint: DAOSystemEndPoint,
                                        with progress: PTCLProgressBlock?,
                                        and block: PTCLSystemsBlockVoidArraySystemState?,
                                        then resultBlock: PTCLResultBlock?) throws {
        throw DNSError.Systems
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoLoadSystems(with progress: PTCLProgressBlock?,
                                        and block: PTCLSystemsBlockVoidArraySystem?,
                                        then resultBlock: PTCLResultBlock?) throws {
        throw DNSError.Systems
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoReport(state: String,
                                   and failureCode: String,
                                   for systemId: String,
                                   and endPointId: String,
                                   with progress: PTCLProgressBlock?,
                                   then resultBlock: PTCLResultBlock?) -> AnyPublisher<Bool, Error> {
        return Future<Bool, Error> {
            let error = DNSError.Systems
                .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
            $0(.failure(error))
        }.eraseToAnyPublisher()
    }
}
