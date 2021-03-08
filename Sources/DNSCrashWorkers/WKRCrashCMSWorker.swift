//
//  WKRCrashCMSWorker.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCrashWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2020 - 2016 DoubleNode.com. All rights reserved.
//

import DNSBlankWorkers
import DNSCore
import DNSProtocols
import UIKit

open class WKRCrashCMSWorker: WKRBlankCMSWorker
{
    // MARK: - Business Logic / Single Item CRUD

    override open func doLoad(for group: String,
                              with progress: PTCLProgressBlock?,
                              and block: @escaping PTCLCMSBlockVoidArrayDNSError) throws {
        guard nextWorker != nil else {
            throw PTCLBaseError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
        }
        try nextWorker!.doLoad(for: group, with: progress, and: block)
    }
}
