define(function(require) {
	var $ = require("jquery");
	var _ = require("underscore");
	var Backbone = require("backbone");
	var tpl = require("text!templates/head.tpl");
	var jsUtil = require("kenforJsUtil");
	var colTool = require("data/col");
	return Backbone.View.extend({
		el:'#head',
		events:{
			"click #edit":"editHandler",
			"click #edu_model":"showHandler",
			"click #edu_style":"styleHandler",
			"click #sourcepreview":"previewHandler",
			"click #clear":"clearHandler",
			"click #save" : "saveHandler"
		},
		supportstorage : function () {
		    if (typeof window.localStorage == 'object')
		        return true;
		    else
		        return false;
		},
		saveHandler:function(e){
			e.stopPropagation();
			e.preventDefault();
			var doms = [".design"];
			colTool.obtainDesigns(doms);
		},
		saveData : function(id,data){
			alert(data);
			$.ajax({
				url:"/module/save.do",
				type:"post",
				data : {
					id : id,
					pageData : data
				},
				dataType:"json",
				success:function(dataReturn){
					if(dataReturn.result=="SUCCESS"){
						thiz.initSuccessHandler(dataReturn.data);
					}else{
						thiz.initFailureHandler(dataReturn);
					}
				},
				error : function(e){
					thiz.initErrorHandler(e);
				}
			});
		},
		showHandler:function(e){
			e.stopPropagation();
			e.preventDefault();
			$("body").removeClass("devfullview");
			$("#Module").trigger("click");
			$("#kenfor_Panel").fadeOut(500);
	       // $("body").addClass("edit");
	       // $(".btn-group-switch .btn").removeClass("active");
			//$(e.target).addClass("active");
			//$("#preview").hide();
			//$(".design").show();
		},
		styleHandler:function(e){
			e.stopPropagation();
			e.preventDefault();
			$("#SiteStyle").trigger("click");
			$("body").removeClass("devfullview");
			$("#kenfor_Panel").fadeOut(500);
	       // $("body").addClass("edit");
	       // $(".btn-group-switch .btn").removeClass("active");
			//$(e.target).addClass("active");
			//$("#preview").hide();
			//$(".design").show();
		},
		editHandler:function(e){
			e.stopPropagation();
			e.preventDefault();
			$("body").removeClass("devpreview sourcepreview");
			$("body").removeClass("devfullview");
	        $("body").addClass("edit");
			$("#addModule").trigger("click");
	        $(".btn-group-switch .btn").removeClass("active");
			$(e.target).addClass("active");
			//$("#kenfor_Panel").fadeIn(500);
			$("#preview").hide();
			$(".design").show();
		},
		cleanHtml:function (e) {
			var parent = $(e).parent();
			parent.append($(e).html());
			$(e).remove();
			return parent;
		},
		changeStructure:function (e, t) {
		    $("#preview ." + e).removeClass(e).addClass(t);
		},
		cleanAllHtml:function(e){
			 var thiz = this;
			 $(e).children().each(function(){
		    	if($(this).is(".box")||$(this).is(".view")){
		    		var parent = thiz.cleanHtml(this);
		    		thiz.cleanAllHtml(parent);
		    	}else{
		    		thiz.cleanAllHtml(this);
		    	}
		    });
		},
		downloadLayoutSrc:function() {
			var thiz = this;
			$(".design").hide();
		    $("#preview").html($(".design").html());
		    $("#preview").find(".btn-toolbar").remove();
			$("#preview").find(".ui-resizable-handle").remove();
			$("#preview").css({"position":'relative'});
		    //thiz.cleanAllHtml("#preview");
		   // $("#preview").find(".column").removeClass("column");
		    //$("#preview").find(".sortable").removeClass("ui-sortable sortable");
		    /*$("#preview").find(".view").remove();
		    $("#preview .column").removeClass("ui-sortable");
		    $("#preview .row-fluid").removeClass("clearfix").children().removeClass("column");
		    if ($("#preview .container").length > 0) {
		        thiz.changeStructure("row-fluid", "row");
		    }*/
			/*del 2016-10-22
		    formatSrc = $.htmlClean($("#preview").html(), {
		        format: true,
		        allowedAttributes: [
		            ["id"],
		            ["class"],
		            ["data-toggle"],
		            ["data-target"],
		            ["data-parent"],
		            ["role"],
		            ["data-dismiss"],
		            ["aria-labelledby"],
		            ["aria-hidden"],
		            ["data-slide-to"],
		            ["data-slide"]
		        ]
		    });*/
		   // $("#preview").html($("#preview").html());//解决模版不能添加样式跟JS的问题
		},
		previewHandler:function(e){
			var  thiz = this;
			e.stopPropagation();
			e.preventDefault();
			$("body").removeClass("edit devfullview");
	        $("body").addClass("devpreview sourcepreview");
	        $(".btn-group-switch .btn").removeClass("active");
			$(e.target).addClass("active");
			$("#kenfor_Panel").fadeOut(500);
	        thiz.downloadLayoutSrc();
	        var height = $(".demo").height();
	        $(".demo").hide();
	        $("#preview").height(height).show();
		},
		clearHandler:function(e){
			$(".edit #design .design,.edit #preview").html("");
		},
		initialize : function() {
			this.template = _.template(tpl);
			this.render();
			$("body").addClass("edit devfullview");//默认打开状态
			//$("body").addClass("devpreview sourcepreview");
		},
		render : function() {
			var head = "";
			if (this.model && this.model.attributes) {
				head = this.template(this.model.attributes);
			} else {
				head = this.template();
			}
			this.$el.append(head);
		}
	});
});