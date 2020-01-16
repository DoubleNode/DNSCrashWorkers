//
//  WKRCrashPasswordStrengthWorker.swift
//  DoubleNode Core - DNSCrashWorkers
//
//  Created by Darren Ehlers on 2019/08/12.
//  Copyright © 2019 - 2016 Darren Ehlers and DoubleNode, LLC. All rights reserved.
//

import DNSBlankWorkers
import DNSProtocols
import Foundation

open class WKRCrashPasswordStrengthWorker: WKRBlankPasswordStrengthWorker
{
    // MARK: - Business Logic / Single Item CRUD

    override open func doCheckPasswordStrength(for password: String) throws -> PTCLPasswordStrengthType {
        guard nextWorker != nil else {
            throw DNSBlankWorkersError.notImplemented(domain: "com.doublenode.\(type(of: self))",
                file: "\(#file)",
                line: "\(#line)",
                method: "\(#function)")
        }

        return try nextWorker!.doCheckPasswordStrength(for: password)
    }
}
