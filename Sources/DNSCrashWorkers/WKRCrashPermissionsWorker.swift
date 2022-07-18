//
//  WKRCrashPermissionsWorker.swift
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

open class WKRCrashPermissionsWorker: WKRBlankPermissionsWorker
{
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: WKRPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLPermissions) { fatalError("Unable to chain CrashWorker(s)") }

    public required init() { super.init() }
    
    // MARK: - Internal Work Methods
    override open func intDoRequest(_ desire: WKRPTCLPermissions.Data.Desire,
                                    _ permission: WKRPTCLPermissions.Data.System,
                                    with progress: WKRPTCLProgressBlock?,
                                    and block: WKRPTCLPermissionsBlockPermissionAction?,
                                    then resultBlock: WKRPTCLResultBlock?) throws {
        throw DNSError.Permissions
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoRequest(_ desire: WKRPTCLPermissions.Data.Desire,
                                    _ permissions: [WKRPTCLPermissions.Data.System],
                                    with progress: WKRPTCLProgressBlock?,
                                    and block: WKRPTCLPermissionsBlockArrayPermissionAction?,
                                    then resultBlock: WKRPTCLResultBlock?) throws {
        throw DNSError.Permissions
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoStatus(of permissions: [WKRPTCLPermissions.Data.System],
                                   with progress: WKRPTCLProgressBlock?,
                                   and block: WKRPTCLPermissionsBlockArrayPermissionAction?,
                                   then resultBlock: WKRPTCLResultBlock?) throws {
        throw DNSError.Permissions
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoWait(for permission: WKRPTCLPermissions.Data.System,
                                 with progress: WKRPTCLProgressBlock?,
                                 and block: WKRPTCLPermissionsBlockPermissionAction?,
                                 then resultBlock: WKRPTCLResultBlock?) throws {
        throw DNSError.Permissions
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
}
