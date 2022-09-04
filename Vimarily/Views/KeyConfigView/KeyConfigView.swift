import Foundation
import SwiftUI

struct KeyConfigView: View {
	@ObservedObject var viewModel: KeyConfigViewModel

	init(viewModel: KeyConfigViewModel) {
		self.viewModel = viewModel
	}

	var body: some View {
		Form {
			ScrollView {
				VStack(alignment: .center) {
					ForEach(viewModel.actions, id: \.self) { item in
						KeyConfig(item: item)
					}
						.listRowInsets(EdgeInsets())
				}
			}
			Spacer()
			HStack {
				Button(action: viewModel.undo, label: { Text("Undo Changes") })
				Button(action: viewModel.save, label: { Text("Save Changes") })
			}
				.frame(maxWidth: .infinity)
		}
			.padding()
	}

	private struct KeyConfig: View {
		@State var shortcut: String

		private var item: KeyBinding

		init(item: KeyBinding) {
			self.item = item
			shortcut = item.shortcut
		}

		var body: some View {
			TextField(text: $shortcut, label: { Text(item.name) })
		}
	}
}
