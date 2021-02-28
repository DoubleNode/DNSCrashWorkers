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
    // MARK: - Business Logic / Single Item CRUD

    override open func doRequest(_ desire: PTCLPermissions.Desire,
                                 _ permission: PTCLPermissions.Permission,
                                 with progress: PTCLProgressBlock?,
                                 and block: @escaping PTCLPermissionsBlockVoidPTCLPermissionActionError) throws {
        guard nextWorker != nil else {
            throw PTCLBaseError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
        }
        try nextWorker!.doRequest(desire, permission, with: progress, and: block)
    }
    override open func doRequest(_ desire: PTCLPermissions.Desire,
                                 _ permissions: [PTCLPermissions.Permission],
                                 with progress: PTCLProgressBlock?,
                                 and block: @escaping PTCLPermissionsBlockVoidArrayPTCLPermissionActionError) throws {
        guard nextWorker != nil else {
            throw PTCLBaseError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
        }
        try nextWorker!.doRequest(desire, permissions, with: progress, and: block)
    }
    override open func doStatus(of permissions: [PTCLPermissions.Permission],
                                with progress: PTCLProgressBlock?,
                                and block: @escaping PTCLPermissionsBlockVoidArrayPTCLPermissionActionError) throws {
        guard nextWorker != nil else {
            throw PTCLBaseError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
        }
        try nextWorker!.doStatus(of: permissions, with: progress, and: block)
    }
    override open func doWait(for permission: PTCLPermissions.Permission,
                              with progress: PTCLProgressBlock?,
                              and block: @escaping PTCLPermissionsBlockVoidPTCLPermissionActionError) throws {
        guard nextWorker != nil else {
            throw PTCLBaseError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
        }
        try nextWorker!.doWait(for: permission, with: progress, and: block)
    }
}
