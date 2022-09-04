import Foundation

struct Config {
	var excludedUrls: String
	var linkHintCharacters: String
	var detectByCursorStyle: Bool
	var scrollSize: Int
	var scrollDuration: Int
	var smoothScroll: Bool
	var openTabUrl: String
	var modifier: String
	var transparentBindings: Bool
	var bindings: [KeyBinding]
}