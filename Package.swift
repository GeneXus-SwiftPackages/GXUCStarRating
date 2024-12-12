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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "2.2.0-rc.1")
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
			url: "https://pkgs.genexus.dev/iOS/preview/GXUCStarRating-2.2.0-rc.1.xcframework.zip",
			checksum: "9309bdd022a9131dcb1b398101f00d62b28e1625dc4540105bc6d5e6bd08a02a"
		)
	]
)