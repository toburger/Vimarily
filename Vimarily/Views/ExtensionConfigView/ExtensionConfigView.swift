import Foundation
import SwiftUI
import Combine

struct ExtensionConfigView: View {
	@ObservedObject private var viewModel: ExtensionConfigViewModel

	init(viewModel: ExtensionConfigViewModel) {
		self.viewModel = viewModel
	}

	var body: some View {
		Form {
			ScrollView {
				VStack(alignment: .leading, spacing: 16) {
					Section(header: Text("Scroll").font(.title)) {
						TextField("Scroll Size", text: $viewModel.scrollSize)
						TextField("Scroll Duration", text: $viewModel.scrollDuration)
						Toggle(isOn: $viewModel.config.smoothScroll, label: { Text("Smooth Scroll") })
					}

					Divider()

					Section(header: Text("Keys").font(.title)) {
						TextField("Modifier", text: $viewModel.config.modifier)
						TextField("Link Hint Characters", text: $viewModel.config.linkHintCharacters)
						Toggle("Transparent Bindings", isOn: $viewModel.config.transparentBindings)
					}

					Divider()

					Section(header: Text("Miscellaneous").font(.title)) {
						TextField("Excluded URLs (Comma Separated)", text: $viewModel.config.excludedUrls)
						TextField("Open Tab URL", text: $viewModel.config.openTabUrl)
						Toggle("Detect by Cursor Style", isOn: $viewModel.config.detectByCursorStyle)
					}

					Divider()

					Section(header: Text("Advanced").font(.title)) {
						Button(action: viewModel.dispatchOpenSettings) {
							Text("Open Configuration File")
						}
						Button(action: viewModel.dispatchResetSettings) {
							Text("Reset Configuration File")
						}
					}
				}
			}
			ReloadReminder()
		}
			.padding(EdgeInsets(top: 0, leading: 8, bottom: 6, trailing: 8))
	}
}

struct ExtensionConfigView_Previews: PreviewProvider {
	static var previews: some View {
		ExtensionConfigView(viewModel: ExtensionConfigViewModel())
	}
}
