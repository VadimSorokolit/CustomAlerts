// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CustomAlerts",
    platforms: [
        .iOS(.v17),         
        .macOS(.v11),
        .tvOS(.v13),
        .watchOS(.v6)
    ],
    products: [
        .library(
            name: "CustomAlerts",
            targets: ["CustomAlerts"]),
    ],
    targets: [
        .target(
            name: "CustomAlerts"),
        .testTarget(
            name: "CustomAlertsTests",
            dependencies: ["CustomAlerts"]
        ),
    ]
)
