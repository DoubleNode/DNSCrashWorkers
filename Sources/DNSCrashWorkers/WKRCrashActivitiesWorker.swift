//
//  WKRCrashActivitiesWorker.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBlankWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2022 - 2016 DoubleNode.com. All rights reserved.
//

import DNSBlankWorkers
import DNSDataObjects
import DNSError
import DNSProtocols
import Foundation

open class WKRCrashActivitiesWorker: WKRBlankActivitiesWorker {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: DNSPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLActivities) { fatalError("Unable to chain CrashWorker(s)") }

    public required init() { super.init() }

    // MARK: - Internal Work Methods
    override open func intDoLoadActivities(for center: DAOCenter,
                                           using activityTypes: [DAOActivityType],
                                           with progress: DNSPTCLProgressBlock?,
                                           and block: WKRPTCLActivitiesBlkAActivity?,
                                           then resultBlock: DNSPTCLResultBlock?) throws {
        throw DNSError.Analytics
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoUpdate(_ activities: [DAOActivity],
                                   for center: DAOCenter,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLActivitiesBlkBool?,
                                   then resultBlock: DNSPTCLResultBlock?) throws {
        throw DNSError.Analytics
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
}
