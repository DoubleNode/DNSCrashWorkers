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
    // MARK: - Business Logic / Single Item CRUD

    override open func doLoadPassport(of passportType: PTCLPassportsProtocolPassportTypes,
                                      for account: DAOAccount,
                                      with progress: PTCLProgressBlock?) -> AnyPublisher<Data, Error> {
        guard let nextWorker = self.nextWorker else {
            return Future<Data, Error> { promise in
                let error = PTCLPassportsError.notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
                promise(.failure(error))
            }.eraseToAnyPublisher()
        }
        return nextWorker.doLoadPassport(of: passportType,
                                         for: account,
                                         with: progress)
    }

}
