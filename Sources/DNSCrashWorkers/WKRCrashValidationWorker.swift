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
    override open func doValidateBirthdate(for birthdate: Date?,
                                           with config: PTCLValidationBirthdateConfig) throws -> DNSError? {
        guard nextWorker != nil else {
            throw PTCLValidationError
                .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
        }
        return try nextWorker!.doValidateBirthdate(for: birthdate, with: config)
    }
    override open func doValidateDate(for date: Date?,
                                      with config: PTCLValidationDateConfig) throws -> DNSError? {
        guard nextWorker != nil else {
            throw PTCLValidationError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
        }
        return try nextWorker!.doValidateDate(for: date, with: config)
    }
    override open func doValidateEmail(for email: String?,
                                       with config: PTCLValidationEmailConfig) throws -> DNSError? {
        guard nextWorker != nil else {
            throw PTCLValidationError
                .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
        }
        return try nextWorker!.doValidateEmail(for: email, with: config)
    }
    override open func doValidateHandle(for handle: String?,
                                        with config: PTCLValidationHandleConfig) throws -> DNSError? {
        guard nextWorker != nil else {
            throw PTCLValidationError
                .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
        }
        return try nextWorker!.doValidateHandle(for: handle, with: config)
    }
    override open func doValidateName(for name: String?,
                                      with config: PTCLValidationNameConfig) throws -> DNSError? {
        guard nextWorker != nil else {
            throw PTCLValidationError
                .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
        }
        return try nextWorker!.doValidateName(for: name, with: config)
    }
    override open func doValidateNumber(for number: String?,
                                        with config: PTCLValidationNumberConfig) throws -> DNSError? {
        guard nextWorker != nil else {
            throw PTCLValidationError
                .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
        }
        return try nextWorker!.doValidateNumber(for: number, with: config)
    }
    override open func doValidatePassword(for password: String?,
                                          with config: PTCLValidationPasswordConfig) throws -> DNSError? {
        guard nextWorker != nil else {
            throw PTCLValidationError
                .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
        }
        return try nextWorker!.doValidatePassword(for: password, with: config)
    }
    override open func doValidatePercentage(for percentage: String?,
                                            with config: PTCLValidationPercentageConfig) throws -> DNSError? {
        guard nextWorker != nil else {
            throw PTCLValidationError
                .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
        }
        return try nextWorker!.doValidatePercentage(for: percentage, with: config)
    }
    override open func doValidatePhone(for phone: String?,
                                       with config: PTCLValidationPhoneConfig) throws -> DNSError? {
        guard nextWorker != nil else {
            throw PTCLValidationError
                .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
        }
        return try nextWorker!.doValidatePhone(for: phone, with: config)
    }
    override open func doValidateSearch(for search: String?,
                                        with config: PTCLValidationSearchConfig) throws -> DNSError? {
        guard nextWorker != nil else {
            throw PTCLValidationError
                .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
        }
        return try nextWorker!.doValidateSearch(for: search, with: config)
    }
    override open func doValidateState(for state: String?,
                                       with config: PTCLValidationStateConfig) throws -> DNSError? {
        guard nextWorker != nil else {
            throw PTCLValidationError
                .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
        }
        return try nextWorker!.doValidateState(for: state, with: config)
    }
    override open func doValidateUnsignedNumber(for number: String?,
                                                with config: PTCLValidationUnsignedNumberConfig) throws -> DNSError? {
        guard nextWorker != nil else {
            throw PTCLValidationError
                .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
        }
        return try nextWorker!.doValidateUnsignedNumber(for: number, with: config)
    }
}
