// swift-tools-version: 5.5

// WARNING:
// This file is automatically generated.
// Do not edit it by hand because the contents will be replaced.

import PackageDescription
import AppleProductTypes

let package = Package(
    name: "SFSwiftUI02-2",
    platforms: [
        .iOS("15.2")
    ],
    products: [
        .iOSApplication(
            name: "SFSwiftUI02-2",
            targets: ["AppModule"],
            bundleIdentifier: "jp.co.wdkk.SFSwiftUI02-2e",
            teamIdentifier: "N6DRT9P33S",
            displayVersion: "1.0",
            bundleVersion: "1",
            iconAssetName: "AppIcon",
            accentColorAssetName: "AccentColor",
            supportedDeviceFamilies: [
                .pad,
                .phone
            ],
            supportedInterfaceOrientations: [
                .portrait,
                .landscapeRight,
                .landscapeLeft,
                .portraitUpsideDown(.when(deviceFamilies: [.pad]))
            ]
        )
    ],
    targets: [
        .executableTarget(
            name: "AppModule",
            path: "."
        )
    ]
)