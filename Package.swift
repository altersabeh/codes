// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription


let package = Package(
    name: "codes",
    products: [
        .executable(name: "swift-hello", targets: ["hello"]),
        .executable(name: "swift-fibonacci", targets: ["fibonacci"]),
    ],
    dependencies: [
        .package(url: "https://github.com/attaswift/BigInt.git", from: "5.3.0")
    ],
    targets: [
        .executableTarget(
            name: "hello",
            path: "swift/hello"
            // exclude: ["README.md"]
        ),
        .executableTarget(
            name: "fibonacci",
            dependencies: [
                .product(name: "BigInt", package: "BigInt")
            ],
            path: "swift/fibonacci"
            // exclude: ["README.md"]
        ),
    ]
)
