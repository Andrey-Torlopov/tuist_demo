import ProjectDescription

let target = Target(
    name: "TuistDemo",
    platform: .iOS,
    product: .app,
    bundleId: "-.TuistDemo-15-01",
    deploymentTarget: .iOS(targetVersion: "13.0", devices: .iphone),
    infoPlist: "TuistDemo/Info.plist",
    sources: ["TuistDemo/**"],
    resources: [
        "TuistDemo/**",
        "TuistDemo/**/*.storyboard"
    ],
    dependencies: [
        //        .project(target: "Chat", path: "Features/Chat")
    ],
    settings: Settings.settings(configurations: [
        .debug(
            name: "Debug",
            xcconfig: "Configuration/TuistDemoProject.xcconfig"
        )
//        .release(
//            name: "Release",
//            xcconfig: "Configuration/TuistDemoProject.xcconfig"
//        )
    ])
)

let project = Project(
    name: "TuistDemo",
    organizationName: "-",
    targets: [target]
)
