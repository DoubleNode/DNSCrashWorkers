//
//  WKRCrashValidationWorker.swift
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

open class WKRCrashValidationWorker: WKRBlankValidationWorker
{
    // MARK: - Business Logic / Single Item CRUD
    override open func doValidateBirthdate(for birthdate: Date) throws -> DNSError? {
        guard nextWorker != nil else {
            throw PTCLBaseError
                .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
        }
        return try nextWorker!.doValidateBirthdate(for: birthdate)
    }

    override open func doValidateEmail(for email: String) throws -> DNSError? {
        guard nextWorker != nil else {
            throw PTCLBaseError
                .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
        }
        return try nextWorker!.doValidateEmail(for: email)
    }

    override open func doValidateHandle(for handle: String) throws -> DNSError? {
        guard nextWorker != nil else {
            throw PTCLBaseError
                .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
        }
        return try nextWorker!.doValidateHandle(for: handle)
    }

    override open func doValidateName(for name: String) throws -> DNSError? {
        guard nextWorker != nil else {
            throw PTCLBaseError
                .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
        }
        return try nextWorker!.doValidateName(for: name)
    }
    
    override open func doValidateNumber(for number: String) throws -> DNSError? {
        guard nextWorker != nil else {
            throw PTCLBaseError
                .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
        }
        return try nextWorker!.doValidateNumber(for: number)
    }
                                      
    override open func doValidatePassword(for password: String) throws -> DNSError? {
        guard nextWorker != nil else {
            throw PTCLBaseError
                .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
        }
        return try nextWorker!.doValidatePassword(for: password)
    }

    override open func doValidatePercentage(for percentage: String) throws -> DNSError? {
        guard nextWorker != nil else {
            throw PTCLBaseError
                .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
        }
        return try nextWorker!.doValidatePercentage(for: percentage)
    }

    override open func doValidatePhone(for phone: String) throws -> DNSError? {
        guard nextWorker != nil else {
            throw PTCLBaseError
                .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
        }
        return try nextWorker!.doValidatePhone(for: phone)
    }

    override open func doValidateSearch(for search: String) throws -> DNSError? {
        guard nextWorker != nil else {
            throw PTCLBaseError
                .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
        }
        return try nextWorker!.doValidateSearch(for: search)
    }

    override open func doValidateState(for state: String) throws -> DNSError? {
        guard nextWorker != nil else {
            throw PTCLBaseError
                .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
        }
        return try nextWorker!.doValidateState(for: state)
    }

    override open func doValidateUnsignedNumber(for number: String) throws -> DNSError? {
        guard nextWorker != nil else {
            throw PTCLBaseError
                .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
        }
        return try nextWorker!.doValidateUnsignedNumber(for: number)
    }
}
