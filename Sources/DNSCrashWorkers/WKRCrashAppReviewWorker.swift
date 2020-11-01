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
            throw PTCLBaseError.notImplemented(domain: "com.doublenode.\(type(of: self))",
                                               file: DNSCore.shortenErrorPath("\(#file)"),
                                               line: "\(#line)",
                                               method: "\(#function)")
        }
        return try nextWorker!.doReview()
    }
}
