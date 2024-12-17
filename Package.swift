// swift-tools-version: 5.9
import PackageDescription

let package = Package(
	name: "GXUCStarRating",
	platforms: [.iOS("13.0"), .tvOS("13.0"), .visionOS("1.0")],
	products: [
		.library(
			name: "GXUCStarRating",
			targets: ["GXUCStarRatingWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "2.2.0-beta.25")
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
			url: "https://pkgs.genexus.dev/iOS/beta/GXUCStarRating-2.2.0-beta.25.xcframework.zip",
			checksum: "ed7a81e7ab75b5ccec4de00750f765b9865ce1397f326babbdf71229d8755047"
		)
	]
)