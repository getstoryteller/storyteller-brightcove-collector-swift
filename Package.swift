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
                    url: "https://storyteller.azureedge.net/sdk-ios/brightcove/1.2.0/StorytellerBrightcoveIntegration.zip",
                    checksum: "f28a47d50aaf2f81111b0fc9d2340a18709b88818fa718029a27e56b201a1104")
    ]
)
