//
//  WKRCrashCMSWorker.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCrashWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2020 - 2016 DoubleNode.com. All rights reserved.
//

import DNSBlankWorkers
import DNSCore
import DNSError
import DNSProtocols
import UIKit

open class WKRCrashCMSWorker: WKRBlankCMSWorker
{
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: PTCLProtocol.Call.NextWhen,
                         nextWorker: PTCLCms) { fatalError("Unable to chain CrashWorker(s)") }

    public required init() { super.init() }

    // MARK: - Internal Work Methods
    override open func intDoLoad(for group: String,
                                 with progress: PTCLProgressBlock?,
                                 and block: PTCLCmsBlockVoidArrayAny?,
                                 then resultBlock: PTCLResultBlock?) throws {
        throw DNSError.Cms
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
}
