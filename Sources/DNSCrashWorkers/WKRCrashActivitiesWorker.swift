//
//  WKRCrashActivitiesWorker.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBlankWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2020 - 2016 DoubleNode.com. All rights reserved.
//

import DNSBlankWorkers
import DNSDataObjects
import DNSError
import DNSProtocols
import Foundation

open class WKRCrashActivitiesWorker: WKRBlankActivitiesWorker {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: WKRPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLActivities) { fatalError("Unable to chain CrashWorker(s)") }

    public required init() { super.init() }

    // MARK: - Internal Work Methods
    override open func intDoLoadActivities(for center: DAOCenter,
                                           using activityTypes: [DAOActivityType],
                                           with progress: WKRPTCLProgressBlock?,
                                           and block: WKRPTCLActivitiesBlockArrayActivity?,
                                           then resultBlock: WKRPTCLResultBlock?) throws {
        throw DNSError.Analytics
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoUpdate(_ activities: [DAOActivity],
                                   for center: DAOCenter,
                                   with progress: WKRPTCLProgressBlock?,
                                   and block: WKRPTCLActivitiesBlockBool?,
                                   then resultBlock: WKRPTCLResultBlock?) throws {
        throw DNSError.Analytics
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
}
