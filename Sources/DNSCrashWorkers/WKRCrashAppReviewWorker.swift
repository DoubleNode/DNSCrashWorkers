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

open class WKRCrashAppReviewWorker: WKRBlankAppReviewWorker
{
    // MARK: - Business Logic / Single Item CRUD
    override open func doReview() throws -> Bool {
        guard nextWorker != nil else {
            throw PTCLBaseError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
        }
        return try nextWorker!.doReview()
    }
}
