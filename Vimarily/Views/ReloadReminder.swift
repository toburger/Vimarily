import Foundation
import SwiftUI

struct ReloadReminder: View {
	var padding: CGFloat

	init(padding: CGFloat = 4) {
		self.padding = padding
	}

	var body: some View {
		Text("Note: Reload the page after making changes")
			.font(.callout)
			.frame(maxWidth: .infinity, alignment: .center)
			.padding(padding)
	}
}
