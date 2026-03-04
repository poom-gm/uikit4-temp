// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "AmityUIKit",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "AmityUIKit4",          targets: ["AmityUIKit4Wrapper"]),
        .library(name: "AmityUIKit",           targets: ["AmityUIKitWrapper"]),
        .library(name: "AmityUIKitLiveStream", targets: ["AmityUIKitLiveStreamWrapper"]),
    ],
    targets: [

        // ── Wrapper source targets (declare transitive deps for SPM) ───
        .target(
            name: "AmityUIKit4Wrapper",
            dependencies: [
                "AmityUIKit4",
                "AmitySDK", "Realm", "RealmSwift",
                "AmityVideoPlayerKit", "AmityLiveKit",
                "LiveKitWebRTC", "MobileVLCKit",
            ],
            path: "Sources/AmityUIKit4Wrapper"
        ),
        .target(
            name: "AmityUIKitWrapper",
            dependencies: [
                "AmityUIKit",
                "AmitySDK", "Realm", "RealmSwift",
                "AmityVideoPlayerKit", "MobileVLCKit",
            ],
            path: "Sources/AmityUIKitWrapper"
        ),
        .target(
            name: "AmityUIKitLiveStreamWrapper",
            dependencies: [
                "AmityUIKitLiveStream",
                "AmitySDK", "Realm", "RealmSwift",
                "AmityLiveVideoBroadcastKit", "AmityVideoPlayerKit",
                "AmityLiveKit", "LiveKitWebRTC", "MobileVLCKit",
            ],
            path: "Sources/AmityUIKitLiveStreamWrapper"
        ),

        // ── Built from source ──────────────────────────────────────────
        .binaryTarget(name: "AmityUIKit4",
            url: "https://github.com/poom-gm/uikit4-temp/releases/download/1.0.0/AmityUIKit4.xcframework.zip",
            checksum: "d83e906688a18e0d7aabd57d5872933f09ba44fbe8ccf8290dc3797a4e1d985c"),
        .binaryTarget(name: "AmityUIKit",
            url: "https://github.com/poom-gm/uikit4-temp/releases/download/1.0.0/AmityUIKit.xcframework.zip",
            checksum: "c43059bbbf4ff907ef19f2edbb1ca0b6dd846797457f5c0981197ea51978d1f3"),
        .binaryTarget(name: "AmityUIKitLiveStream",
            url: "https://github.com/poom-gm/uikit4-temp/releases/download/1.0.0/AmityUIKitLiveStream.xcframework.zip",
            checksum: "a118311a6d2b052385c7562ea13f4db070dac0777a9bc854d2da4deee8d70813"),

        // ── Amity SDK dependencies ─────────────────────────────────────
        .binaryTarget(name: "AmitySDK",
            url: "https://github.com/poom-gm/uikit4-temp/releases/download/1.0.0/AmitySDK.xcframework.zip",
            checksum: "fac37a816d6664a66dfcf8c1e28a0f99e23d9489ef02204c3663cb124acc8b69"),
        .binaryTarget(name: "Realm",
            url: "https://github.com/poom-gm/uikit4-temp/releases/download/1.0.0/Realm.xcframework.zip",
            checksum: "182e173759f078d52ba847277ae519ed4888733eed905ff51186a58c8095da99"),
        .binaryTarget(name: "RealmSwift",
            url: "https://github.com/poom-gm/uikit4-temp/releases/download/1.0.0/RealmSwift.xcframework.zip",
            checksum: "6c4d71337b9c143df37c1af069befc0ebfa7cbc706c914f4a012f2b31d4e1536"),
        .binaryTarget(name: "AmityLiveVideoBroadcastKit",
            url: "https://github.com/poom-gm/uikit4-temp/releases/download/1.0.0/AmityLiveVideoBroadcastKit.xcframework.zip",
            checksum: "537234afd33b39b635365f157b343ef792c4c7ba2960577ce0a1ff9e99760df9"),
        .binaryTarget(name: "AmityVideoPlayerKit",
            url: "https://github.com/poom-gm/uikit4-temp/releases/download/1.0.0/AmityVideoPlayerKit.xcframework.zip",
            checksum: "b1b88ad23b91d6b92adcf0a273f6421e27339741de4477d4c0f932e51b645bec"),
        .binaryTarget(name: "AmityLiveKit",
            url: "https://github.com/poom-gm/uikit4-temp/releases/download/1.0.0/AmityLiveKit.xcframework.zip",
            checksum: "172ac30d4a73867fa8a6bea70954ddda5ff3810ec4b197d0d216bf82601fa475"),
        .binaryTarget(name: "LiveKitWebRTC",
            url: "https://github.com/poom-gm/uikit4-temp/releases/download/1.0.0/LiveKitWebRTC.xcframework.zip",
            checksum: "d0f66517259635ca3e125735255934581c624925c069b8ad1fa89782196d2d07"),
        .binaryTarget(name: "MobileVLCKit",
            url: "https://github.com/poom-gm/uikit4-temp/releases/download/1.0.0/MobileVLCKit.xcframework.zip",
            checksum: "4d2c943e7221db424a2128249c007c5f7642c49adc70f49525502a1ee57423e7"),
    ]
)
