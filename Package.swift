// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyPackage1",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "MyPackage1",
            targets: ["MyPackage1"]),
    ],
    dependencies: [
        .package(url: "git@github.com:andrey-torlopov/MyPackage2.git", branch: "main")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "MyPackage1",
            dependencies: ["MyPackage2"]
        ),
        .testTarget(
            name: "MyPackage1Tests",
            dependencies: ["MyPackage1"]),
    ]
)
