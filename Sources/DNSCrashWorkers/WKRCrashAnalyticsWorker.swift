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
    
    // MARK: - Auto-Track -
    override open func doAutoTrack(class: String, method: String, properties: [String: Any], options: [String: Any]) throws {
        throw PTCLAnalyticsError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
    }

    // MARK: - Group -
    override open func doGroup(groupId: String, traits: [String: Any], options: [String: Any]) throws
    {
        throw PTCLAnalyticsError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
    }

    // MARK: - Identify -
    override open func doIdentify(userId: String, traits: [String: Any], options: [String: Any]) throws
    {
        throw PTCLAnalyticsError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
    }

    // MARK: - Screen -
    override open func doScreen(screenTitle: String, properties: [String: Any], options: [String: Any]) throws
    {
        throw PTCLAnalyticsError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
    }

    // MARK: - Track -
    override open func doTrack(event: PTCLAnalyticsEvents, properties: [String: Any], options: [String: Any]) throws
    {
        throw PTCLAnalyticsError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
    }
}
