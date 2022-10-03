import Foundation
import SwiftUI

struct ErrorText: View {
	var text: String
	var condition: Bool

	var body: some View {
		if condition {
			Text(text).foregroundColor(.red)
		}
	}
}
