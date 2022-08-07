//
//  WKRCrashAppEventsWorker.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBlankWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2022 - 2016 DoubleNode.com. All rights reserved.
//

import DNSBlankWorkers
import DNSError
import DNSProtocols
import Foundation

open class WKRCrashAppEventsWorker: WKRBlankAppEventsWorker {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: DNSPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLAppEvents) { fatalError("Unable to chain CrashWorker(s)") }

    public required init() { super.init() }

    // MARK: - Internal Work Methods
    override open func intDoLoadAppEvents(with progress: DNSPTCLProgressBlock?,
                                          and block: WKRPTCLAppEventsBlkAAppEvent?,
                                          then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.AppEvents
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
        fatalError(error.errorString)
    }
}
