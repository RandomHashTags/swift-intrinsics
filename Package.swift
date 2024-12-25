// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-intrinsics",
    products: [
        .library(
            name: "SwiftIntrinsics",
            targets: ["SwiftIntrinsics"]
        ),
        .plugin(
            name: "SwiftIntrinsicsPlugin",
            targets: ["SwiftIntrinsicsPlugin"]
        )
    ],
    targets: [
        .plugin(
            name: "SwiftIntrinsicsPlugin",
            capability: .buildTool()
        ),
        
        .target(
            name: "SwiftIntrinsics",
            path: "Sources/swift-intrinsics"
        ),

        .target(
            name: "SwiftIntrinsics_x86",
            dependencies: ["SwiftIntrinsics"]
        ),
        
        .testTarget(
            name: "SwiftIntrinsicsTests",
            dependencies: ["SwiftIntrinsics"]
        ),
        .testTarget(
            name: "SwiftIntrinsics_x86Tests",
            dependencies: ["SwiftIntrinsics_x86"],
            swiftSettings: []
        ),
    ]
)
