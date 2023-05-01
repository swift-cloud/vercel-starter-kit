// swift-tools-version: 5.8

import PackageDescription

let package = Package(
    name: "vercel-starter-kit",
    platforms: [
        .macOS(.v12)
    ],
    dependencies: [
        .package(url: "https://github.com/swift-cloud/Vercel", from: "1.10.0"),
        .package(url: "https://github.com/swift-cloud/Upstash", from: "1.0.1")
    ],
    targets: [
        .executableTarget(name: "App", dependencies: ["Vercel", "Upstash"])
    ]
)
