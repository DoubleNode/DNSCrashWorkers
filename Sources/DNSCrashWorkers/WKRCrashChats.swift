//
//  WKRCrashChats.swift
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
import Foundation

open class WKRCrashChats: WKRBlankChats {
    @available(*, unavailable, message: "Unable to chain CrashWorker(s)")
    public required init(call callNextWhen: DNSPTCLWorker.Call.NextWhen,
                         nextWorker: WKRPTCLChats) { fatalError("Unable to chain CrashWorker(s)") }

    public required init() { super.init() }
    
    // MARK: - Internal Work Methods
    override open func intDoLoadChat(for id: String,
                                     with progress: DNSPTCLProgressBlock?,
                                     and block: WKRPTCLChatsBlkChat?,
                                     then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Chats.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoLoadMessages(for chat: DAOChat,
                                         with progress: DNSPTCLProgressBlock?,
                                         and block: WKRPTCLChatsBlkAChatMessage?,
                                         then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Chats.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoRemove(_ message: DAOChatMessage,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLChatsBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Chats.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
    override open func intDoUpdate(_ message: DAOChatMessage,
                                   with progress: DNSPTCLProgressBlock?,
                                   and block: WKRPTCLChatsBlkVoid?,
                                   then resultBlock: DNSPTCLResultBlock?) {
        let error = DNSError.Chats.notImplemented(.crashWorkers(self))
        fatalError(error.errorString)
    }
}
