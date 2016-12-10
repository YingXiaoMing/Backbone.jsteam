define(function(require) {
	var $ = require("jquery");
	var _ = require("underscore");
	var Backbone = require("backbone");
	var EventHelper = require("helper/EventHelper");
	var tpl=require("text!templates/design.tpl");
	var global = require("app/global");
	var colTool = require("data/col");
	return Backbone.View.extend({
		el : '#design',
		changeLayout:function(){
			var thiz = this;
			$(".sortable").sortable({
		        connectWith: ".sortable",
		        opacity: .65,
				zIndex: 10000,
				items: ".sortable-items",//绑定哪个class为移动对象
		        start: function (event, ui) {
		        	if (!thiz.startdrag){
		        		thiz.stopsave++;
		        	}
		            thiz.startdrag = 1;
		            thiz.modelattributes = ui.helper.data('modelattributes');

		        },
		        stop: function (event, ui) {
                    var $target = $(event.target);
                    if (thiz.stopsave > 0){
		            	thiz.stopsave--;
		            }
		            thiz.startdrag = 0;
		            if(thiz.modelattributes){
		            	var initlab = 0;
						//colTool.getInitLab(event.target)
		            	var moduleData = thiz.modelattributes.cpData;

		            	require(["text!data/components/"+moduleData+".json"],function(data){

		            		var itemObj = eval("("+data+")");
		            		//生成外边框201
		            		itemObj.mdId = colTool.getMaxCpId() + 1;
		            		var md = {
	            				mdId : itemObj.mdId,
	            				mdName : thiz.modelattributes.cpName,
	            				initLab : initlab,
	            				isGlobal : itemObj.publicAttributes.isGlobal
	            			};
		            		colTool.addColMd(md);
		            		colTool.setMaxCpId(itemObj.mdId);
		            		var target = itemObj.target?itemObj.target:"ItemView";
                            require(["views/design/" + target], function (dynModules) {
                                if ($target.hasClass("kenfor-column")) {
                                    $target.removeClass("kenfor-addible");
                                }
                                console.log(ui.item);
                                dynModules.createView(itemObj, $(ui.item));
                            });
		            	});
		            }else{
		            	EventHelper.trigger('changeLayout');
		            }
		        }
		    });
		},
		initialize : function(options) {
			this.options = _.extend({
				hideField: false
		      }, options);
			this.template = _.template(tpl);
			this.render();
			//this.initActions();
			EventHelper.on("resize",this.resize,this);
			EventHelper.on("changeLayout",this.changeLayout,this);
		},
		resize:function(selectFirst){
			if($(".design").length>0){
				var height = $("#head").outerHeight();
				$(".design").css("min-height", $(window).height() - height);
			}
		},
		render : function() {
			var head = "";
			if (this.model && this.model.attributes) {
				head = this.template(this.model.attributes);
			} else {
				head = this.template();
			}
			this.$el.append(head);
			this.resize();
			this.changeLayout();
			//this.addSubview(".sortable", this);
		}
	});
});