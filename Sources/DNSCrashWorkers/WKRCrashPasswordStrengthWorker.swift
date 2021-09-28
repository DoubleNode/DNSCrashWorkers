//
//  WKRCrashPasswordStrengthWorker.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCrashWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2020 - 2016 DoubleNode.com. All rights reserved.
//

import DNSBlankWorkers
import DNSCore
import DNSError
import DNSProtocols
import Foundation

open class WKRCrashPasswordStrengthWorker: WKRBlankPasswordStrengthWorker
{
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: PTCLProtocol.Call.NextWhen,
                         nextWorker: PTCLPasswordStrength) { fatalError("Unable to chain CrashWorker(s)") }
    
    public required init() { super.init() }
    
    // MARK: - Internal Work Methods
    override open func intDoCheckPasswordStrength(for password: String,
                                                  then resultBlock: PTCLResultBlock?) throws -> PTCLPasswordStrength.Level {
        throw DNSError.PasswordStrength
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
}
