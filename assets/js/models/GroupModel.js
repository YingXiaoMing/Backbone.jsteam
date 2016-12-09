define(function(require) {
	var Backbone = require("backbone");
	return Backbone.Model.extend({
		getTitle : function() {
			return this.get("title").replace(/\W/g, '').toLowerCase();
		}
	});
});
