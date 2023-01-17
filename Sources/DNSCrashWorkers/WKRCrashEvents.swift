//
//  WKRCrashEvents.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBlankWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2022 - 2016 DoubleNode.com. All rights reserved.
//

import DNSBlankWorkers
import DNSCore
import DNSDataObjects
import DNSError
import DNSProtocols
import Foundation

open class WKRCrashEvents: WKRBlankEvents {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: DNSPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLEvents) { fatalError("Unable to chain CrashWorker(s)") }

    public required init() { super.init() }

    // MARK: - Internal Work Methods
    override open func intDoLoadCurrentEvents(with progress: DNSPTCLProgressBlock?,
                                              and block: WKRPTCLEventsBlkAPlace?,
                                              then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Events.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoLoadEvents(for place: DAOPlace,
                                       with progress: DNSPTCLProgressBlock?,
                                       and block: WKRPTCLEventsBlkAEvent?,
                                       then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Events.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoLoadPricing(for event: DAOEvent,
                                        and place: DAOPlace,
                                        with progress: DNSPTCLProgressBlock?,
                                        and block: WKRPTCLEventsBlkPricing?,
                                        then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Events.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoReact(with reaction: DNSReactionType,
                                  to event: DAOEvent,
                                  for place: DAOPlace,
                                  with progress: DNSPTCLProgressBlock?,
                                  and block: WKRPTCLEventsBlkMeta?,
                                  then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Events.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoRemove(_ event: DAOEvent,
                                   for place: DAOPlace,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLEventsBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Events.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoRemove(_ eventDay: DAOEventDay,
                                   for event: DAOEvent,
                                   and place: DAOPlace,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLEventsBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Events.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoUnreact(with reaction: DNSReactionType,
                                    to event: DAOEvent,
                                    for place: DAOPlace,
                                    with progress: DNSPTCLProgressBlock?,
                                    and block: WKRPTCLEventsBlkMeta?,
                                    then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Events.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoUpdate(_ event: DAOEvent,
                                   for place: DAOPlace,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLEventsBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Events.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoUpdate(_ eventDay: DAOEventDay,
                                   for event: DAOEvent,
                                   and place: DAOPlace,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLEventsBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Events.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoUpdate(_ pricing: DAOPricing,
                                   for event: DAOEvent,
                                   and place: DAOPlace,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLEventsBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Events.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoView(_ event: DAOEvent,
                                 for place: DAOPlace,
                                 with progress: DNSPTCLProgressBlock?,
                                 and block: WKRPTCLEventsBlkMeta?,
                                 then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Events.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
}
