// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AnimatableListRow",
    platforms: [.macOS(.v15), .iOS(.v18), .watchOS(.v11), .tvOS(.v18), .macCatalyst(.v15)],
    products: [
        .library(
            name: "AnimatableListRow",
            targets: ["AnimatableListRow"]),
    ],
    targets: [
        .target(
            name: "AnimatableListRow"),
        .testTarget(
            name: "AnimatableListRowTests",
            dependencies: ["AnimatableListRow"]
        ),
    ]
)
