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
			url: "https://pkgs.genexus.dev/iOS/beta/GXUCStarRating-1.0.0-beta+20230309092859.xcframework.zip",
			checksum: "bfc2f9f01f6873e7f9a576fabb8c35049b9fcbc20f6aedab91e2c79b7f4c8f00"
		)
	]
)