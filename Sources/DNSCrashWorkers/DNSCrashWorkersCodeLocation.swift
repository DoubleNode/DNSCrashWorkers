//
//  DNSCrashWorkersCodeLocation.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCore
//
//  Created by Darren Ehlers.
//  Copyright © 2022 - 2016 DoubleNode.com. All rights reserved.
//

import DNSError
import DNSProtocols

public extension DNSCodeLocation {
    typealias crashWorkers = DNSCrashWorkersCodeLocation
}
open class DNSCrashWorkersCodeLocation: DNSCodeLocation {
    override open class var domainPreface: String { "com.doublenode.crashWorkers." }
}
