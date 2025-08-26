//
//  WKRCrashGeo.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCrashWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2022 - 2016 DoubleNode.com. All rights reserved.
//

import DNSBlankWorkers
import DNSCore
import DNSError
import DNSProtocols
import Foundation

open class WKRCrashGeo: WKRBlankGeo, @unchecked Sendable {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: DNSPTCLWorker.Call.NextWhen,
                         nextWorker: any WKRPTCLGeo) { fatalError("Unable to chain CrashWorker(s)") }

    public required init() { super.init() }
    
    // MARK: - Internal Work Methods
    override open func intDoLocate(with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLGeoBlkStringLocation?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Geo.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoLocate(_ address: DNSPostalAddress,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLGeoBlkStringLocation?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Geo.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoTrackLocation(for processKey: String,
                                          with progress: DNSPTCLProgressBlock?,
                                          and block: WKRPTCLGeoBlkStringLocation?,
                                          then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Geo.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoStopTrackLocation(for processKey: String,
                                              then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLGeoResVoid {
        let error = DNSError.Geo.notImplemented(.crashWorkers(self))
        return .failure(error)
    }
}
