// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "storyteller-brightcove-collector-swift",
    platforms: [
      .iOS(.v13),
    ],
    products: [
        .library(
          name: "BrightcoveCollector",
          targets: ["BrightcoveCollector"]),
    ],
    targets: [
      .binaryTarget(name: "BrightcoveCollector",
                    url: "https://storyteller.azureedge.net/sdk-ios/brightcove/1.3.0/StorytellerBrightcoveIntegration.zip",
                    checksum: "3b8c08571789d9d4d1e2fb13154008a4529a265fd24e3d6de8a89ab84d9c579d")
    ]
)
