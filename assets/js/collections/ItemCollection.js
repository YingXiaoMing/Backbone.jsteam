define(function(require) {
	var Backbone = require("backbone");
	var ItemModel = require("models/ItemModel");
	var ItemView = require("views/ItemView");
	return Backbone.Collection.extend({
		model : ItemModel,
		renderAll : function(el) {
			return this.map(function(item) {
				return new ItemView({
					pel : el,
					model : item
				});
			});
		}
	});
});
