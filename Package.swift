// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "vercel-starter-kit",
    platforms: [
        .macOS(.v12)
    ],
    dependencies: [
        .package(url: "https://github.com/swift-cloud/Vercel", from: "1.7.1")
    ],
    targets: [
        .executableTarget(name: "App", dependencies: ["Vercel"])
    ]
)
