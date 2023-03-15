// swift-tools-version: 5.7
import PackageDescription

let package = Package(
	name: "GXUCStarRating",
	platforms: [.iOS("12.0"), .tvOS("12.0")],
	products: [
		.library(
			name: "GXUCStarRating",
			targets: ["GXUCStarRatingWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", branch: "beta")
	],
	targets: [
		.target(name: "GXUCStarRatingWrapper",
				dependencies: [
					"GXUCStarRating",
					.product(name: "GXCoreUI", package: "GXCoreUI", condition: .when(platforms: [.iOS, .tvOS]))
				],
				path: "Sources"),
		.binaryTarget(
			name: "GXUCStarRating",
			url: "https://pkgs.genexus.dev/iOS/beta/GXUCStarRating-1.0.0-beta+20230315182831.xcframework.zip",
			checksum: "f18e607f7792404b536133571c1ae9ab80cf19d59a176c25fad5ac746e2a05e6"
		)
	]
)