define(function(require) {
	var $ = require("jquery");
	var _ = require("underscore");
	var Backbone = require("backbone");
	var tpl=require("text!templates/aside.tpl");
	var css=require("text!templates/publicstyle.tpl");
	var main = require('text!templates/config/main.tpl');
    var configTemplates = require('templates/config/template');
	var ItemModel = require("models/ItemModel");
	require("bootstrap");
	return Backbone.View.extend({
		el : '#sideBar',
		events:{
			"click #close_nav": "closeNavHandler"
		},
		initialize : function(options) {
			this.collection.on("change", this.change_style, this);
			this.options = this.options || {};
			this.options = _.extend(this.options, options);
			//从new view()中传递过来的数据，从this.options取就可以了。
			this.$el.html(_.template(tpl)({fields : this.options.model.attributes, styles : this.options.collection.attributes,configTemplates: configTemplates}));//({fields : this.model.attributes}))获取app.js里面注入的josn数据
			this.change_style();
			$(".kenfor_sidebar nav .list").click(function(e) {
				$(".kenfor_sidebar nav .list").removeClass("hover");
				$(this).addClass("hover");	
				$(".sidebar_tab > div.stab_con").hide();
				$($(this).data("tab")).show();
			});
			var thiz=this;
			this.$el.delegate("input.field","change",function(e){
                	e.stopPropagation();
                    e.preventDefault();
                    var name = $(this).attr("name");
                    var type = $(this).data("savetype");
                    switch (type) {
                        case "style" :
                            var value = $("input[name='"+name+"']:checked").val();
                            thiz.collection.setCpStyle(name,$(this).val());
                            $("input[name='"+name+"']").each(function(i,obj){
                                if(obj.value == value){
                                    $("#"+name+obj.value).show();
                                }else{
                                	$("#"+name+obj.value).hide();
                                }
                            });
							
                            break;
                        case "input" :
                            thiz.collection.setCpStyle(name,$(this).val());
                            break;
                        case "checkbox" :
                            thiz.collection.setCpStyle(name,$(this).is(":checked"));
                            break;
                    }
                    //modal.render();
					thiz.collection.trigger("change");
                });

                this.$el.delegate("select.field","change",function(e){
                	e.stopPropagation();
                    e.preventDefault();
                    var name = $(this).attr("name");
                    var type = $(this).data("savetype");
                    switch (type) {
                    case "select" :
                    	var valarr = _.map($(this).find("option"), function (e) {
                                return {
                                    value: e.value,
                                    selected: e.selected,
                                    label: $(e).text()
                                };
                            });
                            thiz.collection.setCpStyle(name,valarr);
                    	break;
                    case "input" :
                        var value = $(this).val();
                        thiz.collection.setCpStyle(name,value);
                        break;
                    }
                    //modal.render();
					thiz.collection.trigger("change");
                });
                this.$el.delegate(".paddings","change",function(e){
                    e.stopPropagation();
                    e.preventDefault();
                    var name = $(this).attr("name");
                    var type = $(this).data("savetype");
                    switch (type) {
                        case "padding":
                            var $padding = $(this).find(".padding-control"); //获取子DOM
                            $.each($padding,function(key,item){ //循环四个方向的输入框
                                thiz.collection.attributes.padding[key].value = $padding.eq(key).val();
                            });
                            //console.log(thiz.collection.attributes);
                            thiz.collection.setCpStyle("padding", thiz.collection.attributes.padding); //将修改后的数组，重新设值到thiz.model对象
							
                            break;
                    }
					thiz.collection.trigger("change");
                    //modal.render();
                });
				
		},
		change_style : function(){
			$("#public_style").html(_.template(css)({fields:this.options.collection.attributes}));
			//alert("渲染成功");
		},
		closeNavHandler: function(e){
			e.stopPropagation();
			var $body = $("body");
			$body.removeClass("devpreview sourcepreview").addClass("devfullview");
			$body.addClass("devfullview");
			$("#kenfor_Panel").fadeIn(500);
			$(".btn-group-switch .btn").removeClass("active");
			$("#edit").addClass("active");
		}
	});
});