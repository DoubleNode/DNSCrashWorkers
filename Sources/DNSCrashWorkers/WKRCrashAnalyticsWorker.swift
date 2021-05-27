//
//  WKRCrashAnalyticsWorker.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCrashWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2020 - 2016 DoubleNode.com. All rights reserved.
//

import DNSBlankWorkers
import DNSCore
import DNSProtocols
import Foundation

open class WKRCrashAnalyticsWorker: WKRBlankAnalyticsWorker
{
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: PTCLCallNextWhen,
                         nextWorker: PTCLAnalytics_Protocol) { fatalError("Unable to chain CrashWorker(s)") }
    
    public required init() { super.init() }
    
    // MARK: - Internal Work Methods
    override open func intDoAutoTrack(class: String, method: String,
                                      properties: [String: Any], options: [String: Any],
                                      then resultBlock: PTCLResultBlock?) throws {
        throw PTCLAnalyticsError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoGroup(groupId: String, traits: [String: Any],
                                  options: [String: Any],
                                  then resultBlock: PTCLResultBlock?) throws
    {
        throw PTCLAnalyticsError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoIdentify(userId: String, traits: [String: Any],
                                     options: [String: Any],
                                     then resultBlock: PTCLResultBlock?) throws
    {
        throw PTCLAnalyticsError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoScreen(screenTitle: String, properties: [String: Any],
                                   options: [String: Any],
                                   then resultBlock: PTCLResultBlock?) throws
    {
        throw PTCLAnalyticsError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoTrack(event: PTCLAnalyticsEvents, properties: [String: Any],
                                  options: [String: Any],
                                  then resultBlock: PTCLResultBlock?) throws
    {
        throw PTCLAnalyticsError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
    }
}
