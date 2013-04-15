/*jslint white: true, plusplus: true, sloppy: true */
function Set(initialMembers) {
	this.members = { };
	this.addMany(initialMembers);
}
Set.prototype = {
	add: function (element) {
		this.members[element] = true;
	},
	addMany: function (array) {
		var i;
		for (i = 0; i < array.length; i++) {
			this.add(array[i]);
		}
	},
	remove: function (element) {
		delete this.members[element];
	},
	contains: function (query) {
		return this.members[query] === true;
	},
	clear: function () {
		this.members = { };
	},
	toArray: function () {
		var k, result = [ ];
		for (k in this.members) {
			if (this.members.hasOwnProperty(k)) {
				result.push(k);
			}
		}
		return result;
	}
};
