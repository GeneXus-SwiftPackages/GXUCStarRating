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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "2.2.0-beta.24")
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
			url: "https://pkgs.genexus.dev/iOS/beta/GXUCStarRating-2.2.0-beta.24.xcframework.zip",
			checksum: "d8e074dea9446f3b87a00515144c4ee3de9eb19892b742146e016397737e8378"
		)
	]
)