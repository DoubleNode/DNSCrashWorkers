//
//  WKRCrashSystemsWorker.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCrashWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2022 - 2016 DoubleNode.com. All rights reserved.
//

import DNSBlankWorkers
import Combine
import DNSCore
import DNSDataObjects
import DNSError
import DNSProtocols
import UIKit

open class WKRCrashSystemsWorker: WKRBlankSystemsWorker {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: DNSPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLSystems) { fatalError("Unable to chain CrashWorker(s)") }

    public required init() { super.init() }
    
    // MARK: - Internal Work Methods
    override open func intDoLoadSystem(for id: String,
                                       with progress: DNSPTCLProgressBlock?,
                                       and block: WKRPTCLSystemsBlkSystem?,
                                       then resultBlock: DNSPTCLResultBlock?) throws {
        throw DNSError.Systems
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoLoadEndPoints(for system: DAOSystem,
                                          with progress: DNSPTCLProgressBlock?,
                                          and block: WKRPTCLSystemsBlkASystemEndPoint?,
                                          then resultBlock: DNSPTCLResultBlock?) throws {
        throw DNSError.Systems
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoLoadHistory(for system: DAOSystem,
                                        since time: Date,
                                        with progress: DNSPTCLProgressBlock?,
                                        and block: WKRPTCLSystemsBlkASystemState?,
                                        then resultBlock: DNSPTCLResultBlock?) throws {
        throw DNSError.Systems
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoLoadHistory(for endPoint: DAOSystemEndPoint,
                                        since time: Date,
                                        include failureCodes: Bool,
                                        with progress: DNSPTCLProgressBlock?,
                                        and block: WKRPTCLSystemsBlkASystemState?,
                                        then resultBlock: DNSPTCLResultBlock?) throws {
        throw DNSError.Systems
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoLoadSystems(with progress: DNSPTCLProgressBlock?,
                                        and block: WKRPTCLSystemsBlkASystem?,
                                        then resultBlock: DNSPTCLResultBlock?) throws {
        throw DNSError.Systems
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoOverride(system: DAOSystem,
                                     with state: DNSSystemState,
                                     with progress: DNSPTCLProgressBlock?,
                                     and block: WKRPTCLSystemsBlkSystem?,
                                     then resultBlock: DNSPTCLResultBlock?) throws {
        throw DNSError.Systems
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoReport(result: WKRPTCLSystemsData.Result,
                                   and failureCode: String,
                                   and debugString: String,
                                   for systemId: String,
                                   and endPointId: String,
                                   with progress: DNSPTCLProgressBlock?,
                                   then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLSystemsPubVoid {
        return WKRPTCLSystemsFutVoid {
            let error = DNSError.Systems
                .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
            $0(.failure(error))
        }.eraseToAnyPublisher()
    }
}
