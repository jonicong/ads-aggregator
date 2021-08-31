// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ads-aggregator",
    products: [
        .library(
            name: "ads-aggregator",
            targets: ["ads-aggregator"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "ads-aggregator",
            dependencies: ["GoogleMobileAds", "MoPubAdapter", "MoPubSDK", "OMSDK_Mopub", "OpenWrapHandlerDFP", "OpenWrapSDK"]),
        .binaryTarget(
            name: "GoogleMobileAds",
            path: "artifacts/GoogleMobileAds.xcframework"
        ),
        .binaryTarget(
            name: "MoPubAdapter",
            path: "artifacts/MoPubAdapter.xcframework"
        ),
        .binaryTarget(
            name: "MoPubSDK",
            path: "artifacts/MoPubSDK.xcframework"
        ),
        .binaryTarget(
            name: "OMSDK_Mopub",
            path: "artifacts/OMSDK_Mopub.xcframework"
        ),
        .binaryTarget(
            name: "OpenWrapHandlerDFP",
            path: "artifacts/OpenWrapHandlerDFP.xcframework"
        ),
        .binaryTarget(
            name: "OpenWrapSDK",
            path: "artifacts/OpenWrapSDK.xcframework"
        ),
        .testTarget(
            name: "ads-aggregatorTests",
            dependencies: ["ads-aggregator"]),
    ]
)
