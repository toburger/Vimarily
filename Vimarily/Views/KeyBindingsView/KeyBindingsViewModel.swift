import Foundation

class KeyBindingsViewModel: ObservableObject {
	@Published var actionBindings: [UserDefaults.BindingKeys : [String]]!

	init() {
		populate()
	}

	func populate() {
		actionBindings = [:]
		UserDefaults.BindingKeys.allCases.forEach { actionKey in
			actionBindings[actionKey] = UserDefaults.INSTANCE.stringArray(forKey: actionKey.rawValue)
		}
	}

	func save() {
		actionBindings.forEach { actionKey, keyBindings in
			UserDefaults.INSTANCE.set(keyBindings, forKey: actionKey.rawValue)
		}
	}

	func reset() {
		UserDefaults.INSTANCE.resetKeyBindings()
		populate()
	}
}
