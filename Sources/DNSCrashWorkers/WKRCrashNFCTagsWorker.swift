//
//  WKRCrashNFCTagsWorker.swift
//  DoubleNode Core - DNSCrashWorkers
//
//  Created by Darren Ehlers on 2019/08/12.
//  Copyright © 2019 - 2016 Darren Ehlers and DoubleNode, LLC. All rights reserved.
//

import DNSBlankWorkers
import DNSProtocols
import Foundation

open class WKRCrashNFCTagsWorker: WKRBlankNFCTagsWorker
{
    // MARK: - Business Logic / Single Item CRUD
    override open func doScanTags(for key: String,
                                  with progress: PTCLProgressBlock?,
                                  and block: PTCLNFCTagsBlockVoidArrayNFCNDEFMessageError?) throws {
        guard nextWorker != nil else {
            throw DNSBlankWorkersError.notImplemented(domain: "com.doublenode.\(type(of: self))",
                file: "\(#file)",
                line: "\(#line)",
                method: "\(#function)")
        }

        try nextWorker!.doScanTags(for: key, with: progress, and:block)
    }
}
