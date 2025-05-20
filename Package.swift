// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "KeyMaster",
    platforms: [
        .macOS(.v15)
    ],
    products: [
        .executable(name: "km", targets: ["KeyMaster"])
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser", from: "1.3.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .executableTarget(
            name: "KeyMaster",
            dependencies: [
                .product(name: "ArgumentParser", package: "swift-argument-parser")
            ],
        ),
        .testTarget(
            name: "KeyMasterTests",
            dependencies: ["KeyMaster"]
        ),
    ]
)
