// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LunarCore",
    products: [
        .library(
            name: "LunarCore",
            targets: ["LunarCore"]
        ),
    ],
    targets: [
        .target(
            name: "LunarCore",
            dependencies: []
        ),
        .testTarget(
            name: "LunarCoreTests",
            dependencies: ["LunarCore"]
        ),
    ]
)
