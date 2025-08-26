// swift-tools-version:6.0
//
//  Package.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSCrashWorkers
//
//  Created by Darren Ehlers.
//  Copyright © 2022 - 2016 DoubleNode.com. All rights reserved.
//

import PackageDescription

let package = Package(
    name: "DNSCrashWorkers",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v18),
        .tvOS(.v18),
        .macCatalyst(.v18),
        .macOS(.v15),
        .watchOS(.v11),
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
        .package(url: "https://github.com/DoubleNode/DNSBlankWorkers.git", .upToNextMajor(from: "2.0.0")),
        .package(url: "https://github.com/DoubleNode/DNSCore.git", .upToNextMajor(from: "2.0.2")),
        .package(url: "https://github.com/DoubleNode/DNSDataObjects.git", .upToNextMajor(from: "2.0.0")),
        .package(url: "https://github.com/DoubleNode/DNSError.git", .upToNextMajor(from: "2.0.1")),
        .package(url: "https://github.com/DoubleNode/DNSProtocols.git", .upToNextMajor(from: "2.0.3")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "DNSCrashWorkers",
            dependencies: ["DNSBlankWorkers","DNSCore","DNSDataObjects","DNSError","DNSProtocols"],
            swiftSettings: [
                .enableUpcomingFeature("BareSlashRegexLiterals"),
                .enableUpcomingFeature("ConciseMagicFile"),
                .enableUpcomingFeature("ForwardTrailingClosures"),
                .enableUpcomingFeature("ImportObjcForwardDeclarations"),
                .enableUpcomingFeature("DisableOutwardActorInference"),
                .enableUpcomingFeature("ExistentialAny"),
                .enableUpcomingFeature("StrictConcurrency"),
                .enableUpcomingFeature("GlobalConcurrency")
            ]
        ),
        .testTarget(
            name: "DNSCrashWorkersTests",
            dependencies: ["DNSCrashWorkers"],
            swiftSettings: [
                .enableUpcomingFeature("BareSlashRegexLiterals"),
                .enableUpcomingFeature("ConciseMagicFile"),
                .enableUpcomingFeature("ForwardTrailingClosures"),
                .enableUpcomingFeature("ImportObjcForwardDeclarations"),
                .enableUpcomingFeature("DisableOutwardActorInference"),
                .enableUpcomingFeature("ExistentialAny"),
                .enableUpcomingFeature("StrictConcurrency"),
                .enableUpcomingFeature("GlobalConcurrency")
            ]
        ),
    ],
    swiftLanguageModes: [.v5]
)
