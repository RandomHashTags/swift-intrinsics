// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
//import CompilerPluginSupport

var x86Settings:[SwiftSetting]
var armSettings:[SwiftSetting]
var riscv64Settings:[SwiftSetting]

#if arch(x86_64)
x86Settings = [
    .define("AES", .when(platforms: [.custom("wtf")])),
    .define("AVX", .when(platforms: [.custom("wtf")])),
    .define("AVX2", .when(platforms: [.custom("wtf")])),
    .define("AVX512", .when(platforms: [.custom("wtf")])),
    .define("MMX", .when(platforms: [.custom("wtf")])),
    .define("SHA", .when(platforms: [.custom("wtf")])),
    .define("SM3", .when(platforms: [.custom("wtf")])),
    .define("SM4", .when(platforms: [.custom("wtf")])),
    .define("SSE", .when(platforms: [.custom("wtf")])),
    .define("SSE2", .when(platforms: [.custom("wtf")])),
    .define("SSE3", .when(platforms: [.custom("wtf")])),
    .define("SSE4_1", .when(platforms: [.custom("wtf")])),
    .define("SSE4_2", .when(platforms: [.custom("wtf")])),
    .define("SSSE3", .when(platforms: [.custom("wtf")]))
]
armSettings = []
riscv64Settings = []

#elseif arch(arm)
x86Settings = []
armSwiftSettings = []
riscv64Settings = []

#elseif arch(riscv64)
x86Settings = []
armSwiftSettings = []
riscv64Settings = []

#else
x86Settings = []
armSwiftSettings = []
riscv64Settings = []

#endif

let package = Package(
    name: "swift-intrinsics",
    products: [
        .library(
            name: "SwiftIntrinsics",
            targets: ["SwiftIntrinsics"]),
    ],
    targets: [
        .target(
            name: "SwiftIntrinsics",
            path: "Sources/swift-intrinsics"
        ),

        .target(
            name: "SwiftIntrinsics_x86",
            dependencies: ["SwiftIntrinsics"],
            swiftSettings: x86Settings
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
