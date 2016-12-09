define(function(require) {
	var $ = require("jquery"),
	var_ = require("underscore");
	var Backbone = require("backbone");
	var tpl = require("text!templates/item.tpl");
	require("jqueryui");
	return Backbone.View.extend({
		events : {
			"blur input" : "changeLayout"
		},
		tagName : "div",
		className : "box box-element ui-draggable",//添加左侧菜单默认样式  备注：外边多了一个box
		changeLayout : function(e) {
			alert(className);
			e.preventDefault();
			var target = e.currentTarget;
			var e = 0;
			var n = $(target).val().split(",", 12);
			var value = [];
			$.each(n, function(n, r) {
				e = e + parseInt(r);
				value.push(parseInt(r));
			});
			if (e === 12) {
				this.model.set("value", value);
			}
		},
		initialize : function(options) {
			this.options = this.options || {
				isDefault : true
			};

			this.options = _.extend(this.options, options);
			this.template = _.template(tpl);
			this.render();
			var thiz = this;
			this.$el.draggable({
                appendTo: "body",
                containment: "document",
                helper : "clone",
                scroll: false,
                connectToSortable : ".sortable",
                zIndex: 10000,
                start : function(e, t) {
					t.helper.data('modelattributes', $.extend(true, {},thiz.model.attributes));
                },
				stop : function(e, t) {
					$("body").removeClass("devfullview");
				},
				drag : function(e, t) {
					if(e.pageX>340){
						$("body").addClass("devfullview");
					}
					t.helper.width(80);
				}
			});
		},
		render : function() {
			var html = this.template(this.model.attributes);
			var t = this.$el.html(html).attr({
				'data-group' : this.model.get('group'),
				'data-name' : this.model.get('name')
				//'global' : this.model.get("publicAttributes").isGlobal
			});
			this.options.pel.append(t);
		}
	});
});