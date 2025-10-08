// swift-tools-version: 6.2
import PackageDescription

let package = Package(
    name: "SpectreConsoleSwift",
    
    platforms: [
        .macOS(.v12)
    ],
    
    products: [
        .executable(
            name: "SpectreConsoleSwift",
            targets: ["SpectreConsoleSwift"]
        )
    ],
    
    targets: [
        .binaryTarget(
            name: "SpectreConsoleKit",
            path: "../../dn/generated/SpectreConsoleKit.xcframework"
        ),
        
        .executableTarget(
            name: "SpectreConsoleSwift",
            dependencies: ["SpectreConsoleKit"]
        )
    ]
)
