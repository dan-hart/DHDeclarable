// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DHDeclarable",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(
            name: "DHDeclarable",
            targets: ["DHDeclarable"]
        ),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/shibapm/Komondor.git", from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "DHDeclarable",
            dependencies: []
        ),
        .testTarget(
            name: "DHDeclarableTests",
            dependencies: ["DHDeclarable"]
        ),
    ]
)

#if canImport(PackageConfig)
    import PackageConfig
    let config = PackageConfiguration([
        "komondor": [
            "pre-commit": ["xcodebuild test -destination 'name=iPhone 13' -scheme 'DHDeclarable-Package'", "swift run swiftFormat ."],
            "pre-push": "xcodebuild test -destination 'name=iPhone 13' -scheme 'DHDeclarable-Package'"
        ],
    ])
#endif
