//
//  WKRCrashCentersWorker.swift
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

open class WKRCrashCentersWorker: WKRBlankCentersWorker {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: DNSPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLCenters) { fatalError("Unable to chain CrashWorker(s)") }

    public required init() { super.init() }

    // MARK: - Internal Work Methods
    override open func intDoFilterCenters(for activity: DAOActivity,
                                 using centers: [DAOCenter],
                                 with progress: DNSPTCLProgressBlock?,
                                 and block: WKRPTCLCentersBlkACenter?,
                                 then resultBlock: DNSPTCLResultBlock?) throws {
        throw DNSError.Centers
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoLoadCenter(for centerCode: String,
                              with progress: DNSPTCLProgressBlock?,
                              and block: WKRPTCLCentersBlkCenter?,
                              then resultBlock: DNSPTCLResultBlock?) throws {
        throw DNSError.Centers
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoLoadCenters(with progress: DNSPTCLProgressBlock?,
                               and block: WKRPTCLCentersBlkACenter?,
                               then resultBlock: DNSPTCLResultBlock?) throws {
        throw DNSError.Centers
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoLoadHolidays(for center: DAOCenter,
                                with progress: DNSPTCLProgressBlock?,
                                and block: WKRPTCLCentersBlkACenterHoliday?,
                                then resultBlock: DNSPTCLResultBlock?) throws {
        throw DNSError.Centers
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoLoadHours(for center: DAOCenter,
                             with progress: DNSPTCLProgressBlock?,
                             and block: WKRPTCLCentersBlkCenterHours?,
                             then resultBlock: DNSPTCLResultBlock?) throws {
        throw DNSError.Centers
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoLoadState(for center: DAOCenter,
                             with progress: DNSPTCLProgressBlock?,
                             then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLCentersPubAlertEventStatus {
        return Future<WKRPTCLCentersRtnAlertEventStatus, Error> {
            let error = DNSError.Centers
                .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
            $0(.failure(error))
        }.eraseToAnyPublisher()
    }
    override open func intDoSearchCenter(for geohash: String,
                                with progress: DNSPTCLProgressBlock?,
                                and block: WKRPTCLCentersBlkCenter?,
                                then resultBlock: DNSPTCLResultBlock?) throws {
        throw DNSError.Centers
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoUpdate(_ center: DAOCenter,
                          with progress: DNSPTCLProgressBlock?,
                          and block: WKRPTCLCentersBlkBool?,
                          then resultBlock: DNSPTCLResultBlock?) throws {
        throw DNSError.Centers
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoUpdate(_ hours: DAOCenterHours,
                          for center: DAOCenter,
                          with progress: DNSPTCLProgressBlock?,
                          and block: WKRPTCLCentersBlkBool?,
                          then resultBlock: DNSPTCLResultBlock?) throws {
        throw DNSError.Centers
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
}
