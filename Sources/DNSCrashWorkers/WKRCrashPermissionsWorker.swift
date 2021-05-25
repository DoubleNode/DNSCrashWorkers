//
//  WKRCrashPermissionsWorker.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCrashWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2020 - 2016 DoubleNode.com. All rights reserved.
//

import DNSBlankWorkers
import DNSCore
import DNSProtocols
import UIKit

open class WKRCrashPermissionsWorker: WKRBlankPermissionsWorker
{
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: PTCLCallNextWhen,
                         nextWorker: PTCLPermissions_Protocol) { fatalError("Unable to chain CrashWorker(s)") }
    
    public required init() { super.init() }
    
    // MARK: - Business Logic / Single Item CRUD
    override open func doRequest(_ desire: PTCLPermissions.Desire,
                                 _ permission: PTCLPermissions.Permission,
                                 with progress: PTCLProgressBlock?,
                                 and block: PTCLPermissionsBlockVoidPTCLPermissionActionError?) throws {
        throw PTCLPermissionsError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
    }
    override open func doRequest(_ desire: PTCLPermissions.Desire,
                                 _ permissions: [PTCLPermissions.Permission],
                                 with progress: PTCLProgressBlock?,
                                 and block: PTCLPermissionsBlockVoidArrayPTCLPermissionActionError?) throws {
        throw PTCLPermissionsError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
    }
    override open func doStatus(of permissions: [PTCLPermissions.Permission],
                                with progress: PTCLProgressBlock?,
                                and block: PTCLPermissionsBlockVoidArrayPTCLPermissionActionError?) throws {
        throw PTCLPermissionsError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
    }
    override open func doWait(for permission: PTCLPermissions.Permission,
                              with progress: PTCLProgressBlock?,
                              and block: PTCLPermissionsBlockVoidPTCLPermissionActionError?) throws {
        throw PTCLPermissionsError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
    }
}
