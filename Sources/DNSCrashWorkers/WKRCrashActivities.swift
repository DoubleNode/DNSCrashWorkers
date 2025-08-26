//
//  WKRCrashActivities.swift
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

open class WKRCrashActivities: WKRBlankActivities, @unchecked Sendable {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: DNSPTCLWorker.Call.NextWhen,
                         nextWorker: any WKRPTCLActivities) { fatalError("Unable to chain CrashWorker(s)") }

    public required init() { super.init() }

    // MARK: - Internal Work Methods
    override open func intDoLoadActivities(for place: DAOPlace,
                                           using activityTypes: [DAOActivityType],
                                           with progress: DNSPTCLProgressBlock?,
                                           and block: WKRPTCLActivitiesBlkAActivity?,
                                           then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Activities.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoUpdate(_ activities: [DAOActivity],
                                   for place: DAOPlace,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLActivitiesBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Activities.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
}
