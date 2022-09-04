import Foundation

// TODO support multiple shortcuts
struct KeyBinding: Hashable {
	var name: String
	var id: String
	private var shortcuts: [String] = []

	init(name: String, id: String, shortcut: String) {
		self.name = name
		self.id = id
		shortcuts.append(shortcut)
	}

	// TODO temporary
	func getShortcut() -> String {
		shortcuts[0]
	}

	// TODO temporary

	mutating func setShortcut(value: String) {
		shortcuts[0] = value
	}
}
