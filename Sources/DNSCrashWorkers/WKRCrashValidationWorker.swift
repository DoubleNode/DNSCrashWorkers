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
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: PTCLCallNextWhen,
                         nextWorker: PTCLValidation_Protocol) { fatalError("Unable to chain CrashWorker(s)") }

    public required init() { super.init() }

    // MARK: - Business Logic / Single Item CRUD
    override open func doValidateBirthdate(for birthdate: Date?,
                                           with config: PTCLValidationBirthdateConfig) throws -> DNSError? {
        throw PTCLValidationError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
    }
    override open func doValidateDate(for date: Date?,
                                      with config: PTCLValidationDateConfig) throws -> DNSError? {
        throw PTCLValidationError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
    }
    override open func doValidateEmail(for email: String?,
                                       with config: PTCLValidationEmailConfig) throws -> DNSError? {
        throw PTCLValidationError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
    }
    override open func doValidateHandle(for handle: String?,
                                        with config: PTCLValidationHandleConfig) throws -> DNSError? {
        throw PTCLValidationError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
    }
    override open func doValidateName(for name: String?,
                                      with config: PTCLValidationNameConfig) throws -> DNSError? {
        throw PTCLValidationError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
    }
    override open func doValidateNumber(for number: String?,
                                        with config: PTCLValidationNumberConfig) throws -> DNSError? {
        throw PTCLValidationError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
    }
    override open func doValidatePassword(for password: String?,
                                          with config: PTCLValidationPasswordConfig) throws -> DNSError? {
        throw PTCLValidationError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
    }
    override open func doValidatePercentage(for percentage: String?,
                                            with config: PTCLValidationPercentageConfig) throws -> DNSError? {
        throw PTCLValidationError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
    }
    override open func doValidatePhone(for phone: String?,
                                       with config: PTCLValidationPhoneConfig) throws -> DNSError? {
        throw PTCLValidationError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
    }
    override open func doValidateSearch(for search: String?,
                                        with config: PTCLValidationSearchConfig) throws -> DNSError? {
        throw PTCLValidationError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
    }
    override open func doValidateState(for state: String?,
                                       with config: PTCLValidationStateConfig) throws -> DNSError? {
        throw PTCLValidationError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
    }
    override open func doValidateUnsignedNumber(for number: String?,
                                                with config: PTCLValidationUnsignedNumberConfig) throws -> DNSError? {
        throw PTCLValidationError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
    }
}
