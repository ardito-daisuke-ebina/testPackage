// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "testPackage",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Ebinaframework",
            targets: ["Ebinaframework"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "6.6.0")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(name: "Ebinaframework",
                      path: "Ebinaframework.xcframework"),
    ]
)
