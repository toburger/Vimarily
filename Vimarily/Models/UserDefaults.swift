import Foundation

fileprivate let defaults: UserDefaults = UserDefaults.standard

extension UserDefaults {
	enum Key: String {
		case firstRunGone = "firstRunGone"

		case excludedUrls = "excludedUrls"
		case linkHintCharacters = "linkHintCharacters"
		case detectByCursorStyle = "detectByCursorStyle"
		case scrollSize = "scrollSize"
		case scrollDuration = "scrollDuration"
		case smoothScroll = "smoothScroll"
		case openTabUrl = "openTabUrl"
		case modifier = "modifier"
		case transparentBindings = "transparentBindings"

		// Bindings
		case hintToggleBinding = "hintToggle"
		case newTabHintToggleBinding = "newTabHintToggle"
		case scrollUpBinding = "scrollUp"
		case scrollDownBinding = "scrollDown"
		case scrollLeftBinding = "scrollLeft"
		case scrollRightBinding = "scrollRight"
		case scrollUpHalfPageBinding = "scrollUpHalfPage"
		case scrollDownHalfPageBinding = "scrollDownHalfPage"
		case goToPageTopBinding = "goToPageTop"
		case goToPageBottomBinding = "goToPageBottom"
		case goToFirstInputBinding = "goToFirstInput"
		case goBackBinding = "goBack"
		case goForwardBinding = "goForward"
		case reloadBinding = "reload"
		case tabForwardBinding = "tabForward"
		case tabBackBinding = "tabBack"
		case closeTabBinding = "closeTab"
		case openTabBinding = "openTab"
		case duplicateTabBinding = "duplicateTab"
		case copyUrlBinding = "copyUrl"
	}

	static var INSTANCE: UserDefaults {
		get {
			defaults
		}
	}

	func set<T>(_ value: T, forKey key: Key) {
		set(value, forKey: key.rawValue)
	}

	func bool(forKey key: Key) -> Bool {
		bool(forKey: key.rawValue)
	}

	func string(forKey key: Key) -> String? {
		string(forKey: key.rawValue)
	}

	func integer(forKey key: Key) -> Int? {
		integer(forKey: key.rawValue)
	}

	func url(forKey key: Key) -> URL? {
		url(forKey: key.rawValue)
	}

	func stringArray(forKey key: Key) -> [String]? {
		stringArray(forKey: key.rawValue)
	}

	func tempGetSingleBinding(forKey key: Key) -> String? {
		stringArray(forKey: key)?[0]
	}

	func reset() {
		set([""], forKey: .excludedUrls)
		set("asdfghjklzxcvbnm", forKey: .linkHintCharacters)
		set(false, forKey: .detectByCursorStyle)
		set(150, forKey: .scrollSize)
		set(25, forKey: .scrollDuration)
		set(true, forKey: .smoothScroll)
		set("https://google.com", forKey: .openTabUrl)
		set("", forKey: .modifier)
		set(true, forKey: .transparentBindings)

		// Bindings
		set(["f"], forKey: .hintToggleBinding)
		set(["shift+f"], forKey: .newTabHintToggleBinding)
		set(["k"], forKey: .scrollUpBinding)
		set(["j"], forKey: .scrollDownBinding)
		set(["h"], forKey: .scrollLeftBinding)
		set(["l"], forKey: .scrollRightBinding)
		set(["u"], forKey: .scrollUpHalfPageBinding)
		set(["d"], forKey: .scrollDownHalfPageBinding)
		set(["g g"], forKey: .goToPageTopBinding)
		set(["shift+g"], forKey: .goToPageBottomBinding)
		set(["g i"], forKey: .goToFirstInputBinding)
		set(["shift+j"], forKey: .goBackBinding)
		set(["shift+k"], forKey: .goForwardBinding)
		set(["r"], forKey: .reloadBinding)
		set(["w"], forKey: .tabBackBinding)
		set(["q"], forKey: .tabForwardBinding)
		set(["x"], forKey: .closeTabBinding)
		set(["t"], forKey: .openTabBinding)
		set(["y t"], forKey: .duplicateTabBinding)
		set(["y y"], forKey: .copyUrlBinding)
	}
}