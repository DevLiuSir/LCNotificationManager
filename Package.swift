// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LCNotificationManager",
    platforms: [
        .macOS(.v10_14)
    ],
    products: [
        .library(
            name: "LCNotificationManager",
            targets: ["LCNotificationManager"]
        ),
    ],
    targets: [
        .target(
            name: "LCNotificationManager"
        ),
        .testTarget(
            name: "LCNotificationManagerTests",
            dependencies: ["LCNotificationManager"]
        ),
    ]
)
