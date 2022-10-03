const SafariExtensionCommunicator = function (msgHandler) {
	'use strict';
	const publicAPI = {};

	// Connect the provided message handler to the received messages.
	safari.self.addEventListener('message', msgHandler);

	const sendMessage = function (msgName) {
		safari.extension.dispatchMessage(msgName);
	};

	publicAPI.requestSettingsUpdate = function () {
		sendMessage('updateSettings');
	};
	publicAPI.requestTabForward = function () {
		sendMessage('tabForward');
	};
	publicAPI.requestTabBackward = function () {
		sendMessage('tabBackward');
	};
	publicAPI.requestCloseTab = function () {
		sendMessage('closeTab');
	};

	// Return only the public methods.
	return publicAPI;
};
