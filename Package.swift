// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "vercel-starter-kit",
    platforms: [
        .macOS(.v12)
    ],
    dependencies: [
        .package(url: "https://github.com/swift-cloud/Vercel", branch: "main")
    ],
    targets: [
        .executableTarget(name: "App", dependencies: ["Vercel"])
    ]
)
