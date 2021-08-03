//
//  WKRCrashPassportsWorker.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCrashWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2020 - 2016 DoubleNode.com. All rights reserved.
//

import DNSBlankWorkers
import Combine
import DNSCore
import DNSDataObjects
import DNSProtocols
import UIKit

open class WKRCrashPassportsWorker: WKRBlankPassportsWorker
{
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: PTCLCallNextWhen,
                         nextWorker: PTCLPassports_Protocol) { fatalError("Unable to chain CrashWorker(s)") }
    
    public required init() { super.init() }
    
    // MARK: - Internal Work Methods
    override open func intDoLoadPassport(of passportType: String,
                                         for account: DAOAccount,
                                         with progress: PTCLProgressBlock?,
                                         then resultBlock: PTCLResultBlock?) -> AnyPublisher<Data, Error> {
        return Future<Data, Error> { promise in
            let error = PTCLPassportsError.notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
            promise(.failure(error))
        }.eraseToAnyPublisher()
    }
}
