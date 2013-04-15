/*jslint white: true, plusplus: true, sloppy: true */
var StringUtil = {
	startsWith: function (str, prefix) {
		return str.slice(0, prefix.length) === prefix;
	},
	endsWith: function (str, suffix) {
		return str.slice(-suffix.length) === suffix;
	},
	stripStart: function (str, prefix) {
		if (StringUtil.startsWith(str, prefix)) {
			return str.slice(prefix.length);
		}
	},
	stripEnd: function (str, suffix) {
		if (StringUtil.endsWith(str, suffix)) {
			return str.slice(0, -suffix.length);
		}
	}
};
