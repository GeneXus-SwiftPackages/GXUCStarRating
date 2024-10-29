// swift-tools-version: 5.9
import PackageDescription

let package = Package(
	name: "GXUCStarRating",
	platforms: [.iOS("12.0"), .tvOS("12.0"), .visionOS("1.0")],
	products: [
		.library(
			name: "GXUCStarRating",
			targets: ["GXUCStarRatingWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "2.1.0")
	],
	targets: [
		.target(name: "GXUCStarRatingWrapper",
				dependencies: [
					"GXUCStarRating",
					.product(name: "GXCoreUI", package: "GXCoreUI", condition: .when(platforms: [.iOS, .tvOS, .visionOS]))
				],
				path: "Sources"),
		.binaryTarget(
			name: "GXUCStarRating",
			url: "https://pkgs.genexus.dev/iOS/releases/GXUCStarRating-2.1.0.xcframework.zip",
			checksum: "5f1616ea59dfadf06a8587f22e0c40191220edacdb2de657b27a73789e96afdc"
		)
	]
)