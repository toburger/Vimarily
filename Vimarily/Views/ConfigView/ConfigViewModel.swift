import Foundation
import SafariServices.SFSafariApplication


class ConfigViewModel: ObservableObject {
	@Published var extensionStatus: String = "";

	func fetchExtensionStatus() {
		if SFSafariServicesAvailable() {
			SFSafariExtensionManager.getStateOfSafariExtension(
				withIdentifier: Constants.extensionIdentifier) {
				state, error in
				print("State", state as Any, "Error", error as Any, state?.isEnabled as Any)

				DispatchQueue.main.async {
					// TODO: handle this getting updated in the Safari preferences too.
					if let state = state {
						if state.isEnabled {
							self.extensionStatus = "Enabled"
						} else {
							self.extensionStatus = "Disabled"
						}
					}
					if let error = error {
						NSLog("Error", error.localizedDescription)
						self.extensionStatus = error.localizedDescription
					}
				}
			}
		} else {
			NSLog("SFSafariServices not available")
			extensionStatus = "Unavailable, Vimarily requires Safari 10 or greater."
		}
	}

	func openSafariExtensionPreferencesClick() {
		SFSafariApplication.showPreferencesForExtension(
			withIdentifier: Constants.extensionIdentifier) { error in
			if let _ = error {
				NSLog("Error" + (error?.localizedDescription ?? "Unknown"))
			}
		}
	}
}
