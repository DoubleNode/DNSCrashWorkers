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
    public required init(call callNextWhen: WKRPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLSystems) { fatalError("Unable to chain CrashWorker(s)") }

    public required init() { super.init() }
    
    // MARK: - Internal Work Methods
    override open func intDoLoadSystem(for id: String,
                                       with progress: WKRPTCLProgressBlock?,
                                       and block: WKRPTCLSystemsBlockSystem?,
                                       then resultBlock: WKRPTCLResultBlock?) throws {
        throw DNSError.Systems
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoLoadEndPoints(for system: DAOSystem,
                                          with progress: WKRPTCLProgressBlock?,
                                          and block: WKRPTCLSystemsBlockArraySystemEndPoint?,
                                          then resultBlock: WKRPTCLResultBlock?) throws {
        throw DNSError.Systems
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoLoadHistory(for system: DAOSystem,
                                        since time: Date,
                                        with progress: WKRPTCLProgressBlock?,
                                        and block: WKRPTCLSystemsBlockArraySystemState?,
                                        then resultBlock: WKRPTCLResultBlock?) throws {
        throw DNSError.Systems
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoLoadHistory(for endPoint: DAOSystemEndPoint,
                                        since time: Date,
                                        include failureCodes: Bool,
                                        with progress: WKRPTCLProgressBlock?,
                                        and block: WKRPTCLSystemsBlockArraySystemState?,
                                        then resultBlock: WKRPTCLResultBlock?) throws {
        throw DNSError.Systems
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoLoadSystems(with progress: WKRPTCLProgressBlock?,
                                        and block: WKRPTCLSystemsBlockArraySystem?,
                                        then resultBlock: WKRPTCLResultBlock?) throws {
        throw DNSError.Systems
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoOverride(system: DAOSystem,
                                     with state: DNSSystemState,
                                     with progress: WKRPTCLProgressBlock?,
                                     and block: WKRPTCLSystemsBlockSystem?,
                                     then resultBlock: WKRPTCLResultBlock?) throws {
        throw DNSError.Systems
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoReport(result: WKRPTCLSystemsData.Result,
                                   and failureCode: String,
                                   and debugString: String,
                                   for systemId: String,
                                   and endPointId: String,
                                   with progress: WKRPTCLProgressBlock?,
                                   then resultBlock: WKRPTCLResultBlock?) -> AnyPublisher<Bool, Error> {
        return Future<Bool, Error> {
            let error = DNSError.Systems
                .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
            $0(.failure(error))
        }.eraseToAnyPublisher()
    }
}
