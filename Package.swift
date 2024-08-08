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
                    url: "https://storyteller.azureedge.net/sdk-ios/brightcove/1.0.0/BrightcoveCollector.zip",
                    checksum: "9a0cee0119bc463227d9e7b3b265f546d035affb11b91ac5bfa03bbbeb680b4e")
    ]
)
