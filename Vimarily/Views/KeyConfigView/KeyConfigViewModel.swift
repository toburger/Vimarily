import Foundation

class KeyConfigViewModel: ObservableObject {
	// TODO load from config file or something
	// TODO support multiple shortcuts
	@Published var actions = [
		KeyBinding(name: "Copy URL", id: "copyURL", shortcut: "y y"),
		KeyBinding(name: "Next Tab", id: "nextTab", shortcut: "w"),
		KeyBinding(name: "Previous Tab", id: "previousTab", shortcut: "q"),
		KeyBinding(name: "Copy URL", id: "copyURL", shortcut: "y y"),
		KeyBinding(name: "Next Tab", id: "nextTab", shortcut: "w"),
		KeyBinding(name: "Previous Tab", id: "previousTab", shortcut: "q"),
		KeyBinding(name: "Copy URL", id: "copyURL", shortcut: "y y"),
		KeyBinding(name: "Next Tab", id: "nextTab", shortcut: "w"),
		KeyBinding(name: "Previous Tab", id: "previousTab", shortcut: "q"),
		KeyBinding(name: "Copy URL", id: "copyURL", shortcut: "y y"),
		KeyBinding(name: "Next Tab", id: "nextTab", shortcut: "w"),
		KeyBinding(name: "Previous Tab", id: "previousTab", shortcut: "q"),
		KeyBinding(name: "Copy URL", id: "copyURL", shortcut: "y y"),
		KeyBinding(name: "Next Tab", id: "nextTab", shortcut: "w"),
		KeyBinding(name: "Previous Tab", id: "previousTab", shortcut: "q"),
		KeyBinding(name: "Copy URL", id: "copyURL", shortcut: "y y"),
		KeyBinding(name: "Next Tab", id: "nextTab", shortcut: "w"),
		KeyBinding(name: "Previous Tab", id: "previousTab", shortcut: "q"),
		KeyBinding(name: "Copy URL", id: "copyURL", shortcut: "y y"),
		KeyBinding(name: "Next Tab", id: "nextTab", shortcut: "w"),
		KeyBinding(name: "Previous Tab", id: "previousTab", shortcut: "q"),
	]

	func save() {
		// TODO
		print("TODO save")
	}

	func undo() {
		// TODO
		print("TODO undo")
	}
}
