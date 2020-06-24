//
//  WKRCrashAnalyticsWorker.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCrashWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2020 - 2016 DoubleNode.com. All rights reserved.
//

import DNSBlankWorkers
import Foundation

open class WKRCrashAnalyticsWorker: WKRBlankAnalyticsWorker
{
    // MARK: - Identify
    override open func doIdentify(userId: String, traits: [String: Any]?, options: [String: Any]?) throws
    {
        guard nextWorker != nil else
        {
            NSException.init(name: NSExceptionName(rawValue: "\(type(of: self)) Exception"),
                             reason: "Crash worker should not be actually used!",
                             userInfo: nil).raise()
            return
        }

        try nextWorker?.doIdentify(userId: userId, traits: traits, options: options)
    }

    // MARK: - Track
    override open func doTrack(event: String, properties: [String: Any]?, options: [String: Any]?) throws
    {
        guard nextWorker != nil else
        {
            NSException.init(name: NSExceptionName(rawValue: "\(type(of: self)) Exception"),
                             reason: "Crash worker should not be actually used!",
                             userInfo: nil).raise()
            return
        }

        try nextWorker?.doTrack(event: event, properties: properties, options: options)
    }

    // MARK: - Screen
    override open func doScreen(screenTitle: String, properties: [String: Any]?, options: [String: Any]?) throws
    {
        guard nextWorker != nil else
        {
            NSException.init(name: NSExceptionName(rawValue: "\(type(of: self)) Exception"),
                             reason: "Crash worker should not be actually used!",
                             userInfo: nil).raise()
            return
        }

        try nextWorker?.doScreen(screenTitle: screenTitle, properties: properties, options: options)
    }

    // MARK: - Group
    override open func doGroup(groupId: String, traits: [String: Any]?, options: [String: Any]?) throws
    {
        guard nextWorker != nil else
        {
            NSException.init(name: NSExceptionName(rawValue: "\(type(of: self)) Exception"),
                             reason: "Crash worker should not be actually used!",
                             userInfo: nil).raise()
            return
        }

        try nextWorker?.doGroup(groupId: groupId, traits: traits, options: options)
    }
}
