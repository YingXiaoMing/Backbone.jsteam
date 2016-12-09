define(function(require) {
	var $ = require("jquery");
	var Backbone = require("backbone");
	var EventHelper = require("helper/EventHelper");
	require("bootstrap");
	return Backbone.View.extend({
		el : '.sideBarButton',
		resize : function(selectFirst) {
			var win_height=$(window).height();
				head_height=$("#head").outerHeight();
				tab_height=$(".kenfor_sidebar > nav").height();
				$(".sideBarButton").height(win_height-tab_height-head_height-$(".sideBarButton").prev().height()-47);
				$(".globalstyle").height(win_height-tab_height-head_height-$(".sideBarButton").prev().height()-47);
				/*
				var last_nav=$("#addModule .sideBarButton").height()-($("ul.nav-list").last().height()+30);
				$("#addModule .test_h").height(last_nav);
				*/		},
		initialize : function() {
			this.render();
			EventHelper.on("resize", this.resize, this);
			/*
			var last_nav=$("#addModule .sideBarButton").height()-($("ul.nav-list").last().height()+30);
			$("#addModule .sideBarButton").append("<div class='test_h'></div>");
			$("#addModule .test_h").height(last_nav);
			*/			$("#addModule ul.type_list li").click(function(e) {
				$("#addModule ul.type_list li").removeClass("active");
				$(this).addClass("active");
			
			});
			$("#setSiteStyle ul.type_list li").click(function(e) {
				$("#setSiteStyle ul.type_list li").removeClass("active");
				$(this).addClass("active");
				$(".globalstyle .nav_info").hide();
				$($(this).find("a").data("tab")).fadeIn(300);
			});
			
		},
		render : function() {
			var thiz = this;
			if (thiz.collection!==undefined) {
				thiz.collection.renderAll(thiz.$el);
			}
			this.resize(true);
		}
	});
});