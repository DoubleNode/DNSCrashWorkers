//
//  WKRCrashValidation.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCrashWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2022 - 2016 DoubleNode.com. All rights reserved.
//

import DNSBlankWorkers
import DNSCore
import DNSError
import DNSProtocols
import Foundation

open class WKRCrashValidation: WKRBlankValidation {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: DNSPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLValidation) { fatalError("Unable to chain CrashWorker(s)") }

    public required init() { super.init() }

    // MARK: - Internal Work Methods
    override open func intDoValidateAddress(for address: DNSPostalAddress?,
                                            with config: Config.Address,
                                            then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLValidationResVoid {
        let error = DNSError.Validation.notImplemented(.crashWorkers(self))
        return .failure(error)
    }
    override open func intDoValidateAddressCity(for city: String?,
                                                with config: Config.Address.City,
                                                then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLValidationResVoid {
        let error = DNSError.Validation.notImplemented(.crashWorkers(self))
        return .failure(error)
    }
    override open func intDoValidateAddressPostalCode(for postalCode: String?,
                                                      with config: Config.Address.PostalCode,
                                                      then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLValidationResVoid {
        let error = DNSError.Validation.notImplemented(.crashWorkers(self))
        return .failure(error)
    }
    override open func intDoValidateAddressState(for state: String?,
                                                 with config: Config.Address.State,
                                                 then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLValidationResVoid {
        let error = DNSError.Validation.notImplemented(.crashWorkers(self))
        return .failure(error)
    }
    override open func intDoValidateAddressStreet(for street: String?,
                                                  with config: Config.Address.Street,
                                                  then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLValidationResVoid {
        let error = DNSError.Validation.notImplemented(.crashWorkers(self))
        return .failure(error)
    }
    override open func intDoValidateAddressStreet2(for street2: String?,
                                                   with config: Config.Address.Street2,
                                                   then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLValidationResVoid {
        let error = DNSError.Validation.notImplemented(.crashWorkers(self))
        return .failure(error)
    }
    override open func intDoValidateBirthdate(for birthdate: Date?,
                                              with config: WKRPTCLValidation.Data.Config.Birthdate,
                                              then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLValidationResVoid {
        let error = DNSError.Validation.notImplemented(.crashWorkers(self))
        return .failure(error)
    }
    override open func intDoValidateCalendarDate(for date: Date?,
                                                 with config: WKRPTCLValidation.Data.Config.CalendarDate,
                                                 then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLValidationResVoid {
        let error = DNSError.Validation.notImplemented(.crashWorkers(self))
        return .failure(error)
    }
    override open func intDoValidateEmail(for email: String?,
                                          with config: WKRPTCLValidation.Data.Config.Email,
                                          then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLValidationResVoid {
        let error = DNSError.Validation.notImplemented(.crashWorkers(self))
        return .failure(error)
    }
    override open func intDoValidateHandle(for handle: String?,
                                           with config: WKRPTCLValidation.Data.Config.Handle,
                                           then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLValidationResVoid {
        let error = DNSError.Validation.notImplemented(.crashWorkers(self))
        return .failure(error)
    }
    override open func intDoValidateName(for name: String?,
                                         with config: WKRPTCLValidation.Data.Config.Name,
                                         then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLValidationResVoid {
        let error = DNSError.Validation.notImplemented(.crashWorkers(self))
        return .failure(error)
    }
    override open func intDoValidateNumber(for number: String?,
                                           with config: WKRPTCLValidation.Data.Config.Number,
                                           then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLValidationResVoid {
        let error = DNSError.Validation.notImplemented(.crashWorkers(self))
        return .failure(error)
    }
    override open func intDoValidatePassword(for password: String?,
                                             with config: WKRPTCLValidation.Data.Config.Password,
                                             then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLValidationResVoid {
        let error = DNSError.Validation.notImplemented(.crashWorkers(self))
        return .failure(error)
    }
    override open func intDoValidatePercentage(for percentage: String?,
                                               with config: WKRPTCLValidation.Data.Config.Percentage,
                                               then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLValidationResVoid {
        let error = DNSError.Validation.notImplemented(.crashWorkers(self))
        return .failure(error)
    }
    override open func intDoValidatePhone(for phone: String?,
                                          with config: WKRPTCLValidation.Data.Config.Phone,
                                          then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLValidationResVoid {
        let error = DNSError.Validation.notImplemented(.crashWorkers(self))
        return .failure(error)
    }
    override open func intDoValidateSearch(for search: String?,
                                           with config: WKRPTCLValidation.Data.Config.Search,
                                           then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLValidationResVoid {
        let error = DNSError.Validation.notImplemented(.crashWorkers(self))
        return .failure(error)
    }
    override open func intDoValidateState(for state: String?,
                                          with config: WKRPTCLValidation.Data.Config.State,
                                          then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLValidationResVoid {
        let error = DNSError.Validation.notImplemented(.crashWorkers(self))
        return .failure(error)
    }
    override open func intDoValidateUnsignedNumber(for number: String?,
                                                   with config: WKRPTCLValidation.Data.Config.UnsignedNumber,
                                                   then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLValidationResVoid {
        let error = DNSError.Validation.notImplemented(.crashWorkers(self))
        return .failure(error)
    }
}
