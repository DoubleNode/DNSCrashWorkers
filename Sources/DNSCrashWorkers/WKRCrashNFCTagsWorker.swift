//
//  WKRCrashNFCTagsWorker.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCrashWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2020 - 2016 DoubleNode.com. All rights reserved.
//

import DNSBlankWorkers
import DNSProtocols
import Foundation

open class WKRCrashNFCTagsWorker: WKRBlankNFCTagsWorker
{
    // MARK: - Business Logic / Single Item CRUD
    override open func doScanTags(for key: String,
                                  with progress: PTCLProgressBlock?,
                                  and block: PTCLNFCTagsBlockVoidArrayNFCNDEFMessageDNSError?) throws {
        guard nextWorker != nil else {
            throw DNSBlankWorkersError.notImplemented(domain: "com.doublenode.\(type(of: self))",
                file: "\(#file)",
                line: "\(#line)",
                method: "\(#function)")
        }

        try nextWorker!.doScanTags(for: key, with: progress, and:block)
    }
}
