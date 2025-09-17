// swift-tools-version:5.7
//
//  Package.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCrashWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2025 - 2016 DoubleNode.com. All rights reserved.
//

import PackageDescription

let package = Package(
    name: "DNSCrashWorkers",
    platforms: [
        .iOS(.v16),
        .tvOS(.v16),
        .macCatalyst(.v16),
        .macOS(.v13),
        .watchOS(.v9),
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "DNSCrashWorkers",
            type: .static,
            targets: ["DNSCrashWorkers"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
//        .package(url: "https://github.com/DoubleNode/DNSBlankWorkers.git", from: "1.12.0"),
//        .package(url: "https://github.com/DoubleNode/DNSCore.git", from: "1.12.0"),
//        .package(url: "https://github.com/DoubleNode/DNSDataObjects.git", from: "1.12.0"),
//        .package(url: "https://github.com/DoubleNode/DNSDataTypes.git", from: "1.12.0"),
//        .package(url: "https://github.com/DoubleNode/DNSDataUIObjects.git", from: "1.12.0"),
//        .package(url: "https://github.com/DoubleNode/DNSError.git", from: "1.12.0"),
//        .package(url: "https://github.com/DoubleNode/DNSProtocols.git", from: "1.12.0"),
        .package(path: "../DNSBlankWorkers"),
        .package(path: "../DNSCore"),
        .package(path: "../DNSDataObjects"),
        .package(path: "../DNSDataTypes"),
        .package(path: "../DNSDataUIObjects"),
        .package(path: "../DNSError"),
        .package(path: "../DNSProtocols"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "DNSCrashWorkers",
            dependencies: ["DNSBlankWorkers","DNSCore","DNSDataObjects","DNSDataTypes","DNSDataUIObjects",
                           "DNSError","DNSProtocols"]),
        .testTarget(
            name: "DNSCrashWorkersTests",
            dependencies: ["DNSCrashWorkers"]),
    ],
    swiftLanguageVersions: [.v5]
)
