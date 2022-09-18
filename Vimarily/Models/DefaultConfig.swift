import Foundation

// swiftlint:disable identifier_name
var DefaultConfig: Config = Config(
	excludedUrls: "",
	linkHintCharacters: "asdfghjklzxcvbnm",
	detectByCursorStyle: false,
	scrollSize: 150,
	scrollDuration: 25,
	smoothScroll: true,
	openTabUrl: "https://google.com",
	modifier: "",
	transparentBindings: true,
	bindings: [
		KeyBinding(name: "Hint Toggle", id: "hintToggle", shortcut: "f"),
		KeyBinding(name: "New Tab Hint Toggle", id: "newTabHintToggle", shortcut: "shift+f"),
		KeyBinding(name: "Scroll Up", id: "scrollUp", shortcut: "k"),
		KeyBinding(name: "Scroll Down", id: "scrollDown", shortcut: "j"),
		KeyBinding(name: "Scroll Left", id: "scrollLeft", shortcut: "h"),
		KeyBinding(name: "Scroll Right", id: "scrollRight", shortcut: "l"),
		KeyBinding(name: "Scroll Up Half Page", id: "scrollUpHalfPage", shortcut: "u"),
		KeyBinding(name: "Scroll Down Half Page", id: "scrollDownHalfPage", shortcut: "d"),
		KeyBinding(name: "Go To Page Top", id: "goToPageTop", shortcut: "g g"),
		KeyBinding(name: "Go To Page Bottom", id: "goToPageBottom", shortcut: "shift+g"),
		KeyBinding(name: "Go To First Input", id: "goToFirstInput", shortcut: "g i"),
		KeyBinding(name: "Go Back", id: "goBack", shortcut: "shift+j"),
		KeyBinding(name: "Go Forward", id: "goForward", shortcut: "shift+k"),
		KeyBinding(name: "Reload", id: "reload", shortcut: "r"),
		KeyBinding(name: "Next Tab", id: "tabForward", shortcut: "w"),
		KeyBinding(name: "Previous Tab", id: "tabBack", shortcut: "q"),
		KeyBinding(name: "Close Tab", id: "closeTab", shortcut: "x"),
		KeyBinding(name: "New Tab", id: "openTab", shortcut: "t"),
		KeyBinding(name: "Duplicate Tab", id: "duplicateTab", shortcut: "y t"),
		KeyBinding(name: "Copy URL", id: "copyUrl", shortcut: "y y")
	]
)
