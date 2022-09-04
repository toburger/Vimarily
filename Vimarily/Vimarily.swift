import SwiftUI

@main
struct Vimarily: App {
	var body: some Scene {
		WindowGroup {
			ConfigView(viewModel: ConfigViewModel()).padding()
		}
	}
}
