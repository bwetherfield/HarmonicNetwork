// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HarmonicNetwork",
    dependencies: [
        .package(url: "https://github.com/dn-m/Structure", from: "0.24.0"),
        .package(url: "https://github.com/dn-m/Music", from: "0.15.0"),
        .package(url: "https://github.com/dn-m/NotationModel", from: "0.8.0"),
        .package(url: "https://github.com/dn-m/Math", from: "0.7.1"),
        .package(url: "https://github.com/jsbean/console-kit", .branch("master"))
    ],
    targets: [
        .target(
            name: "harmonic-network",
            dependencies: ["DataStructures", "Pitch", "Math", "SpelledPitch", "ConsoleKit"]
        ),
        .testTarget(
            name: "HarmonicPathfinderTests",
            dependencies: ["harmonic-network"]
        ),
    ]
)
