define(function(require) {
	var Backbone = require("backbone");
	var GroupModel = require("models/GroupModel");
	var GroupView = require("views/GroupView");
	return Backbone.Collection.extend({
		model : GroupModel,
		renderAll : function(el) {
			return this.map(function(item) {
				return new GroupView({
					el : el,
					model : item
				});
			});
		}
	});
});
