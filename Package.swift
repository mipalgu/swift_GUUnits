// swift-tools-version:5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

#if os(Windows)
let deps: [Package.Dependency] = []
#else
let deps: [Package.Dependency] = [.package(url: "https://github.com/apple/swift-docc-plugin", from: "1.0.0")]
#endif

let package = Package(
    name: "GUUnits",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "GUUnits",
            targets: ["GUUnits"]),
    ],
    dependencies: deps,
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .systemLibrary(name: "CGUUnits", pkgConfig: "libguunits"),
        .target(
            name: "GUUnits",
            dependencies: ["CGUUnits"]),
        .testTarget(
            name: "GUUnitsTests",
            dependencies: ["GUUnits", "CGUUnits"]),
    ]
)
