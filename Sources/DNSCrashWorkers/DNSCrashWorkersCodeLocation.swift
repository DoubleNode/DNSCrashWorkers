//
//  DNSCrashWorkersCodeLocation.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCore
//
//  Created by Darren Ehlers.
//  Copyright © 2020 - 2016 DoubleNode.com. All rights reserved.
//

import DNSError

open class DNSCrashWorkersCodeLocation: DNSCodeLocation {
    override open class var domainPreface: String { "com.doublenode.crashWorkers." }
}
