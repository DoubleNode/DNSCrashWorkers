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
import DNSError
import DNSProtocols
import UIKit

open class WKRCrashSupportWorker: WKRBlankSupportWorker
{
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: WKRPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLSupport) { fatalError("Unable to chain CrashWorker(s)") }

    public required init() { super.init() }
    
    // MARK: - Internal Work Methods
    override open func intDoGetUpdatedCount(with progress: WKRPTCLProgressBlock?,
                                            then resultBlock: WKRPTCLResultBlock?) -> AnyPublisher<Int, Error> {
        return Future<Int, Error> { promise in
            let error = DNSError.Support
                .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
            promise(.failure(error))
        }.eraseToAnyPublisher()
    }
    override open func intDoPrepare(attachment image: UIImage,
                                    with progress: WKRPTCLProgressBlock?,
                                    then resultBlock: WKRPTCLResultBlock?) -> AnyPublisher<WKRPTCLSupportAttachment, Error> {
        return Future<WKRPTCLSupportAttachment, Error> {
            let error = DNSError.Support
                .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
            $0(.failure(error))
        }.eraseToAnyPublisher()
    }
    override open func intDoSendRequest(subject: String,
                                        body: String,
                                        tags: [String],
                                        attachments: [WKRPTCLSupportAttachment],
                                        properties: [String: String],
                                        with progress: WKRPTCLProgressBlock?,
                                        then resultBlock: WKRPTCLResultBlock?) -> AnyPublisher<Bool, Error> {
        return Future<Bool, Error> {
            let error = DNSError.Support
                .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
            $0(.failure(error))
        }.eraseToAnyPublisher()
    }
}
