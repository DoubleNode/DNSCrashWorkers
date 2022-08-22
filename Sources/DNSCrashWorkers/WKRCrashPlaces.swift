//
//  WKRCrashPlaces.swift
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

open class WKRCrashPlaces: WKRBlankPlaces {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: DNSPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLPlaces) { fatalError("Unable to chain CrashWorker(s)") }

    public required init() { super.init() }

    // MARK: - Internal Work Methods
    override open func intDoFilterPlaces(for activity: DAOActivity,
                                 using places: [DAOPlace],
                                 with progress: DNSPTCLProgressBlock?,
                                 and block: WKRPTCLPlacesBlkAPlace?,
                                 then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Places
            .notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoLoadPlace(for placeCode: String,
                              with progress: DNSPTCLProgressBlock?,
                              and block: WKRPTCLPlacesBlkPlace?,
                              then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Places
            .notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoLoadPlaces(with progress: DNSPTCLProgressBlock?,
                               and block: WKRPTCLPlacesBlkAPlace?,
                               then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Places
            .notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoLoadHolidays(for place: DAOPlace,
                                with progress: DNSPTCLProgressBlock?,
                                and block: WKRPTCLPlacesBlkAPlaceHoliday?,
                                then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Places
            .notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoLoadHours(for place: DAOPlace,
                             with progress: DNSPTCLProgressBlock?,
                             and block: WKRPTCLPlacesBlkPlaceHours?,
                             then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Places
            .notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoLoadState(for place: DAOPlace,
                             with progress: DNSPTCLProgressBlock?,
                             then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLPlacesPubAlertEventStatus {
        return WKRPTCLPlacesFutAlertEventStatus {
            let error = DNSError.Places.notImplemented(.crashWorkers(self))
            $0(.failure(error))
        }.eraseToAnyPublisher()
    }
    override open func intDoSearchPlace(for geohash: String,
                                with progress: DNSPTCLProgressBlock?,
                                and block: WKRPTCLPlacesBlkPlace?,
                                then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Places
            .notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoUpdate(_ place: DAOPlace,
                          with progress: DNSPTCLProgressBlock?,
                          and block: WKRPTCLPlacesBlkVoid?,
                          then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Places
            .notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoUpdate(_ hours: DAOPlaceHours,
                          for place: DAOPlace,
                          with progress: DNSPTCLProgressBlock?,
                          and block: WKRPTCLPlacesBlkVoid?,
                          then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Places
            .notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
}
