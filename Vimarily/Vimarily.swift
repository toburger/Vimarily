import SwiftUI

@main
struct Vimarily: App {
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
