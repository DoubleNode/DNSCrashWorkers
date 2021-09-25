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
    public required init(call callNextWhen: PTCLProtocol.Call.NextWhen,
                         nextWorker: PTCLValidation) { fatalError("Unable to chain CrashWorker(s)") }

    public required init() { super.init() }

    // MARK: - Internal Work Methods
    override open func intDoValidateBirthdate(for birthdate: Date?,
                                              with config: PTCLValidation.Data.Config.Birthdate,
                                              then resultBlock: PTCLResultBlock?) throws -> DNSError.Validation? {
        throw DNSError.Validation
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoValidateCalendarDate(for date: Date?,
                                                 with config: PTCLValidation.Data.Config.CalendarDate,
                                                 then resultBlock: PTCLResultBlock?) throws -> DNSError.Validation? {
        throw DNSError.Validation
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoValidateEmail(for email: String?,
                                          with config: PTCLValidation.Data.Config.Email,
                                          then resultBlock: PTCLResultBlock?) throws -> DNSError.Validation? {
        throw DNSError.Validation
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoValidateHandle(for handle: String?,
                                           with config: PTCLValidation.Data.Config.Handle,
                                           then resultBlock: PTCLResultBlock?) throws -> DNSError.Validation? {
        throw DNSError.Validation
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoValidateName(for name: String?,
                                         with config: PTCLValidation.Data.Config.Name,
                                         then resultBlock: PTCLResultBlock?) throws -> DNSError.Validation? {
        throw DNSError.Validation
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoValidateNumber(for number: String?,
                                           with config: PTCLValidation.Data.Config.Number,
                                           then resultBlock: PTCLResultBlock?) throws -> DNSError.Validation? {
        throw DNSError.Validation
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoValidatePassword(for password: String?,
                                             with config: PTCLValidation.Data.Config.Password,
                                             then resultBlock: PTCLResultBlock?) throws -> DNSError.Validation? {
        throw DNSError.Validation
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoValidatePercentage(for percentage: String?,
                                               with config: PTCLValidation.Data.Config.Percentage,
                                               then resultBlock: PTCLResultBlock?) throws -> DNSError.Validation? {
        throw DNSError.Validation
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoValidatePhone(for phone: String?,
                                          with config: PTCLValidation.Data.Config.Phone,
                                          then resultBlock: PTCLResultBlock?) throws -> DNSError.Validation? {
        throw DNSError.Validation
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoValidateSearch(for search: String?,
                                           with config: PTCLValidation.Data.Config.Search,
                                           then resultBlock: PTCLResultBlock?) throws -> DNSError.Validation? {
        throw DNSError.Validation
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoValidateState(for state: String?,
                                          with config: PTCLValidation.Data.Config.State,
                                          then resultBlock: PTCLResultBlock?) throws -> DNSError.Validation? {
        throw DNSError.Validation
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
    override open func intDoValidateUnsignedNumber(for number: String?,
                                                   with config: PTCLValidation.Data.Config.UnsignedNumber,
                                                   then resultBlock: PTCLResultBlock?) throws -> DNSError.Validation? {
        throw DNSError.Validation
            .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
    }
}
