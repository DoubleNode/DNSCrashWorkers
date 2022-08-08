//
//  WKRCrashPermissionsWorker.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCrashWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2022 - 2016 DoubleNode.com. All rights reserved.
//

import DNSBlankWorkers
import DNSCore
import DNSError
import DNSProtocols
import UIKit

open class WKRCrashPermissionsWorker: WKRBlankPermissionsWorker {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: DNSPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLPermissions) { fatalError("Unable to chain CrashWorker(s)") }

    public required init() { super.init() }
    
    // MARK: - Internal Work Methods
    override open func intDoRequest(_ desire: WKRPTCLPermissions.Data.Desire,
                                    _ permission: WKRPTCLPermissions.Data.System,
                                    with progress: DNSPTCLProgressBlock?,
                                    and block: WKRPTCLPermissionsBlkAction?,
                                    then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Permissions
            .notImplemented(DNSCodeLocation.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoRequest(_ desire: WKRPTCLPermissions.Data.Desire,
                                    _ permissions: [WKRPTCLPermissions.Data.System],
                                    with progress: DNSPTCLProgressBlock?,
                                    and block: WKRPTCLPermissionsBlkAAction?,
                                    then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Permissions
            .notImplemented(DNSCodeLocation.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoStatus(of permissions: [WKRPTCLPermissions.Data.System],
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLPermissionsBlkAAction?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Permissions
            .notImplemented(DNSCodeLocation.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoWait(for permission: WKRPTCLPermissions.Data.System,
                                 with progress: DNSPTCLProgressBlock?,
                                 and block: WKRPTCLPermissionsBlkAction?,
                                 then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Permissions
            .notImplemented(DNSCodeLocation.crashWorkers(self))
        fatalError(error.errorString)
    }
}
