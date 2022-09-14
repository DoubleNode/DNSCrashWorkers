//
//  WKRCrashSections.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBlankWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2022 - 2016 DoubleNode.com. All rights reserved.
//

import Combine
import DNSBlankWorkers
import DNSDataObjects
import DNSError
import DNSProtocols
import Foundation

open class WKRCrashSections: WKRBlankSections {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: DNSPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLSections) { fatalError("Unable to chain CrashWorker(s)") }

    public required init() { super.init() }

    // MARK: - Internal Work Methods
    override open func intDoLoadChildren(for section: DAOSection,
                                with progress: DNSPTCLProgressBlock?,
                                and block: WKRPTCLSectionsBlkASection?,
                                then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Sections.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoLoadParent(for section: DAOSection,
                              with progress: DNSPTCLProgressBlock?,
                              and block: WKRPTCLSectionsBlkSection?,
                              then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Sections.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoLoadSection(for id: String,
                               with progress: DNSPTCLProgressBlock?,
                               and block: WKRPTCLSectionsBlkSection?,
                               then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Sections.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoLoadSections(with progress: DNSPTCLProgressBlock?,
                                and block: WKRPTCLSectionsBlkASection?,
                                then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Sections.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoUpdate(_ section: DAOSection,
                          with progress: DNSPTCLProgressBlock?,
                          and block: WKRPTCLSectionsBlkVoid?,
                          then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Sections.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
}
