//
//  WKRCrashAlertsWorker.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBlankWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2022 - 2016 DoubleNode.com. All rights reserved.
//

import Combine
import DNSBlankWorkers
import DNSDataObjects
import DNSError
import DNSProtocols
import Foundation

open class WKRCrashAlertsWorker: WKRBlankAlertsWorker {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: DNSPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLAlerts) { fatalError("Unable to chain CrashWorker(s)") }

    public required init() { super.init() }

    // MARK: - Internal Work Methods
    override open func intDoLoadAlerts(for center: DAOCenter,
                                       with progress: DNSPTCLProgressBlock?,
                                       then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLAlertsPubAAlert {
        return Future<WKRPTCLAlertsRtnAAlert, Error> { promise in
            let error = DNSError.Cache
                .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
            promise(.failure(error))
        }.eraseToAnyPublisher()
    }
    override open func intDoLoadAlerts(for district: DAODistrict,
                                       with progress: DNSPTCLProgressBlock?,
                                       then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLAlertsPubAAlert {
        return Future<WKRPTCLAlertsRtnAAlert, Error> { promise in
            let error = DNSError.Cache
                .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
            promise(.failure(error))
        }.eraseToAnyPublisher()
    }
    override open func intDoLoadAlerts(for region: DAORegion,
                                       with progress: DNSPTCLProgressBlock?,
                                       then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLAlertsPubAAlert {
        return Future<WKRPTCLAlertsRtnAAlert, Error> { promise in
            let error = DNSError.Cache
                .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
            promise(.failure(error))
        }.eraseToAnyPublisher()
    }
    override open func intDoLoadAlerts(with progress: DNSPTCLProgressBlock?,
                                       then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLAlertsPubAAlert {
        return Future<WKRPTCLAlertsRtnAAlert, Error> { promise in
            let error = DNSError.Cache
                .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
            promise(.failure(error))
        }.eraseToAnyPublisher()
    }
}
