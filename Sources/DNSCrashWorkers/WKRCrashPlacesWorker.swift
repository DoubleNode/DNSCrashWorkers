//
//  WKRCrashPlacesWorker.swift
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

open class WKRCrashPlacesWorker: WKRBlankPlacesWorker {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: DNSPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLPlaces) { fatalError("Unable to chain CrashWorker(s)") }

    public required init() { super.init() }

    // MARK: - Internal Work Methods
    override open func intDoFilterPlaces(for activity: DAOActivity,
                                 using places: [DAOPlace],
                                 with progress: DNSPTCLProgressBlock?,
                                 and block: WKRPTCLPlacesBlkAPlace?,
                                 then resultBlock: DNSPTCLResultBlock?) throws {
        throw DNSError.Places
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoLoadPlace(for placeCode: String,
                              with progress: DNSPTCLProgressBlock?,
                              and block: WKRPTCLPlacesBlkPlace?,
                              then resultBlock: DNSPTCLResultBlock?) throws {
        throw DNSError.Places
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoLoadPlaces(with progress: DNSPTCLProgressBlock?,
                               and block: WKRPTCLPlacesBlkAPlace?,
                               then resultBlock: DNSPTCLResultBlock?) throws {
        throw DNSError.Places
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoLoadHolidays(for place: DAOPlace,
                                with progress: DNSPTCLProgressBlock?,
                                and block: WKRPTCLPlacesBlkAPlaceHoliday?,
                                then resultBlock: DNSPTCLResultBlock?) throws {
        throw DNSError.Places
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoLoadHours(for place: DAOPlace,
                             with progress: DNSPTCLProgressBlock?,
                             and block: WKRPTCLPlacesBlkPlaceHours?,
                             then resultBlock: DNSPTCLResultBlock?) throws {
        throw DNSError.Places
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoLoadState(for place: DAOPlace,
                             with progress: DNSPTCLProgressBlock?,
                             then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLPlacesPubAlertEventStatus {
        return Future<WKRPTCLPlacesRtnAlertEventStatus, Error> {
            let error = DNSError.Places
                .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
            $0(.failure(error))
        }.eraseToAnyPublisher()
    }
    override open func intDoSearchPlace(for geohash: String,
                                with progress: DNSPTCLProgressBlock?,
                                and block: WKRPTCLPlacesBlkPlace?,
                                then resultBlock: DNSPTCLResultBlock?) throws {
        throw DNSError.Places
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoUpdate(_ place: DAOPlace,
                          with progress: DNSPTCLProgressBlock?,
                          and block: WKRPTCLPlacesBlkBool?,
                          then resultBlock: DNSPTCLResultBlock?) throws {
        throw DNSError.Places
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoUpdate(_ hours: DAOPlaceHours,
                          for place: DAOPlace,
                          with progress: DNSPTCLProgressBlock?,
                          and block: WKRPTCLPlacesBlkBool?,
                          then resultBlock: DNSPTCLResultBlock?) throws {
        throw DNSError.Places
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
}