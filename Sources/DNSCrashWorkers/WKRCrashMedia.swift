//
//  WKRCrashMedia.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCrashWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2022 - 2016 DoubleNode.com. All rights reserved.
//

import DNSBlankWorkers
import DNSCore
import DNSDataObjects
import DNSError
import DNSProtocols
import PDFKit
import UIKit

open class WKRCrashMedia: WKRBlankMedia {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: DNSPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLMedia) { fatalError("Unable to chain CrashWorker(s)") }

    public required init() { super.init() }
    
    // MARK: - Internal Work Methods
    override open func intDoRemove(_ media: DAOMedia,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLMediaBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Media.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoUpload(from fileUrl: URL,
                                   to path: String,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLMediaBlkMedia?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Media.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoUpload(_ image: UIImage,
                                   to path: String,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLMediaBlkMedia?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Media.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoUpload(_ pdfDocument: PDFDocument,
                                   to path: String,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLMediaBlkMedia?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Media.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoUpload(_ text: String,
                                   to path: String,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLMediaBlkMedia?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Media.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
}
