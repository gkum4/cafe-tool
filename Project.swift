import ProjectDescription

let appTarget: Target = .target(
    name: "CafeTool",
    destinations: .iOS,
    product: .app,
    bundleId: "com.kumadev.CafeTool",
    sources: ["CafeTool/Sources/**"],
    resources: ["CafeTool/Resources/**"],
    dependencies: [],
    settings: .settings(
        configurations: [
            .debug(name: .debug, xcconfig: .relativeToManifest("./TuistConfig/CafeTool.xcconfig")),
            .release(name: .release, xcconfig: .relativeToManifest("./TuistConfig/CafeTool.xcconfig"))
        ],
        defaultSettings: .none
    )
)

let testsTarget: Target = .target(
    name: "CafeToolTests",
    destinations: .iOS,
    product: .unitTests,
    bundleId: "com.kumadev.CafeToolTests",
    infoPlist: .default,
    sources: ["CafeToolTests/**"],
    resources: [],
    dependencies: [.target(name: "CafeTool")],
    settings: .settings(
        configurations: [
            .debug(name: .debug, xcconfig: .relativeToManifest("./TuistConfig/CafeToolTests.xcconfig")),
            .release(name: .release, xcconfig: .relativeToManifest("./TuistConfig/CafeToolTests.xcconfig"))
        ],
        defaultSettings: .none
    )
)

let project = Project(
    name: "CafeTool",
    targets: [appTarget, testsTarget]
)
