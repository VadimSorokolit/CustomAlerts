// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CustomAlerts",
    platforms: [
        .iOS(.v15),
        .macOS(.v12),
        .tvOS(.v15),
        .watchOS(.v8)
    ],
    products: [
        .library(name: "CustomAlerts", targets: ["CustomAlerts"])
    ],
    targets: [
        .target(
            name: "CustomAlerts"
        ),
        .testTarget(
            name: "CustomAlertsTests",
            dependencies: ["CustomAlerts"]
        )
    ],
    swiftLanguageModes: [.v5]  
)
