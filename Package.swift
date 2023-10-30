// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription


let package = Package(
    name: "codes",
    products: [
        .executable(name: "swift-hello", targets: ["hello"]),
    ],
    targets: [
        .executableTarget(
            name: "hello",
            path: "swift/hello",
            exclude: ["README.md"])
    ]
)
