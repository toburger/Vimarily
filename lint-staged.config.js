module.exports = {
	'*.{js}': [
		'eslint --fix -c .eslintrc.js --ext',
		'prettier -c .prettierrc.js --write',
	],
	'*.{yml,md,json,scss}': ['prettier -c .prettierrc.js --write'],
};
