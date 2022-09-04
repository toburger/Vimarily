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
			AdvancedConfigurationView(viewModel: viewModel)
				.tabItem {
					Label("Advanced Configuration", systemImage: "brain.head.profile")
				}
		}
			.frame(width: 400, height: 200, alignment: .top)
	}

	private struct ExtensionSettingsView: View {
		@ObservedObject private var viewModel: ConfigViewModel

		init(viewModel: ConfigViewModel) {
			self.viewModel = viewModel
		}

		var body: some View {
			VStack(alignment: .center) {
				Text("Extension Status: " + viewModel.extensionStatus).padding()
				Button(action: viewModel.fetchExtensionStatus) {
					Label("Refresh Extension Status", systemImage: "puzzlepiece.extension")
				}
				Button(action: viewModel.openSafariExtensionPreferencesClick) {
					Label("Open Safari Extension Preferences", systemImage: "safari")
				}
			}
				.padding()
		}
	}

	private struct AdvancedConfigurationView: View {
		@ObservedObject private var viewModel: ConfigViewModel

		init(viewModel: ConfigViewModel) {
			self.viewModel = viewModel
		}

		var body: some View {
			VStack(alignment: .center) {
				Button(action: viewModel.dispatchOpenSettings) {
					Label("Open Configuration File", systemImage: "pencil")
				}
				Button(action: viewModel.dispatchResetSettings) {
					Label("Reset Configuration File", systemImage: "gobackward")
				}
			}
				.padding()
		}
	}
}