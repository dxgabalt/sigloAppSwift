// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "SIGLOAPPSWIFT",
    platforms: [
        .macOS(.v12), .iOS(.v15)
    ],
    products: [
        .executable(name: "SIGLOAPPSWIFT", targets: ["SIGLOAPPSWIFT"])
    ],
    dependencies: [
        // Añade aquí dependencias si las necesitas
    ],
    targets: [
        .executableTarget(
            name: "SIGLOAPPSWIFT",
            dependencies: [],
            .executableTarget(
        name: "SIGLOAPPSWIFT",
        dependencies: ["Alamofire"]
    ),
        ),
        .testTarget(
            name: "SIGLOAPPSWIFTTests",
            dependencies: ["SIGLOAPPSWIFT"],
            .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.6.4")
        )
    ]
)
