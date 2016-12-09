define(function (require) {
    var $ = require('jquery');
    var _ = require('underscore');
    var Backbone = require('backbone');
    var EventHelper = require("helper/EventHelper");
    var ModalView = require("views/ModalView");
    var remoteView = require("views/ModalRemoteView");
    var btns = require("text!data/btns.json");
	var inside_btns = require("text!data/btns.json");
    var toolbar = require('text!templates/toolbar.tpl');
    var contextmenu = require('text!templates/base/contextmenu.tpl');
    var global = require('app/global');
    var colTool = require("data/col");
    var baseTool = require("base");
    require("artDialog/jqueryartDialog");
    require("jquerycontextmenu");
    //require("css!/design/assets/css/moduleContextMenu.css");
    var ItemView = Backbone.View.extend({
        events: {
            "click .btn-toolbar>.btn-group > button": "clickBtnHandler",
            "click .btn-toolbar .dropdown-menu a": "clickMenuHandler"
        },
        selectItem: null,
        clickMenuHandler: function (e) {
            e.stopPropagation();
            e.preventDefault();
            var thiz = this;
            var target = e.currentTarget;
            var t = thiz.findParentNodeByCls(target, '.dropdown-menu');
            t.find("li").removeClass("active");
            $(target).parent().addClass("active");
            var n = this.$el.find(".view:eq(0)").children();
            var r = "";
            t.find("a").each(function () {
                r += $(this).attr("rel") + " ";
            });
            t.parent().removeClass("open");
            if (n.data("control")) {
                var controls = n.data("control").split(" ");
                var rels = $(target).attr("rel").split(" ");
                for (var j = 0; j < controls.length; j++) {
                    n.children(controls[j]).removeClass(r).addClass(rels[j]);
                }
            } else {
                n.removeClass(r);
                n.addClass($(target).attr("rel"));
            }
        },
        removeHandler: function (btn) {
            var thiz = this;
            var modal = new ModalView({
                animate: true,
                title: '提示',
                modalCls: 'modal-sm',
                content: '你确认要删除该组件吗？'
            });
            modal.open(function () {
                var $pel = $(btn).closest(".kenfor-column");
                //thiz.$el.find(".box").each(function () {
                    //$(this).data("model").destroy();
                    //$(this).remove();
                //});   
              thiz.remove();
              $pel.children(".box").each(function(e){
                if($(this).html()==""){
                  $(this).remove();
                }
              });
                //this.model.destroy();
                if ($pel.length) {
                    if ($pel.html() == "") {
                        $pel.addClass("kenfor-addible");
                    }
                }
                EventHelper.trigger('saveLayout');
            });
        },
        editModuleHandler: function (btn) {
            var thiz = this;
            var type = $(btn).data("type");
            var btns = thiz.model.attributes.buttons.buttons;
            var btnobj = btns[type];
            var path = "";
            if (btnobj) {
                if (btnobj.url) {
                    path = btnobj.url + "?id=" + thiz.model.randomNumber();
                } else {
                    alert('btn数据错误,需要配置编辑的页面地址');
                    return;
                }
            } else {
                alert('btn数据错误');
                return;
            }
            $.ajax({
                url: path,
                type: "GET",
                success: function (data) {
                    var dialog = art.dialog({
                        id: new Date().getTime(),
                        title: ("编辑模块"),
                        lock: true,
                        width: '50%',
                        padding: '0',
                        content: data,
                        init: function (obj) {
                            obj.initData(thiz.model.attributes.dataAttributes);
                        },
                        ok: function () {
                            var dataobj = saveData();
                            thiz.model.set("dataAttributes", dataobj);
                            thiz.model.trigger("change");
                            return true;
                        },
                        cancel: true
                    });
                    //dialog.content(data);
                    //alert($(dialog._getDOM().wrap).html());
                },
                error: function () {

                },
                cache: false
            });
        },
        editRemoteHandler: function (btn) {
            var thiz = this;
            var type = $(btn).data("type");
            var btns = thiz.model.attributes.buttons.buttons;
            var btnobj = btns[type];
            var path = "";
            var titleName = "";
            if (btnobj) {
                if (btnobj.url) {
                    path = btnobj.url + "?id=" + thiz.model.randomNumber();
                } else {
                    alert('btn数据错误,需要配置编辑的页面地址');
                    return;
                }
                if (btnobj.label) {
                    titleName = btnobj.label;
                }
            } else {
                alert('btn数据错误');
                return;
            }

            var modal = new remoteView({
                animate: true,
                title: titleName,
                url: path
            });

            modal.open(function () {
                var datas = thiz.model.attributes.dataAttributes;
                if (typeof saveData == "function") {
                    saveData(datas);
                    thiz.model.set("dataAttributes", datas);
                    thiz.model.trigger("change");
                    this.closed = true;
                } else {
                    if (checkform()) {
                        var content = this.$content;
                        var fields = content.find(".field");
                        _.each(fields, function (e) {
                            var $e = $(e);
                            var type = $e.attr("data-savetype");
                            if (type) {
                                datas = baseTool._call(eval("baseTool._save" + type), [$e, content, datas]);
                            }
                        });
                        thiz.model.set("dataAttributes", datas);
                        thiz.model.trigger("change");
                        this.closed = true;
                    } else {
                        this.closed = false;
                    }
                }
            }, function () {
                var content = this.$content;
                var fields = content.find(".field");
                var datas = thiz.model.attributes.dataAttributes;
                _.each(fields, function (e) {
                    var $e = $(e);
                    var type = $e.attr("data-savetype");
                    if (type) {
                        baseTool._call(eval("baseTool._init" + type), [$e, content, datas]);
                    }
                });
            });

        },
        getColumnes : function($obj){
            var item = {
                attributes: this.model.attributes,
                tpl: this.options.templateTpl,
                type: 'box',
                children: []
            };

            function getChildren(obj, item) {
                obj.children().each(function () {
                    if ($(this).is(".sortable")) {
                        var sortable = {
                            type: 'sortable',
                            children: []
                        };
                        item.children.push(sortable);
                        if ($(this).children(".box")) {
                            $(this).children(".box").each(function () {
                                var temp = {
                                    type: 'box',
                                    attributes: $(this).data("model").attributes,
                                    tpl: $(this).data("tpl"),
                                    children: []
                                };
                                sortable.children.push(temp);
                                getChildren($(this).find(">.view:eq(0)"), temp);
                            });
                        }
                    } else {
                        getChildren($(this), item);
                    }
                });
            }

            getChildren($obj, item);

            return item;
        },
        initData : function ($dom, item) {
            var design = $dom;
            if(!item){
                return;
            }
            var target = item.attributes.target ? item.attributes.target : "ItemView";
            var id = this.model.randomNumber();
            var tmp = design.append("<div id='" + id + "'></div>");
            require(["views/design/" + target], function (dynModules) {
                var base = dynModules.createView(item.attributes, $("#" + id), null);
                //var parent = base.render();
                //$("#"+id).after(parent).remove();
                if (item.children.length > 0) {
                    function getSortable(parent, index) {
                        for (var i = 0; i < parent.children().length; i++) {
                            var obj = $(parent.children()[i]);
                            if (obj.is(".sortable")) {
                                if (i === index) {
                                    return obj;
                                } else {
                                    continue;
                                }
                            } else {
                                return getSortable(obj, index);
                            }
                        }
                    }

                    function genItems(childrens, parent) {
                        $(childrens).each(function (index) {
                            if (this.type === 'box') {
                                target = this.attributes.target ? this.attributes.target : "ItemView";
                                var thiz = this;
                                var id = appthiz.randomNumber();
                                var tmp = parent.append("<div id='" + id + "'></div>");
                                require(["views/design/" + target], function (dynModules) {
                                    var base = dynModules.createView(thiz.attributes, $("#" + id), null);
                                    //var tmp = base.render();
                                    //$("#"+id).after(tmp).remove();
                                    if (thiz.children.length > 0) {
                                        genItems(thiz.children, tmp);
                                    }
                                });
                            } else {
                                if (this.children.length > 0) {
                                    var sortable = getSortable(parent.find(">.view:eq(0)"), index);
                                    genItems(this.children, sortable);
                                }
                            }
                        });
                    }

                    genItems(item.children, parent);
                }
            });
        },
        copyHandler: function (btn) {
            var item = {
                attributes: this.model.attributes,
                tpl: this.options.templateTpl,
                type: 'box',
                children: []
            };

            function getChildren(obj, item) {
                obj.children().each(function () {
                    if ($(this).is(".sortable")) {
                        var sortable = {
                            type: 'sortable',
                            children: []
                        };
                        item.children.push(sortable);
                        if ($(this).children(".box")) {
                            $(this).children(".box").each(function () {
                                var temp = {
                                    type: 'box',
                                    attributes: $(this).data("model").attributes,
                                    tpl: $(this).data("tpl"),
                                    children: []
                                };
                                sortable.children.push(temp);
                                getChildren($(this).find(">.view:eq(0)"), temp);
                            });
                        }
                    } else {
                        getChildren($(this), item);
                    }
                });
            }

            getChildren(this.$el.find(">.view:eq(0)"), item);
            var thiz = this;
            var target = item.attributes.target ? item.attributes.target : "ItemView";
            require(["views/design/" + target], function (dynModules) {
                var base = dynModules.createView(thiz.model.attributes, null, thiz.options.templateTpl, false);
                var parent = base.render();
                thiz.$el.after(parent);
                if (item.children.length > 0) {
                    function getSortable(parent, index) {
                        for (var i = 0; i < parent.children().length; i++) {
                            var obj = $(parent.children()[i]);
                            if (obj.is(".sortable")) {
                                if (i == index) {
                                    return obj;
                                } else {
                                    continue;
                                }
                            } else {
                                return getSortable(obj, index);
                            }
                        }
                    }

                    function genItems(childrens, parent) {
                        $(childrens).each(function (index) {
                            if (this.type == 'box') {
                                target = this.attributes.target ? this.attributes.target : "ItemView";
                                var thiz = this;
                                require(["views/design/" + target], function (dynModules) {
                                    var base = dynModules.createView(thiz.attributes, null, thiz.tpl, false);
                                    var tmp = base.render();
                                    parent.append(tmp);
                                    if (thiz.children.length > 0) {
                                        genItems(thiz.children, tmp);
                                    }
                                });
                            } else {
                                if (this.children.length > 0) {
                                    var sortable = getSortable(parent.find(">.view:eq(0)"), index);
                                    genItems(this.children, sortable);
                                }
                            }
                        });
                    }

                    genItems(item.children, parent);
                }
            });


        },
        hideHandler: function (btn) {
            var box = this.findParentNodeByCls(btn, ".box");
            var row = box.find(".view");
            if (!box.is(".hide_box")) {
                $(btn).html("显示");
                box.addClass("hide_box");
                row.hide();
                box.append("<div class='hide_tip'>隐藏模块</div>");
            } else {
                $(btn).html("隐藏");
                box.find(".hide_tip").remove();
                box.removeClass("hide_box");
                row.show();
            }
        },
        floatHandler: function (btn) {//新增加组件
            var box = this.findParentNodeByCls(btn, ".box");//获取当前显示组件
            var row = box;//获取需要处理层
            if (!row.is(".toggleFloat")) {
                $(btn).html("固定模块");//固定模块
                row.css({"position": "absolute", "z-index": 99});
                row.addClass("toggleFloat");
                row.draggable({disabled: false});
                row.resizable({disabled: false});
            } else {
                $(btn).html("浮动模块");//浮动模块
                //row.removeAttr("style")
                row.css({"position": "relative", "z-index": 1});
                row.resizable({disabled: true});
                row.draggable({disabled: true});
                row.removeClass("toggleFloat");

            }
			
        },
        
        setstyleHandler: function (btn) {//新增加组件
            var box = this.findParentNodeByCls(btn, ".box");//获取当前显示组件
            var row = box;//获取需要处理层
            if($("body").hasClass('devfullview')){
                $("#SiteStyle").trigger("click");
                $("body").removeClass("devfullview");
                $("#kenfor_Panel").fadeOut(500);
            }else{
                $("#SiteStyle").trigger("click");
                $("body").addClass("devfullview");
                $("#kenfor_Panel").fadeIn(500);
            }
            
        },
        setAnimationHandler: function (btn) {//新增加组件
            var box = this.findParentNodeByCls(btn, ".box");//获取当前显示组件
            var row = box;//获取需要处理层
           if($("body").hasClass('devfullview')){
                $("#SiteStyle").trigger("click");
                $("body").removeClass("devfullview");
                $("#kenfor_Panel").fadeOut(500);
            }else{
                $("#SiteStyle").trigger("click");
                $("body").addClass("devfullview");
                $("#kenfor_Panel").fadeIn(500);
            }
        },
        hideBorderHandler: function (btn) {//新增加组件
            var box = this.findParentNodeByCls(btn, ".box");//获取当前显示组件
            var row = box;//获取需要处理层
            if (!row.is(".toggleBorder")) {
                $(btn).html("显示外框");//浮动模块
                row.css({"border": "1px #ffffff dashed"});
                row.addClass("toggleBorder");
            } else {
                $(btn).html("隐藏外框");//固定模块
                row.css({"border": "1px #357ebd dashed"});
               // row.css({"position": "relative", top: 0, left: 0, "z-index": 1, width: '500px'});

                row.removeClass("toggleBorder");

            }
        },
        textHandler: function (btn) {//新增加组件
            var box = this.findParentNodeByCls(btn, ".box");//获取当前显示组件
            var row = box;//获取需要处理层

            if (!row.is(".textFloat")) {
                $(btn).html("锁定模块");//移动模块
                //row.css({"position":"absolute","z-index":99,width:500});
                row.addClass("textFloat");
                row.draggable({disabled: false});
                row.resizable();
            } else {
                $(btn).html("移动模块");//锁定模块
                //row.removeAttr("style")
                //row.css({"position":"relative",top:0,left:0,"z-index":1,width:'100%'});
                //row.resizable({ disabled: true });
                row.draggable({disabled: true});
                row.removeClass("textFloat");

            }
        },
		topIndexHandler: function (btn) {//新增加组件
            var box = this.findParentNodeByCls(btn, ".box");//获取当前显示组件
            var row = box;//获取需要处理层

            row.css({"position": "absolute", "z-index":9998});

        },
		bottomIndexHandler: function (btn) {//新增加组件
            var box = this.findParentNodeByCls(btn, ".box");//获取当前显示组件
            var row = box;//获取需要处理层

            row.css({"position": "absolute", "z-index":0});

        },
		fluttermHandler: function (btn) {//新增加组件
            var box = this.findParentNodeByCls(btn, ".box");//获取当前显示组件
            var row = box;//获取需要处理层
//浮动开始

//浮动结束
        },
		mbottomHandler: function (btn) {//新增加组件
            var box = this.findParentNodeByCls(btn, ".box");//获取当前显示组件
            var row = box;//获取需要处理层

            row.css({"position": "absolute", "bottom":"0px"});

        },
		mzindexHandler: function (btn) {//新增加组件
            var box = this.findParentNodeByCls(btn, ".box");//获取当前显示组件
            var row = box;//获取需要处理层

            row.css({"position": "absolute", "z-index":9998});

        },
		sidemHandler: function (btn) {//新增加组件
            var box = this.findParentNodeByCls(btn, ".box");//获取当前显示组件
            var row = box;//获取需要处理层

 	$(row).hover(
		function(){


			$(this).animate({"left":"auto","right":0},300);

			
			
		},
		function(){

			$(this).animate({"left":"auto","right":0},300);	
			
		}
	)

        },
        findParentNodeByCls: function (node, cls) {
            node = $(node);
            if (node.is(cls)) {
                return node;
            } else if (node.parent()) {
                return this.findParentNodeByCls(node.parent(), cls);
            } else {
                return null;
            }
        },

        clickBtnHandler: function (e) {
            var thiz = this;
            e.stopPropagation();
            e.preventDefault();
            var target = e.currentTarget;
            var rel = $(target).attr("rel");
            if (rel) {
                var suffix = "Handler";
                if (rel.indexOf(suffix, this.length - suffix.length) !== -1) {
                    if (thiz[rel]) {
                        thiz[rel](target);
                    } else {
                        alert(rel + "方法没有实现，请实现");
                    }
                }
                else {
                    var t = thiz.findParentNodeByCls(target, '.box').find(".view:eq(0)").children();
                    $(target).toggleClass("active");
                    t.toggleClass($(target).attr("rel"));
                }
            }
        },
        editHandler: function (obj) {
            console.error('未重载editHandler事件');
        },
        toast: function (content, duration) {
            var toast = new ModalView({
                animate: true,
                showFooter: false,
                modalCls: 'modal-sm',
                title: null,
                content: content
            });
            toast.open();
            setTimeout(function () {
                toast.close();
            }, duration || 2000);
        },
        initContextMenus : function(){
        	var html = _.template(contextmenu)({});
        	var $html = $(html);
        	$html.delegate(".context-menu-item","click",function(e){
        		alert('click');
        	});
        	this.$el.initContextMenu($html,{});
        },
        tagName: "div",
        className: "box box-element ui-draggable sortable-items",//添加默认样式
        initialize: function (options) {
            this.model.on("change", this.render, this);
            this.options = this.options || {isDefault: true, isRender: true};
            this.options = _.extend(this.options, options);
            this.options.isRender = typeof this.options.isRender !== 'undefined' ? this.options.isRender : true;
            var buttons = [];
            var btnjson = eval("[" + btns + "]")[0];
            _.reduce(this.model.attributes.btns, function (o, v, k) {
                if (typeof v == "object") {
                    if (v.btntype) {
                        var obj = btnjson[v.btntype];
                        if (obj) {
                            var objs = {};
                            var objs = _.extend(objs, obj, v);
                            buttons.push(objs);
                        }
                    } else {
                        alert('btns中的数据格式错误，若btns中有对象的话，对象中必须包含btntype属性');
                    }
                } else {
                    buttons.push(btnjson[v]);
                }
            }, []);
            this.model.attributes.buttons = {
                buttons: buttons
            };
			
			
            var inside_buttons = [];
            var inside_btnjson = eval("[" + inside_btns + "]")[0];
            _.reduce(this.model.attributes.inside_btns, function (o, v, k) {
                if (typeof v == "object") {
                    if (v.btntype) {
                        var obj = btnjson[v.btntype];
                        if (obj) {
                            var objs = {};
                            var objs = _.extend(objs, obj, v);
                            buttons.push(objs);
                        }
                    } else {
                        alert('btns中的数据格式错误，若btns中有对象的话，对象中必须包含btntype属性');
                    }
                } else {
                    buttons.push(btnjson[v]);
                }
            }, []);
            this.model.attributes.buttons = {
                buttons: buttons
            };
			
            //alert(this.model.attributes.value[0].module_id);
            this.model.attributes.toolbarTemplate = _.template(toolbar);
            //var deffer=
            //var tpl=require('text!templates/'+this.model.get('group')+'/'+this.model.get('template')+'.tpl');
            var thiz = this;
            if (!this.options.htmlnr) {
                if (!this.options.templateTpl) {
                    require(['text!templates/' + this.model.get('group') + '/' + this.model.get('template') + '.tpl'], function (tpl) {
                        thiz.options.templateTpl = tpl;
                        thiz.template = _.template(tpl);
                        if (thiz.options.isRender) {
                            thiz.render();
                        }
                    });
                } else {
                    thiz.template = _.template(this.options.templateTpl);
                    if (thiz.options.isRender) {
                        thiz.render();
                    }
                }
            }
        },
        render: function () {
            var tempSave = [];
            var $oneColumnSub = this.$el.find("[oneColumnSub]");
            var length = $oneColumnSub.length;
            if (length) {
                for(var i = 0; i< length; i++){
                    tempSave[i] = this.getColumnes($($oneColumnSub[i]).find(">.view:eq(0)"));
                }
            }

            var html = "";
            if (!this.options.htmlnr) {
                if (!this.template) {
                    this.template = _.template(this.options.templateTpl);
                }
                html = this.template(this.model.getValues());
            } else {
                html = this.options.htmlnr;
            }
            this.$el.data('model', this.model);
            this.$el.data('tpl', this.options.templateTpl);
            var btns = this.model.get('btns'),
                textFloat = btns.indexOf("textFloat") + 1,
                render;
            if (this.options.pel) {
                render = this.$el.html(html).attr({
                    'data-group': this.model.get('group'),
                    'data-template': this.model.get('template'),
                    'id': this.model.attributes.mdId
                });
                if (textFloat) { //如果存在textFloat
                    render.addClass("resizable");
                    render.removeClass("sortable-items"); //取消拖拽排序功能;
                    render.addClass("textFloat"); //设置为移动模块
                    render.css({"min-height": "60px"});
                    render.draggable(); //添加拖拽
                    render.resizable(); //添加自定义大小
                }
                this.options.pel.html(render);
                EventHelper.trigger('changeLayout');
                this.initContextMenus();
                this.options.pel = null;
            } else {
                var $obj;
                if (textFloat) {
                    $obj = this.$el.find(".view"); //浮动模式需要依赖<div class="view"></div>元素，<div class="view"></div>内为实际内容。
                } else {
                    $obj = this.$el;
                }
                $obj.html(html).attr({
                    'data-group': this.model.get('group'),
                    'data-template': this.model.get('template'),
                    'id': this.model.attributes.mdId
                });
                EventHelper.trigger('changeLayout');
                this.initContextMenus();
                $oneColumnSub = this.$el.find("[oneColumnSub]");
                length = $oneColumnSub.length;
                if (length) {
                    for(var i = 0; i< length; i++){
                        this.initData($oneColumnSub.eq(i),tempSave[i]);
                        //$oneColumnSub.eq(i).html(tempSave[i]);
                        //$oneColumnSub.eq(i).html(tempSave[i]);
                    }
                }
                return render;
            }
        }
    });
    return ItemView;
});