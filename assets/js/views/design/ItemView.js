define(function (require) {
    var $ = require('jquery');
    var _ = require('underscore');
    var EventHelper = require("helper/EventHelper");
    var ItemModel = require("models/ItemModel");
    var BaseView = require("views/design/BaseView");
    var ModalView = require("views/ModalView");
    var main = require('text!templates/config/main.tpl');
    var configTemplates = require('templates/config/template');
    var globalObj = require("app/global");
    require("nestable/nestable");
	require("jqueryui");
    require("css!nestable/nestable.css");
    var ItemView = BaseView.extend({
        editHandler: function (obj) {
            var attrlayer = this.model.get("attrlayer");
            var thiz = this;
            var content = "";
            var itemSeparator = globalObj.itemSeparator;
            if (attrlayer === "3") {
                var threelayer = require("text!templates/config/tab.tpl");
                var cpAttributes = this.model.get("cpAttributes");//this.model.get("cpAttributes")为获取二三级数据，用于tpl传值遍历
                content += _.template(threelayer)({
                    configTemplates: configTemplates,
                    attrlayer: attrlayer,
                    separator : itemSeparator,
                    fields: cpAttributes
                });
            } else {
                content = _.template(main)({
                    title: this.model.get("title"),
                    fields: this.model.get("cpAttributes"),
                    layername: null,
                    configTemplates: configTemplates
                });
            }

            var thiz = this;

            var modal = new ModalView({
                animate: true,
                title: '编辑' + this.model.get("title"),
                content: content
            });

            var initData = function (items, itemname) {
                var obj = "";
                if (itemname) {
                    obj = items.value;
                } else {
                    obj = items;
                }
                //异步加载数据。
                $.each(obj, function (name, item) {
                    var itemType = item.type;
                    var realName = "";
                    if (itemname) {
                        realName = itemname + '__value__' + name;
                    } else {
                        realName = name;
                    }
                    //alert(item.value+"===="+item.type+"==="+name);
                    switch (itemType) {
                        case "select" :
                            thiz.loadSelectData(item.dsType, realName, item.value, item.ds);
                            break;
                        case "editor":
                            var editor = KindEditor.create("#" + realName, globalApp.editorPath);
                            editor.html(item.value);
                            $("#" + realName).data(realName, editor);
                            break;
                    }
                });
            };
			
			
			
           modal.open(function () {
                var content = this.$content;
                var fields = content.find(".field");
                _.each(fields, function (e) {
                    var $e = $(e), type = $e.attr("data-savetype"), name = $e.attr("id");
                    switch (type) {
                        case "radio":
                            thiz.model.setCpAttributes1(name, $e.is(":checked"));
                            break;
                        case "checkbox":
                            thiz.model.setCpAttributes1(name, $e.is(":checked"));
                            break;
                        case "input":
                            thiz.model.setCpAttributes1(name, $e.val());
                            break;
                        case "textarea":
                            thiz.model.setCpAttributes1(name, $e.val());
                            break;
                        case "option":
                            var datas = [];
                            $e.find(".box").each(function () {
                                var data = {
                                    value: $(this).find("input[name='value']").val(),
                                    checked: $(this).find(".checked").filter(":checked").val() == 1 || false,
                                    type: $(this).find(".checked").attr("type")
                                };
                                datas.push(data);
                            });
                            thiz.model.setCpAttributes1(name, datas);
                            break;
                        case "textarea-split":
                            thiz.model.setCpAttributes1(name, _.chain(
                                $e.val().split("\n")).map(function (t) {
                                return $.trim(t);
                            }).filter(function (t) {
                                return t.length > 0;
                            }).value());
                            break;
                        case "select":
                            var valarr = _.map($e.find("option"), function (e) {
                                return {
                                    value: e.value,
                                    selected: e.selected,
                                    label: $(e).text()
                                };
                            });
                            thiz.model.setCpAttributes1(name, valarr);
                            break;
                        case "tree":
                            alert($e.find(".nestable").nestable('serialize'));
                            thiz.model.setCpAttributes1(name, $e.find(".nestable").nestable('serialize'));
                            break;
                        case "editor":
                            var ctx = $e.data(name).html();
                            thiz.model.setCpAttributes1(name, ctx);
                            break;
                    }
                });
                thiz.model.trigger("change");
            }, function () {
                var attrlayer = thiz.model.get("attrlayer");
                var cpAttributes = thiz.model.get("cpAttributes");
                if (attrlayer === "3") {
                    $.each(cpAttributes, function (name, item) {
                        initData(item, name);
                    });
                } else {
                    initData(cpAttributes);
                }

                this.$content.find(".nestable").nestable();
                var row = this.$content.find(".row");
                this.$content.delegate("button", "click", function (e) {
                    e.stopPropagation();
                    e.preventDefault();
                    var rel = $(this).attr("rel");
                    if (rel == 'removeHandler') {
                        var ul = thiz.findParentNodeByCls($(this), '.dd-list');
                        var lis = ul.children("li");
                        if (lis.length == 1) {
                            thiz.toast("至少要保留一个选项。");
                        } else {
                            thiz.findParentNodeByCls($(this), 'li.dd-item').remove();
                        }
                    } else if (rel == 'copyHandler') {
                        var li = thiz.findParentNodeByCls($(this), 'li.dd-item');
                        li.parent().append(li.clone());
                    } else if (rel == 'editHandler') {
                        var li = thiz.findParentNodeByCls($(this), 'li.dd-item');
                        row.find("input[name='value']").val(li.data("value"));
                        row.find("input[name='href']").val(li.data("href"));
                        alert(li.data("targetnav"));
                        row.find("select[name='targetNav']").val(li.data("targetnav"));
                        thiz.selectItem = li;
                    } else if (rel == 'updateHandler') {
                        if (!thiz.selectItem) {
                            thiz.toast("请选择要修改的菜单。");
                        } else {
                            thiz.selectItem.data({
                                value: row.find("input[name='value']").val(),
                                href: row.find("input[name='href']").val(),
                                targetNav: row.find("select[name='targetNav']").val()
                            });
                            thiz.selectItem.children(".dd3-content").find(".view").html(row.find("input[name='value']").val());
                        }
                    }
                });

                //绑定事件
                this.$content.delegate("input","change",function(e){
                	e.stopPropagation();
                    e.preventDefault();
                    var name = $(this).attr("name");
                    var type = $(this).data("savetype");
                    switch (type) {
                        case "block" :
                            var value = $("input[name='"+name+"']:checked").val();
                            thiz.model.setCpAttributes1(name,$(this).val());
                            $("input[name='"+name+"']").each(function(i,obj){
                                if(obj.value == value){
                                    $("#"+name+obj.value).show();
                                }else{
                                	$("#"+name+obj.value).hide();
                                }
                            });
                            break;
						case "style" :
                            var value = $("input[name='"+name+"']:checked").val();
                            thiz.model.setCpAttributes1(name,$(this).val());
                            $("input[name='"+name+"']").each(function(i,obj){
                                if(obj.value == value){
                                    $("#"+name+obj.value).show();
                                }else{
                                	$("#"+name+obj.value).hide();
                                }
                            });
                            break;
						case "mSytle" :
                            var value = $("input[name='"+name+"']:checked").val();
                            thiz.model.setCpAttributes1(name,$(this).val());
                            $("input[name='"+name+"']").each(function(i,obj){
                                if(obj.value == value){
                                    $("#"+name+obj.value).show();
                                }else{
                                	$("#"+name+obj.value).hide();
                                }
                            });
                            break;							
                        case "input" :
                            thiz.model.setCpAttributes1(name,$(this).val());
                            thiz.model.trigger("change");
                            break;
                        case "checkbox" :
                            thiz.model.setCpAttributes1(name,$(this).is(":checked"));
                            break;
                    }
                     thiz.model.trigger("change");
                    //modal.render();
                });

                this.$content.delegate("select", "change", function (e) {
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
                            thiz.model.setCpAttributes1(name, valarr);
                            break;
                        case "input" :
                            var value = $(this).val();
                            thiz.model.setCpAttributes1(name,value);
                            break;
                    }
                    thiz.model.trigger("change");
                    //modal.render();
                });


                this.$content.delegate(".paddings","change",function(e){
                    e.stopPropagation();
                    e.preventDefault();
                    var name = $(this).attr("name");
                    var type = $(this).data("savetype");
                    switch (type) {
                        case "padding":
                            var $padding = $(this).find(".padding-control"); //获取子DOM
                            $.each($padding,function(key,item){ //循环四个方向的输入框
                                thiz.model.attributes.padding[key].value = $padding.eq(key).val();
                            });
                            thiz.model.setCpAttributes1("padding", thiz.model.attributes.padding); //将修改后的数组，重新设值到thiz.model对象
                            break;
                    }
                     thiz.model.trigger("change");
                    //modal.render();
                });

            });
        },
        loadSelectData: function (type, domId, value, loadUrl) {
            if (type == "local") {
                require(["text!data/" + loadUrl], function (datas) {
                    _.each(eval(datas), function (v, k) {
                        if (v["selected"]) {
                            $("#" + domId).append("<option value='" + v["value"] + "' selected>" + v["label"] + "</option>");
                        } else {
                            $("#" + domId).append("<option value='" + v["value"] + "'>" + v["label"] + "</option>");
                        }
                    });
                    $("#" + domId).val(value);
                });
            }
        },
        initialize: function (options) {
            this.constructor.__super__.initialize.call(this, options);
        }
    });

    return {
        createView: function (attriutes, pel, templateTpl, isRender, htmlnr) {
            return new ItemView({
                model: new ItemModel(attriutes),
                templateTpl: templateTpl,
                pel: pel,
                isRender: isRender,
                htmlnr: htmlnr
            });
        }
    };
});