/**
 * Created by kenfor on 2016/12/10.
 */
define(function(require) {
    var $ = require("jquery");
    var Backbone = require("backbone");
    var EventHelper = require("helper/EventHelper");
    require("bootstrap");
    return Backbone.View.extend({
        el : '.moduleButton',
        initialize : function() {
            this.render();
            EventHelper.on("resize", this.resize, this);
            /*
             var last_nav=$("#addModule .sideBarButton").height()-($("ul.nav-list").last().height()+30);
             $("#addModule .sideBarButton").append("<div class='test_h'></div>");
             $("#addModule .test_h").height(last_nav);
             */
        },
        render : function() {
            var thiz = this;
            if (thiz.collection!==undefined) {
                thiz.collection.renderAll(thiz.$el);
            }

        }
    });
});
