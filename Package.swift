// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "vercel-starter-kit",
    platforms: [
        .macOS(.v12)
    ],
    dependencies: [
        .package(url: "https://github.com/swift-cloud/Vercel", from: "1.2.0"),
        .package(url: "https://github.com/swift-cloud/VercelUI", branch: "main")
    ],
    targets: [
        .executableTarget(name: "App", dependencies: ["Vercel", "VercelUI"])
    ]
)
