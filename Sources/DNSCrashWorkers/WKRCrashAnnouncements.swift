//
//  WKRCrashAnnouncements.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBlankWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2025 - 2016 DoubleNode.com. All rights reserved.
//

import DNSBlankWorkers
import DNSCore
import DNSDataObjects
import DNSDataTypes
import DNSError
import DNSProtocols
import Foundation

open class WKRCrashAnnouncements: WKRBaseAnnouncements {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: DNSPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLAnnouncements) {
        super.init()
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashAnnouncements",
            operation: { fatalError("Unable to chain CrashWorker(s)") },
            fallbackBlock: {
                DNSCore.reportError(DNSCrashWorkerError.crashWorkerInProduction(workerName: "WKRCrashAnnouncements"))
            }
        )
    }

    public required init() { super.init()
        
        // Log instantiation for tracking
        if !DNSCrashWorkerProtection.isCrashWorkerAllowed(workerName: "WKRCrashAnnouncements") {
            DNSCore.reportLog("🚨 WKRCrashAnnouncements instantiated in production build - this should not happen!")
        } }

    // MARK: - Internal Work Methods
    override open func intDoLoadCurrentAnnouncements(with progress: DNSPTCLProgressBlock?,
                                                     and block: WKRPTCLAnnouncementsBlkAAnnouncementPlace?,
                                                     then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Announcements.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashAnnouncements.intDoLoadCurrentAnnouncements",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoLoadAnnouncements(with progress: DNSPTCLProgressBlock?,
                                              and block: WKRPTCLAnnouncementsBlkAAnnouncement?,
                                              then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Announcements.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashAnnouncements.intDoLoadAnnouncements",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoLoadAnnouncements(for place: DAOPlace,
                                              with progress: DNSPTCLProgressBlock?,
                                              and block: WKRPTCLAnnouncementsBlkAAnnouncement?,
                                              then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Announcements.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashAnnouncements.intDoLoadAnnouncements",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoReact(with reaction: DNSReactionType,
                                  to announcement: DAOAnnouncement,
                                  for place: DAOPlace,
                                  with progress: DNSPTCLProgressBlock?,
                                  and block: WKRPTCLAnnouncementsBlkMeta?,
                                  then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Announcements.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashAnnouncements.intDoReact",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoReact(with reaction: DNSReactionType,
                                  to announcement: DAOAnnouncement,
                                  with progress: DNSPTCLProgressBlock?,
                                  and block: WKRPTCLAnnouncementsBlkMeta?,
                                  then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Announcements.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashAnnouncements.intDoReact",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoRemove(_ announcement: DAOAnnouncement,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLAnnouncementsBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Announcements.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashAnnouncements.intDoRemove",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoRemove(_ announcement: DAOAnnouncement,
                                   for place: DAOPlace,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLAnnouncementsBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Announcements.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashAnnouncements.intDoRemove",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoUnreact(with reaction: DNSReactionType,
                                    to announcement: DAOAnnouncement,
                                    for place: DAOPlace,
                                    with progress: DNSPTCLProgressBlock?,
                                    and block: WKRPTCLAnnouncementsBlkMeta?,
                                    then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Announcements.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashAnnouncements.intDoUnreact",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoUnreact(with reaction: DNSReactionType,
                                    to announcement: DAOAnnouncement,
                                    with progress: DNSPTCLProgressBlock?,
                                    and block: WKRPTCLAnnouncementsBlkMeta?,
                                    then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Announcements.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashAnnouncements.intDoUnreact",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoUpdate(_ announcement: DAOAnnouncement,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLAnnouncementsBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Announcements.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashAnnouncements.intDoUpdate",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoUpdate(_ announcement: DAOAnnouncement,
                                   for place: DAOPlace,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLAnnouncementsBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Announcements.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashAnnouncements.intDoUpdate",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoView(_ announcement: DAOAnnouncement,
                                 with progress: DNSPTCLProgressBlock?,
                                 and block: WKRPTCLAnnouncementsBlkMeta?,
                                 then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Announcements.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashAnnouncements.intDoView",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
    override open func intDoView(_ announcement: DAOAnnouncement,
                                 for place: DAOPlace,
                                 with progress: DNSPTCLProgressBlock?,
                                 and block: WKRPTCLAnnouncementsBlkMeta?,
                                 then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Announcements.notImplemented(.crashWorkers(self))
        
        DNSCrashWorkerProtection.safeCrashExecution(
            workerName: "WKRCrashAnnouncements.intDoView",
            operation: { fatalError(error.errorString) },
            fallbackBlock: {
                _ = resultBlock?(.failure(error))
                _ = block?(.failure(error))
            }
        )
    }
}
