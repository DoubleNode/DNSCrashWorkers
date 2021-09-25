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
    public required init(call callNextWhen: PTCLProtocol.Call.NextWhen,
                         nextWorker: PTCLPermissions) { fatalError("Unable to chain CrashWorker(s)") }
    
    public required init() { super.init() }
    
    // MARK: - Internal Work Methods
    override open func intDoRequest(_ desire: PTCLPermissions.Data.Desire,
                                    _ permission: PTCLPermissions.Data.System,
                                    with progress: PTCLProgressBlock?,
                                    and block: PTCLPermissionsBlockVoidPermissionAction?,
                                    then resultBlock: PTCLResultBlock?) throws {
        throw DNSError.Permissions
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoRequest(_ desire: PTCLPermissions.Data.Desire,
                                    _ permissions: [PTCLPermissions.Data.System],
                                    with progress: PTCLProgressBlock?,
                                    and block: PTCLPermissionsBlockVoidArrayPermissionAction?,
                                    then resultBlock: PTCLResultBlock?) throws {
        throw DNSError.Permissions
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoStatus(of permissions: [PTCLPermissions.Data.System],
                                   with progress: PTCLProgressBlock?,
                                   and block: PTCLPermissionsBlockVoidArrayPermissionAction?,
                                   then resultBlock: PTCLResultBlock?) throws {
        throw DNSError.Permissions
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoWait(for permission: PTCLPermissions.Data.System,
                                 with progress: PTCLProgressBlock?,
                                 and block: PTCLPermissionsBlockVoidPermissionAction?,
                                 then resultBlock: PTCLResultBlock?) throws {
        throw DNSError.Permissions
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
}
