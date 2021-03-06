//
//  WKRCrashValidationWorker.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCrashWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2020 - 2016 DoubleNode.com. All rights reserved.
//

import DNSBlankWorkers
import DNSCore
import DNSProtocols
import Foundation

open class WKRCrashValidationWorker: WKRBlankValidationWorker
{
    // MARK: - Business Logic / Single Item CRUD
    override open func doValidateBirthdate(for birthdate: Date,
                                           with progress: PTCLProgressBlock?,
                                           and block: PTCLValidationBlockVoidBoolDNSError?) throws {
        guard nextWorker != nil else {
            throw PTCLBaseError
                .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
        }
        try nextWorker!.doValidateBirthdate(for: birthdate, with: progress, and: block)
    }

    override open func doValidateEmail(for email: String,
                                       with progress: PTCLProgressBlock?,
                                       and block: PTCLValidationBlockVoidBoolDNSError?) throws {
        guard nextWorker != nil else {
            throw PTCLBaseError
                .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
        }
        try nextWorker!.doValidateEmail(for: email, with: progress, and: block)
    }

    override open func doValidateHandle(for handle: String,
                                        with progress: PTCLProgressBlock?,
                                        and block: PTCLValidationBlockVoidBoolDNSError?) throws {
        guard nextWorker != nil else {
            throw PTCLBaseError
                .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
        }
        try nextWorker!.doValidateHandle(for: handle, with: progress, and: block)
    }

    override open func doValidateName(for name: String,
                                      with progress: PTCLProgressBlock?,
                                      and block: PTCLValidationBlockVoidBoolDNSError?) throws {
        guard nextWorker != nil else {
            throw PTCLBaseError
                .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
        }
        try nextWorker!.doValidateName(for: name, with: progress, and: block)
    }
    
    override open func doValidateNumber(for number: String,
                                        with progress: PTCLProgressBlock?,
                                        and block: PTCLValidationBlockVoidBoolDNSError?) throws {
        guard nextWorker != nil else {
            throw PTCLBaseError
                .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
        }
        try nextWorker!.doValidateNumber(for: number, with: progress, and: block)
    }
                                      
    override open func doValidatePassword(for password: String,
                                          with progress: PTCLProgressBlock?,
                                          and block: PTCLValidationBlockVoidBoolDNSError?) throws {
        guard nextWorker != nil else {
            throw PTCLBaseError
                .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
        }
        try nextWorker!.doValidatePassword(for: password, with: progress, and: block)
    }

    override open func doValidatePercentage(for percentage: String,
                                            with progress: PTCLProgressBlock?,
                                            and block: PTCLValidationBlockVoidBoolDNSError?) throws {
        guard nextWorker != nil else {
            throw PTCLBaseError
                .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
        }
        try nextWorker!.doValidatePercentage(for: percentage, with: progress, and: block)
    }

    override open func doValidatePhone(for phone: String,
                                       with progress: PTCLProgressBlock?,
                                       and block: PTCLValidationBlockVoidBoolDNSError?) throws {
        guard nextWorker != nil else {
            throw PTCLBaseError
                .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
        }
        try nextWorker!.doValidatePhone(for: phone, with: progress, and: block)
    }

    override open func doValidateSearch(for search: String,
                                        with progress: PTCLProgressBlock?,
                                        and block: PTCLValidationBlockVoidBoolDNSError?) throws {
        guard nextWorker != nil else {
            throw PTCLBaseError
                .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
        }
        try nextWorker!.doValidateSearch(for: search, with: progress, and: block)
    }

    override open func doValidateState(for state: String,
                                       with progress: PTCLProgressBlock?,
                                       and block: PTCLValidationBlockVoidBoolDNSError?) throws {
        guard nextWorker != nil else {
            throw PTCLBaseError
                .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
        }
        try nextWorker!.doValidateState(for: state, with: progress, and: block)
    }

    override open func doValidateUnsignedNumber(for number: String,
                                                with progress: PTCLProgressBlock?,
                                                and block: PTCLValidationBlockVoidBoolDNSError?) throws {
        guard nextWorker != nil else {
            throw PTCLBaseError
                .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
        }
        try nextWorker!.doValidateUnsignedNumber(for: number, with: progress, and: block)
    }
}
