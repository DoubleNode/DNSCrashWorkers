//
//  WKRCrashNFCTagsWorker.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCrashWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2020 - 2016 DoubleNode.com. All rights reserved.
//

import DNSBlankWorkers
import DNSCore
import DNSProtocols
import DNSProtocolsAdvanced
import Foundation

open class WKRCrashNFCTagsWorker: WKRBlankNFCTagsWorker
{
    // MARK: - Business Logic / Single Item CRUD
    override open func doScanTags(for key: String,
                                  with progress: PTCLProgressBlock?,
                                  and block: PTCLNFCTagsBlockVoidArrayNFCNDEFMessageDNSError?) throws {
        guard nextWorker != nil else {
            throw PTCLBaseError.notImplemented(domain: "com.doublenode.\(type(of: self))",
                                               file: DNSCore.shortenErrorPath("\(#file)"),
                                               line: "\(#line)",
                                               method: "\(#function)")
        }
        try nextWorker!.doScanTags(for: key, with: progress, and:block)
    }
}
