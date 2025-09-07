//
//  WKRCrashPlaces.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBlankWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2022 - 2016 DoubleNode.com. All rights reserved.
//

import Combine
import DNSBlankWorkers
import DNSCore
import DNSDataObjects
import DNSError
import DNSProtocols
import Foundation

open class WKRCrashPlaces: WKRBlankPlaces {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: DNSPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLPlaces) { DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashPlaces",
            operation: { fatalError("Unable to chain CrashWorker(s)") },
            fallbackBlock: { 
                DNSCore.reportError(DNSCrashWorkerError.crashWorkerInProduction(workerName: "WKRCrashPlaces"))
            }
        )
        fatalError("Should never reach here") }

    public required init() { super.init()
        
        // Log instantiation for tracking
        if !DNSCrashWorkerProtection.isCrashWorkerAllowed(workerName: "WKRCrashPlaces") {
            DNSCore.reportLog("🚨 WKRCrashPlaces instantiated in production build - this should not happen!")
        } }

    // MARK: - Internal Work Methods
    override open func intDoFilterPlaces(for activity: DAOActivity,
                                         using places: [DAOPlace],
                                         with progress: DNSPTCLProgressBlock?,
                                         and block: WKRPTCLPlacesBlkAPlace?,
                                         then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Places.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashPlaces.intDoFilterPlaces",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoLoadPlace(for placeCode: String,
                                      with progress: DNSPTCLProgressBlock?,
                                      and block: WKRPTCLPlacesBlkPlace?,
                                      then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Places.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashPlaces.intDoLoadPlace",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoLoadPlaces(with progress: DNSPTCLProgressBlock?,
                                       and block: WKRPTCLPlacesBlkAPlace?,
                                       then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Places.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashPlaces.intDoLoadPlaces",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoLoadPlaces(for account: DAOAccount,
                                       with progress: DNSProtocols.DNSPTCLProgressBlock?,
                                       and block: WKRPTCLPlacesBlkAPlace?,
                                       then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Account.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashPlaces.intDoLoadPlaces",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoLoadPlaces(for section: DAOSection,
                                       with progress: DNSPTCLProgressBlock?,
                                       and block: WKRPTCLPlacesBlkAPlace?,
                                       then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Places.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashPlaces.intDoLoadPlaces",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoLoadHolidays(for place: DAOPlace,
                                         with progress: DNSPTCLProgressBlock?,
                                         and block: WKRPTCLPlacesBlkAPlaceHoliday?,
                                         then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Places.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashPlaces.intDoLoadHolidays",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoLoadHours(for place: DAOPlace,
                                      with progress: DNSPTCLProgressBlock?,
                                      and block: WKRPTCLPlacesBlkPlaceHours?,
                                      then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Places.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashPlaces.intDoLoadHours",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoLoadState(for place: DAOPlace,
                                      with progress: DNSPTCLProgressBlock?,
                                      then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLPlacesPubAlertEventStatus {
        return WKRPTCLPlacesFutAlertEventStatus {
            let error = DNSError.Places.notImplemented(.crashWorkers(self))
            $0(.failure(error))
        }.eraseToAnyPublisher()
    }
    override open func intDoReact(with reaction: DNSReactionType,
                                  to place: DAOPlace,
                                  with progress: DNSPTCLProgressBlock?,
                                  and block: WKRPTCLPlacesBlkMeta?,
                                  then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Places.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashPlaces.intDoReact",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoSearchPlace(for geohash: String,
                                        with progress: DNSPTCLProgressBlock?,
                                        and block: WKRPTCLPlacesBlkPlace?,
                                        then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Places.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashPlaces.intDoSearchPlace",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoUpdate(_ place: DAOPlace,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLPlacesBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Places.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashPlaces.intDoUpdate",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoUnreact(with reaction: DNSReactionType,
                                    to place: DAOPlace,
                                    with progress: DNSPTCLProgressBlock?,
                                    and block: WKRPTCLPlacesBlkMeta?,
                                    then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Places.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashPlaces.intDoUnreact",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoUpdate(_ hours: DAOPlaceHours,
                                   for place: DAOPlace,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLPlacesBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Places.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashPlaces.intDoUpdate",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
}
