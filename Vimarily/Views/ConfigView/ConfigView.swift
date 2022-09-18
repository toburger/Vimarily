import SwiftUI
import Cocoa
import OSLog

struct ConfigView: View {
	@ObservedObject var viewModel: ConfigViewModel

	init(viewModel: ConfigViewModel) {
		self.viewModel = viewModel
		viewModel.fetchExtensionStatus()
	}

	var body: some View {
		TabView {
			SafariConfigView(viewModel: viewModel)
				.tabItem {
					Label("General", systemImage: "safari")
				}

			ExtensionConfigView(viewModel: ExtensionConfigViewModel())
				.tabItem {
					Label("Settings", systemImage: "puzzlepiece.extension")
				}

			KeyConfigView(viewModel: KeyConfigViewModel())
				.tabItem {
					Label("Key Bindings", systemImage: "keyboard")
				}
		}
	}

	private struct SafariConfigView: View {
		@ObservedObject private var viewModel: ConfigViewModel
		let appVersion = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String

		init(viewModel: ConfigViewModel) {
			self.viewModel = viewModel
		}

		var body: some View {
			VStack(alignment: .center) {
				Image("Logo").resizable().scaledToFit().frame(maxHeight: 256).aspectRatio(contentMode: .fit).padding()
				VStack(alignment: .center, spacing: 16) {
					Text("Vimarily").font(.title)
					Text("Status: " + viewModel.extensionStatus).font(.title2)
					Button(action: viewModel.fetchExtensionStatus) {
						Text("Refresh Extension Status")
					}
					Button(action: viewModel.openSafariExtensionPreferencesClick) {
						Text("Open Safari Extension Preferences")
					}
					Text("Version: " + (appVersion ?? "Unknown")).font(.footnote)
				}
					.padding()
			}
				.padding()
		}
	}
}

struct ConfigView_Previews: PreviewProvider {
	static var previews: some View {
		ConfigView(viewModel: ConfigViewModel())
	}
}
