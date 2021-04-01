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
                let error = PTCLSupportError
                    .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
                promise(.failure(error))
            }.eraseToAnyPublisher()
        }
        return nextWorker.doGetUpdatedCount(with: progress)
    }
    override open func doPrepare(attachment image: UIImage,
                        with progress: PTCLProgressBlock?) -> AnyPublisher<PTCLSupportAttachment, Error> {
        guard let nextWorker = self.nextWorker else {
            return Future<PTCLSupportAttachment, Error> {
                let error = PTCLSupportError
                    .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
                $0(.failure(error))
            }.eraseToAnyPublisher()
        }
        return nextWorker.doPrepare(attachment: image, with: progress)
    }
    override open func doSendRequest(subject: String,
                            body: String,
                            tags: [String],
                            attachments: [PTCLSupportAttachment],
                            properties: [String: String],
                            with progress: PTCLProgressBlock?) -> AnyPublisher<Bool, Error> {
        guard let nextWorker = self.nextWorker else {
            return Future<Bool, Error> {
                let error = PTCLSupportError
                    .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
                $0(.failure(error))
            }.eraseToAnyPublisher()
        }
        return nextWorker.doSendRequest(subject: subject, body: body, tags: tags,
                                        attachments: attachments, properties: properties,
                                        with: progress)
    }
}
