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

    // MARK: - Internal Work Methods
    override open func intDoValidateBirthdate(for birthdate: Date?,
                                              with config: PTCLValidationBirthdateConfig,
                                              then resultBlock: PTCLResultBlock?) throws -> DNSError? {
        throw PTCLValidationError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoValidateDate(for date: Date?,
                                         with config: PTCLValidationDateConfig,
                                         then resultBlock: PTCLResultBlock?) throws -> DNSError? {
        throw PTCLValidationError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoValidateEmail(for email: String?,
                                          with config: PTCLValidationEmailConfig,
                                          then resultBlock: PTCLResultBlock?) throws -> DNSError? {
        throw PTCLValidationError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoValidateHandle(for handle: String?,
                                           with config: PTCLValidationHandleConfig,
                                           then resultBlock: PTCLResultBlock?) throws -> DNSError? {
        throw PTCLValidationError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoValidateName(for name: String?,
                                         with config: PTCLValidationNameConfig,
                                         then resultBlock: PTCLResultBlock?) throws -> DNSError? {
        throw PTCLValidationError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoValidateNumber(for number: String?,
                                           with config: PTCLValidationNumberConfig,
                                           then resultBlock: PTCLResultBlock?) throws -> DNSError? {
        throw PTCLValidationError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoValidatePassword(for password: String?,
                                             with config: PTCLValidationPasswordConfig,
                                             then resultBlock: PTCLResultBlock?) throws -> DNSError? {
        throw PTCLValidationError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoValidatePercentage(for percentage: String?,
                                               with config: PTCLValidationPercentageConfig,
                                               then resultBlock: PTCLResultBlock?) throws -> DNSError? {
        throw PTCLValidationError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoValidatePhone(for phone: String?,
                                          with config: PTCLValidationPhoneConfig,
                                          then resultBlock: PTCLResultBlock?) throws -> DNSError? {
        throw PTCLValidationError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoValidateSearch(for search: String?,
                                           with config: PTCLValidationSearchConfig,
                                           then resultBlock: PTCLResultBlock?) throws -> DNSError? {
        throw PTCLValidationError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoValidateState(for state: String?,
                                          with config: PTCLValidationStateConfig,
                                          then resultBlock: PTCLResultBlock?) throws -> DNSError? {
        throw PTCLValidationError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoValidateUnsignedNumber(for number: String?,
                                                   with config: PTCLValidationUnsignedNumberConfig,
                                                   then resultBlock: PTCLResultBlock?) throws -> DNSError? {
        throw PTCLValidationError
            .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
    }
}
