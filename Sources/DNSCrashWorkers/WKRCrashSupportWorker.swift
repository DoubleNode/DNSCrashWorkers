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
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: PTCLCallNextWhen,
                         nextWorker: PTCLSupport_Protocol) { fatalError("Unable to chain CrashWorker(s)") }
    
    public required init() { super.init() }
    
    // MARK: - Business Logic / Single Item CRUD
    override open func doGetUpdatedCount(with progress: PTCLProgressBlock?) -> AnyPublisher<Int, Error> {
        return Future<Int, Error> { promise in
            let error = PTCLSupportError
                .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
            promise(.failure(error))
        }.eraseToAnyPublisher()
    }
    override open func doPrepare(attachment image: UIImage,
                        with progress: PTCLProgressBlock?) -> AnyPublisher<PTCLSupportAttachment, Error> {
        return Future<PTCLSupportAttachment, Error> {
            let error = PTCLSupportError
                .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
            $0(.failure(error))
        }.eraseToAnyPublisher()
    }
    override open func doSendRequest(subject: String,
                            body: String,
                            tags: [String],
                            attachments: [PTCLSupportAttachment],
                            properties: [String: String],
                            with progress: PTCLProgressBlock?) -> AnyPublisher<Bool, Error> {
        return Future<Bool, Error> {
            let error = PTCLSupportError
                .notImplemented(DNSCrashWorkersCodeLocation(self, "\(#file),\(#line),\(#function)"))
            $0(.failure(error))
        }.eraseToAnyPublisher()
    }
}
