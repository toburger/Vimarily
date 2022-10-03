module.exports = {
	testEnvironment: 'jest-environment-jsdom',
	setupFiles: [
		'./tests/mocks.js',
		'./Vimarily Extension/js/lib/mousetrap.js',
		'./Vimarily Extension/js/injected.js',
	],
};
