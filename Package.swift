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
                    url: "https://storyteller.azureedge.net/sdk-ios/brightcove/1.1.0/BrightcoveCollector.zip",
                    checksum: "1fcef13a993856de02bdf825442827df44048f47a5e8a88af181d0c009d5bb98")
    ]
)
