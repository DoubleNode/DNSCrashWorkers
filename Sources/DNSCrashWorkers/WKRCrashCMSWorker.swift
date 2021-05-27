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
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: PTCLCallNextWhen,
                         nextWorker: PTCLCMS_Protocol) { fatalError("Unable to chain CrashWorker(s)") }
    
    public required init() { super.init() }
    
    // MARK: - Internal Work Methods
    override open func intDoLoad(for group: String,
                                 with progress: PTCLProgressBlock?,
                                 and block: PTCLCMSBlockVoidArrayDNSError?,
                                 then resultBlock: PTCLResultBlock?) throws {
        throw PTCLCMSError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
    }
}
