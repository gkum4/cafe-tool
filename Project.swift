import ProjectDescription

let appTarget: Target = .target(
    name: "CafeTool",
    destinations: .iOS,
    product: .app,
    bundleId: "com.kumadev.CafeTool",
    sources: ["CafeTool/Sources/**"],
    resources: ["CafeTool/Resources/**"],
    dependencies: []
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
    targets: [appTarget, testsTarget]
)
