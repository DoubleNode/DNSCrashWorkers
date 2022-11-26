//
//  WKRCrashAnnouncements.swift
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

open class WKRCrashAnnouncements: WKRBlankAnnouncements {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: DNSPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLAnnouncements) { fatalError("Unable to chain CrashWorker(s)") }

    public required init() { super.init() }

    // MARK: - Internal Work Methods
    override open func intDoLoadCurrentAnnouncements(with progress: DNSPTCLProgressBlock?,
                                                     and block: WKRPTCLAnnouncementsBlkAAnnouncementPlace?,
                                                     then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Announcements.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoLoadAnnouncements(with progress: DNSPTCLProgressBlock?,
                                              and block: WKRPTCLAnnouncementsBlkAAnnouncement?,
                                              then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Announcements.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoLoadAnnouncements(for place: DAOPlace,
                                              with progress: DNSPTCLProgressBlock?,
                                              and block: WKRPTCLAnnouncementsBlkAAnnouncement?,
                                              then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Announcements.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoRemove(_ announcement: DAOAnnouncement,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLAnnouncementsBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Announcements.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoRemove(_ announcement: DAOAnnouncement,
                                   for place: DAOPlace,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLAnnouncementsBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Announcements.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoUpdate(_ announcement: DAOAnnouncement,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLAnnouncementsBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Announcements.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoUpdate(_ announcement: DAOAnnouncement,
                                   for place: DAOPlace,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLAnnouncementsBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Announcements.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
}
