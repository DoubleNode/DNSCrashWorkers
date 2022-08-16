//
//  WKRCrashAnalyticsWorker.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCrashWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2022 - 2016 DoubleNode.com. All rights reserved.
//

import DNSBlankWorkers
import DNSCore
import DNSError
import DNSProtocols
import Foundation

open class WKRCrashAnalyticsWorker: WKRBlankAnalyticsWorker {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: DNSPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLAnalytics) { fatalError("Unable to chain CrashWorker(s)") }

    public required init() { super.init() }

    // MARK: - Internal Work Methods
    override open func intDoAutoTrack(class: String, method: String,
                                      properties: DNSDataDictionary, options: DNSDataDictionary,
                                      then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLAnalyticsResVoid {
        let error = DNSError.Analytics
            .notImplemented(.crashWorkers(self))
        return .failure(error)
    }
    override open func intDoGroup(groupId: String, traits: DNSDataDictionary,
                                  options: DNSDataDictionary,
                                  then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLAnalyticsResVoid
    {
        let error = DNSError.Analytics
            .notImplemented(.crashWorkers(self))
        return .failure(error)
    }
    override open func intDoIdentify(userId: String, traits: DNSDataDictionary,
                                     options: DNSDataDictionary,
                                     then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLAnalyticsResVoid
    {
        let error = DNSError.Analytics
            .notImplemented(.crashWorkers(self))
        return .failure(error)
    }
    override open func intDoScreen(screenTitle: String, properties: DNSDataDictionary,
                                   options: DNSDataDictionary,
                                   then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLAnalyticsResVoid
    {
        let error = DNSError.Analytics
            .notImplemented(.crashWorkers(self))
        return .failure(error)
    }
    override open func intDoTrack(event: WKRPTCLAnalyticsEvents, properties: DNSDataDictionary,
                                  options: DNSDataDictionary,
                                  then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLAnalyticsResVoid
    {
        let error = DNSError.Analytics
            .notImplemented(.crashWorkers(self))
        return .failure(error)
    }
}
