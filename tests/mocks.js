const safari = {
	self: {
		tab: {
			dispatchMessage: function () {},
		},
		addEventListener: function () {},
	},
	extension: {
		dispatchMessage: function () {},
	},
};

window.safari = safari;

global.SafariExtensionCommunicator = function () {
	return {
		requestSettingsUpdate: function () {},
	};
};
