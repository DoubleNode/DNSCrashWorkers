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
    
    // MARK: - Internal Work Methods
    override open func intDoRequest(_ desire: PTCLPermissions.Desire,
                                    _ permission: PTCLPermissions.Permission,
                                    with progress: PTCLProgressBlock?,
                                    and block: PTCLPermissionsBlockVoidPTCLPermissionActionError?,
                                    then resultBlock: PTCLResultBlock?) throws {
        throw PTCLPermissionsError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoRequest(_ desire: PTCLPermissions.Desire,
                                    _ permissions: [PTCLPermissions.Permission],
                                    with progress: PTCLProgressBlock?,
                                    and block: PTCLPermissionsBlockVoidArrayPTCLPermissionActionError?,
                                    then resultBlock: PTCLResultBlock?) throws {
        throw PTCLPermissionsError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoStatus(of permissions: [PTCLPermissions.Permission],
                                   with progress: PTCLProgressBlock?,
                                   and block: PTCLPermissionsBlockVoidArrayPTCLPermissionActionError?,
                                   then resultBlock: PTCLResultBlock?) throws {
        throw PTCLPermissionsError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoWait(for permission: PTCLPermissions.Permission,
                                 with progress: PTCLProgressBlock?,
                                 and block: PTCLPermissionsBlockVoidPTCLPermissionActionError?,
                                 then resultBlock: PTCLResultBlock?) throws {
        throw PTCLPermissionsError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
    }
}
