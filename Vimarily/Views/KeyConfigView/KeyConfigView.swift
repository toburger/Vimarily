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
					ForEach(DefaultConfig.bindings, id: \.self) { item in
						KeyConfig(item: item)
					}
						.listRowInsets(EdgeInsets())
				}
			}
			ReloadReminder()
		}
			.padding(EdgeInsets(top: 0, leading: 8, bottom: 6, trailing: 8))
	}

	private struct KeyConfig: View {
		@State var shortcut: String

		private var item: KeyBinding

		init(item: KeyBinding) {
			self.item = item
			shortcut = item.getShortcut()
		}

		var body: some View {
			TextField(text: $shortcut, label: { Text(item.name) })
		}
	}
}

struct KeyConfigView_Previews: PreviewProvider {
    static var previews: some View {
        KeyConfigView(viewModel: KeyConfigViewModel())
    }
}
