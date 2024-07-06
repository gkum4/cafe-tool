import ProjectDescription

let project = Project(
    name: "CafeTool",
    targets: [
        .target(
            name: "CafeTool",
            destinations: .iOS,
            product: .app,
            bundleId: "com.kumadev.CafeTool",
            sources: ["CafeTool/Sources/**"],
            resources: ["CafeTool/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "CafeToolTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.kumadev.CafeToolTests",
            infoPlist: .default,
            sources: ["CafeToolTests/**"],
            resources: [],
            dependencies: [.target(name: "CafeTool")]
        ),
    ]
)