import ProjectDescription

let project = Project(
    name: "CollidingDeps",
    packages: [
        .package(path: .relativeToRoot("Projects/PetstoreKit"))
    ],
    targets: [
        .target(
            name: "CollidingDeps",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.CollidingDeps",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["CollidingDeps/Sources/**"],
            resources: ["CollidingDeps/Resources/**"],
            dependencies: [
                .external(name: "Get"),
                .package(product: "PetstoreKit"),
            ]
        ),
        .target(
            name: "CollidingDepsTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.CollidingDepsTests",
            infoPlist: .default,
            sources: ["CollidingDeps/Tests/**"],
            resources: [],
            dependencies: [.target(name: "CollidingDeps")]
        ),
    ]
)
