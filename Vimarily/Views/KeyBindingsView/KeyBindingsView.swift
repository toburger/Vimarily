import Foundation
import SwiftUI

struct KeyBindingsView: View {
	@ObservedObject var viewModel: KeyBindingsViewModel

	init(viewModel: KeyBindingsViewModel) {
		self.viewModel = viewModel
	}

	var body: some View {
		Form {
			ScrollView {
				VStack(alignment: .center) {
					ForEach(UserDefaults.BindingKeys.allCases, id: \.self) { key in
						BindingKeyConfig(key: key)
					}
						.listRowInsets(EdgeInsets())
				}
			}
			ReloadReminder()
			Button(action: {}, label: { Text("Save")}).buttonStyle(.borderedProminent).frame(maxWidth: .infinity, alignment: .center)
		}
			.padding(EdgeInsets(top: 0, leading: 8, bottom: 6, trailing: 8))
	}

	private struct BindingKeyConfig: View {
		@State var shortcut: String

		private var key: UserDefaults.BindingKeys

		init(key: UserDefaults.BindingKeys) {
			self.key = key
			shortcut = UserDefaults.INSTANCE.tempGetSingleBinding(forKey: key) ?? ""
		}

		var body: some View {
			TextField(text: $shortcut, label: { Text(key.rawValue) })
		}
	}
}

struct KeyBindingsView_Previews: PreviewProvider {
	static var previews: some View {
		KeyBindingsView(viewModel: KeyBindingsViewModel())
	}
}
