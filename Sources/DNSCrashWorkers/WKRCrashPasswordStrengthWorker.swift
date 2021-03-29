//
//  WKRCrashPasswordStrengthWorker.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCrashWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2020 - 2016 DoubleNode.com. All rights reserved.
//

import DNSBlankWorkers
import DNSCore
import DNSProtocols
import Foundation

open class WKRCrashPasswordStrengthWorker: WKRBlankPasswordStrengthWorker
{
    // MARK: - Business Logic / Single Item CRUD

    override open func doCheckPasswordStrength(for password: String) throws -> PTCLPasswordStrengthType {
        guard nextWorker != nil else {
            throw PTCLPasswordStrengthError
                .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
        }
        return try nextWorker!.doCheckPasswordStrength(for: password)
    }
}
