import SwiftUI

@main
struct Vimarily: App {
	init() {
		if UserDefaults.INSTANCE.bool(forKey: .generalKey(.firstRunGone)) == false {
			// This will be executed on first run
			UserDefaults.INSTANCE.set(true, forKey: .generalKey(.firstRunGone))

			// Set preferences to their defaults
			UserDefaults.INSTANCE.resetGeneralSettings()
			UserDefaults.INSTANCE.resetKeyBindings()
		}
	}

	var body: some Scene {
		WindowGroup {
			GeneralView(viewModel: GeneralViewModel())
				.frame(
					minWidth: 512,
					idealWidth: 512,
					minHeight: 512,
					idealHeight: 512,
					alignment: .center
				)
				.padding()
		}
	}
}
