//
//  WKRCrashSupportWorker.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCrashWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2022 - 2016 DoubleNode.com. All rights reserved.
//

import DNSBlankWorkers
import Combine
import DNSCore
import DNSError
import DNSProtocols
import UIKit

open class WKRCrashSupportWorker: WKRBlankSupportWorker {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: DNSPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLSupport) { fatalError("Unable to chain CrashWorker(s)") }

    public required init() { super.init() }
    
    // MARK: - Internal Work Methods
    override open func intDoGetUpdatedCount(with progress: DNSPTCLProgressBlock?,
                                            then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLSupportPubInt {
        return Future<WKRPTCLSupportRtnInt, Error> { promise in
            let error = DNSError.Support
                .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
            promise(.failure(error))
        }.eraseToAnyPublisher()
    }
    override open func intDoPrepare(attachment image: UIImage,
                                    with progress: DNSPTCLProgressBlock?,
                                    then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLSupportPubAttach {
        return Future<WKRPTCLSupportRtnAttach, Error> {
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
                                        with progress: DNSPTCLProgressBlock?,
                                        then resultBlock: DNSPTCLResultBlock?) -> WKRPTCLSupportPubBool {
        return Future<WKRPTCLSupportRtnBool, Error> {
            let error = DNSError.Support
                .notImplemented(DNSCodeLocation.crashWorkers(self, "\(#file),\(#line),\(#function)"))
            $0(.failure(error))
        }.eraseToAnyPublisher()
    }
}
