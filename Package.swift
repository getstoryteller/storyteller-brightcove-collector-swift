// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "storyteller-brightcove-integration",
    platforms: [
      .iOS(.v13),
    ],
    products: [
        .library(
          name: "StorytellerBrightcoveIntegration",
          targets: ["StorytellerBrightcoveTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/getstoryteller/storyteller-sdk-swift-package", .upToNextMajor(from: "10.8.0")),
    ],
    targets: [
      .binaryTarget(name: "StorytellerBrightcoveIntegration",
                    url: "https://storyteller.azureedge.net/sdk-ios/brightcove/1.3.0/StorytellerBrightcoveIntegration.zip",
                    checksum: "3b8c08571789d9d4d1e2fb13154008a4529a265fd24e3d6de8a89ab84d9c579d"),
      .target(
          name: "StorytellerBrightcoveTarget",
          dependencies: [
              .target(name: "StorytellerBrightcoveIntegration"),
              .product(name: "StorytellerSDK", package: "storyteller-sdk-swift-package"),
          ],
          path: "Sources"
      )
    ]
)
