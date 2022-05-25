// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MomXML",
    products: [
        .library(
            name: "MomXML",
            targets: ["MomXML"]),
    ],
    dependencies: [
        .package(url: "https://github.com/drmohundro/SWXMLHash.git", from: "6.0.0")
    ],
    targets: [
        .target(
            name: "MomXML",
            dependencies: [
                "SWXMLHash"
            ],
            path: "Sources"),
        .testTarget(
            name: "MomXMLTests",
            dependencies: ["MomXML"],
            path: "Tests")
    ]
)
