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
    // MARK: - Auto-Track -
    override open func doAutoTrack(class: String, method: String, properties: [String: Any], options: [String: Any]) throws {
        guard nextWorker != nil else {
            throw PTCLAnalyticsError
                .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
        }
        try nextWorker!.doAutoTrack(class: `class`, method: method, properties: properties, options: options)
    }

    // MARK: - Group -
    override open func doGroup(groupId: String, traits: [String: Any], options: [String: Any]) throws
    {
        guard nextWorker != nil else
        {
            throw PTCLAnalyticsError
                .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
        }
        try nextWorker?.doGroup(groupId: groupId, traits: traits, options: options)
    }

    // MARK: - Identify -
    override open func doIdentify(userId: String, traits: [String: Any], options: [String: Any]) throws
    {
        guard nextWorker != nil else
        {
            throw PTCLAnalyticsError
                .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
        }
        try nextWorker?.doIdentify(userId: userId, traits: traits, options: options)
    }

    // MARK: - Screen -
    override open func doScreen(screenTitle: String, properties: [String: Any], options: [String: Any]) throws
    {
        guard nextWorker != nil else
        {
            throw PTCLAnalyticsError
                .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
        }
        try nextWorker?.doScreen(screenTitle: screenTitle, properties: properties, options: options)
    }

    // MARK: - Track -
    override open func doTrack(event: PTCLAnalyticsEvents, properties: [String: Any], options: [String: Any]) throws
    {
        guard nextWorker != nil else
        {
            throw PTCLAnalyticsError
                .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
        }
        try nextWorker?.doTrack(event: event, properties: properties, options: options)
    }
}
