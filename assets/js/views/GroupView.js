define(function(require) {
	var $ = require("jquery");
	var _ = require("underscore");
	var Backbone = require("backbone");
	var ItemCollection = require("collections/ItemCollection");
	var tpl = require("text!templates/group.tpl");
	return Backbone.View.extend({
		initialize : function() {
			this.template = _.template(tpl);
			this.render();
		},
		render : function() {
			var group = this.template(this.model.attributes);
			var $group = $(group);
			this.$el.append($group);
			var boxes = $group.find(".boxes");
			if (this.model.get("collection") !== undefined) {
				var collection = new ItemCollection(this.model.get("collection"));
				collection.renderAll(boxes);
			}
		}
	});
});