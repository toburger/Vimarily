import Foundation
import SwiftUI
import Combine

struct ExtensionConfigView: View {
	@ObservedObject private var viewModel: ExtensionConfigViewModel
	@State var isScrollSizeValid = true
	@State var isScrollDurationValid = true

	init(viewModel: ExtensionConfigViewModel) {
		self.viewModel = viewModel
	}

	var body: some View {
		Form {
			ScrollView {
				VStack(alignment: .leading, spacing: 16) {
					Section(header: Text("Scroll").font(.title)) {
						TextField("Scroll Size", text: Binding(
							get: { String(viewModel.config.scrollSize) },
							set: {
								guard let parsedValue = Int($0) else {
									self.isScrollSizeValid = false
									return
								}
								self.isScrollSizeValid = true
								viewModel.config.scrollSize = parsedValue
							}
						))
						ErrorText(text: "Invalid Scroll Size - Must be a Number", condition: !isScrollSizeValid)

						TextField("Scroll Duration", text: Binding(
							get: { String(viewModel.config.scrollDuration) },
							set: {
								guard let parsedValue = Int($0) else {
									self.isScrollDurationValid = false
									return
								}
								self.isScrollDurationValid = true
								viewModel.config.scrollDuration = parsedValue
							}
						))
						ErrorText(text: "Invalid Scroll Duration - Must be a Number", condition: !isScrollDurationValid)

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
						.padding(EdgeInsets(top: 0, leading: 0, bottom: 4, trailing: 0))

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
