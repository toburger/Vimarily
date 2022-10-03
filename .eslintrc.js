module.exports = {
	root: true,
	env: {
		browser: true,
		node: true,
		es6: true,
	},
	parserOptions: {
		ecmaVersion: 8,
		sourceType: 'module',
	},
	ignorePatterns: ['node_modules/*'],
	extends: ['eslint:recommended', 'plugin:prettier/recommended'],
	rules: {
		'no-restricted-imports': ['error'],
		'linebreak-style': ['error', 'unix'],
		'no-undef': ['warn'],
		'no-unused-vars': ['warn'],
		'prettier/prettier': [
			'error',
			{},
			{
				usePrettierrc: true,
			},
		],
	},
	overrides: [
		{
			files: ['**/*.spec.js'],
			plugins: ['jest'],
			env: {
				browser: true,
				node: true,
				es6: true,
				'jest/globals': true,
			},
		},
		{
			files: ['**/*.js'],
			env: {
				browser: true,
				node: true,
				es6: true,
			},
		},
	],
};
