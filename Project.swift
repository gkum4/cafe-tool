import ProjectDescription

let appTarget: Target = .target(
    name: "CafeTool",
    destinations: .iOS,
    product: .app,
    bundleId: "com.kumadev.CafeTool",
    deploymentTargets: .iOS("17.0"),
    infoPlist: "CafeTool/Info.plist",
    sources: ["CafeTool/Sources/**"],
    resources: ["CafeTool/Resources/**"],
    dependencies: [
        .package(product: "FirebaseAppDistribution-Beta")
    ],
    environmentVariables: ["IDEPreferLogStreaming": .environmentVariable(value: "YES", isEnabled: true)]
)

let testsTarget: Target = .target(
    name: "CafeToolTests",
    destinations: .iOS,
    product: .unitTests,
    bundleId: "com.kumadev.CafeToolTests",
    infoPlist: .default,
    sources: ["CafeToolTests/**"],
    resources: [],
    dependencies: [.target(name: "CafeTool")]
)

let project = Project(
    name: "CafeTool",
    packages: [
        .remote(
            url: "https://github.com/firebase/firebase-ios-sdk.git",
            requirement: .exact(.init(10, 29, 0))
        )
    ],
    targets: [appTarget, testsTarget]
)
