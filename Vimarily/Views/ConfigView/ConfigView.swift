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
			ExtensionSettingsView(viewModel: viewModel)
				.tabItem {
					Label("Extension Settings", systemImage: "puzzlepiece.extension")
				}
			KeyConfigView(viewModel: KeyConfigViewModel())
				.tabItem {
					Label("Key Configuration", systemImage: "keyboard")
				}
		}
	}

	private struct ExtensionSettingsView: View {
		@ObservedObject private var viewModel: ConfigViewModel

		init(viewModel: ConfigViewModel) {
			self.viewModel = viewModel
		}

		var body: some View {
			VStack(alignment: .center) {
				Image("Logo").resizable().scaledToFit().frame(maxHeight: 256).aspectRatio(contentMode: .fit).padding()
				GeneralConfiguration(viewModel: viewModel).padding()
				AdvancedConfiguration(viewModel: viewModel).padding()
			}.padding()
		}

		private struct GeneralConfiguration: View {
			@ObservedObject private var viewModel: ConfigViewModel

			init(viewModel: ConfigViewModel) {
				self.viewModel = viewModel
			}

			var body: some View {
				VStack(alignment: .center) {
					Text("Extension Status: " + viewModel.extensionStatus)
					Button(action: viewModel.fetchExtensionStatus) {
						Label("Refresh Extension Status", systemImage: "puzzlepiece.extension")
					}
					Button(action: viewModel.openSafariExtensionPreferencesClick) {
						Label("Open Safari Extension Preferences", systemImage: "safari")
					}
				}
			}
		}

		private struct AdvancedConfiguration: View {
			@ObservedObject private var viewModel: ConfigViewModel

			init(viewModel: ConfigViewModel) {
				self.viewModel = viewModel
			}

			var body: some View {
				VStack(alignment: .center) {
					Text("Advanced Settings").font(.title2)
					Button(action: viewModel.dispatchOpenSettings) {
						Label("Open Configuration File", systemImage: "square.and.pencil")
					}
					Button(action: viewModel.dispatchResetSettings) {
						Label("Reset Configuration File", systemImage: "gobackward")
					}
				}
			}
		}
	}
}