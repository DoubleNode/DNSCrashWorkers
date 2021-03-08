//
//  WKRCrashSupportWorker.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCrashWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2020 - 2016 DoubleNode.com. All rights reserved.
//

import DNSBlankWorkers
import Combine
import DNSCore
import DNSProtocols
import UIKit

open class WKRCrashSupportWorker: WKRBlankSupportWorker
{
    // MARK: - Business Logic / Single Item CRUD

    override open func doGetUpdatedCount(with progress: PTCLProgressBlock?) -> AnyPublisher<Int, Error> {
        guard let nextWorker = self.nextWorker else {
            return Future<Int, Error> { promise in
                let error = PTCLBaseError
                    .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
                promise(.failure(error))
            }.eraseToAnyPublisher()
        }
        return nextWorker.doGetUpdatedCount(with: progress)
    }
}
