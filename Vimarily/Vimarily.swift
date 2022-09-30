import SwiftUI

@main
struct Vimarily: App {

	init() {
		if UserDefaults.INSTANCE.bool(forKey: .firstRunGone) == false {
			// This will be executed on first run
			UserDefaults.INSTANCE.set(true, forKey: .firstRunGone)

			// Set preferences to their defaults
			UserDefaults.INSTANCE.reset()
		}
	}

	var body: some Scene {
		WindowGroup {
			ConfigView(viewModel: ConfigViewModel())
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
