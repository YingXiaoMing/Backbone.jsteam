define(function (require) {
    var $ = require("jquery");
    var _ = require("underscore");
    var ueditorOffline = require("ueditorOffline");
    var EventHelper = require("helper/EventHelper");
    var GroupCollection = require("collections/GroupCollection");
    var HeadView = require("views/HeadView");
    var DesignView = require("views/DesignView");
    var SidebarView = require("views/SidebarView");
    var groupJson = require("text!data/group.json");
    var moduleJson = require("text!data/module.json");
    var jsUtil = require("kenforJsUtil");
    var AsideView = require("views/AsideView");
    var colTool = require("data/col");
    var groupView = require('text!templates/group.tpl');
    var styleJson = require("text!data/public_css.json");
    var ItemModel = require("models/ItemModel");
    var toastr = require("toastr");
    var moduleView = require("views/ModuleView");

    _.templateSettings = {
        interpolate: /\$\{(.+?)\}/g,
        evaluate: /<%([\s\S]+?)%>/g
    };
    toastr.options = {
        "positionClass": "toast-top-center",
        "showDuration": 0,
        "hideDuration": 0,
        "timeOut": 5000,
        "extendedTimeOut": 1000,
        "showEasing": "swing",
        "hideEasing": "linear",
        "showMethod": "show",
        "hideMethod": "hide"
    };
    window.toastr = toastr;
    /*function initUEditor(id, config) {
        _editor = UE.getEditor(id, config);
    }*/
     var _editor;
    $(function () {
        _editor = UE.getEditor('upload_ue', {
            toolbars: [['insertimage', 'attachment']],
            wordCount: false,
            elementPathEnabled: false,
            isShow: false //是否显示
        });
        _editor.ready(function () {
            //设置编辑器不可用
            //_editor.setDisabled();
            //侦听图片插入
            _editor.addListener('beforeInsertImage', function (t, arg) {
                //console.log(JSON.stringify(arg));
                window.tempPictureList = arg;
            });
            //侦听文件上传
            _editor.addListener('afterUpfile', function (t, arg) {

            })
        });
        UE.Editor.prototype.getActionUrl = function (action) {
            var actionName = this.getOpt(action) || action,
                imageUrl = this.getOpt('imageUrl'),
                serverUrl = this.getOpt('serverUrl');
            if (!serverUrl && imageUrl) {
                serverUrl = imageUrl.replace(/^(.*[\/]).+([\.].+)$/, '$1controller$2');
            }

            //alert(action)
            //自定义接口------------------------------------------
            if (action == 'uploadimage') {//拦截图片上传请求
                //这里调用自定义接口
                return 'http://192.168.4.100/ueditor/imageUploadServlet?action=uploadimage';
            }
            //--------------------------------------------------

            var result;
            if (serverUrl) {
                serverUrl = serverUrl + (serverUrl.indexOf('?') == -1 ? '?' : '&') + 'action=' + (actionName || '');
                result = UE.utils.formatUrl(serverUrl);
            } else {
                result = '';
            }
            return result;
        }
    });
    //弹出图片上传的对话框
    window.editorUpImage = function (extend_function) {
        var myImage = _editor.getDialog("insertimage");
        myImage.open();
        extend_function();
    };
    //弹出文件上传的对话框
    window.editorUpFiles = function () {
        var myFiles = _editor.getDialog("attachment");
        myFiles.open();
    };


    return {
        startdrag: 0,
        stopsave: 0,
        currentDragNode: null,
        initGlobalEvent: function () {
            $(window).resize(function () {
                EventHelper.trigger('resize');
            });
            EventHelper.on("saveLayout", this.saveLayout, this);
        },
        supportstorage: function () {
            if (typeof window.localStorage == 'object')
                return true;
            else
                return false;
        },
        saveLayout: function () {
            /*var design= $(".design");
             function getChildren(obj,item){
             obj.children().each(function(){
             if($(this).is(".sortable")){
             var sortable = {
             type:'sortable',
             children: []
             };
             item.children.push(sortable);
             if($(this).children(".box")){
             $(this).children(".box").each(function(){
             var temp = {
             type:'box',
             attributes:$(this).data("model").attributes,
             tpl:$(this).data("tpl"),
             children:[]
             };
             sortable.children.push(temp);
             getChildren($(this).find(">.view:eq(0)"),temp);
             });
             }
             }else{
             getChildren($(this),item);
             }
             });
             }
             var boxes=[];
             design.children(".box").each(function(){
             var temp = {
             type:'box',
             attributes:$(this).data("model").attributes,
             tpl:$(this).data("tpl"),
             children:[]
             };
             getChildren($(this).find(">.view:eq(0)"),temp);
             boxes.push(temp);
             });
             if (this.supportstorage()) {
             localStorage.setItem("data", JSON.stringify(boxes));
             }*/
        },
        randomNumber: function () {
            return this.randomFromInterval(1, 1e6);
        },
        randomFromInterval: function (e, t) {
            return Math.floor(Math.random() * (t - e + 1) + e);
        },
        initView: function () {
            var appthiz = this;
            var url = window.location.href;
            //拿到路由的参数
            var id = jsUtil.getUrlParam(url, "id");
            console.log(id);
            require(["text!comdata/user/commondata/column.json"], function (data) {
                colTool.setCols(eval("(" + data + ")"));
                colTool.setCurrColById(id);
            });

            var initData = function (dom, datas) {
                var design = $("" + dom);
                _.each(datas, function (item, i) {
                    var target = item.attributes.target ? item.attributes.target : "ItemView";
                    var id = appthiz.randomNumber();
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
                });
            };

            if (id) {
                require(["text!comdata/user/commondata/comm.json"], function (data) {
                    var datas = eval("(" + data + ")");
                    alert(datas.children);
                    initData(datas.children);
                });

                require(["text!comdata/user/pagedata/" + id + ".json"], function (dataJson) {
                    var datas = eval("(" + dataJson + ")");
                    $.each(datas, function (name, item) {
                        initData(name, item);
                    });
                });
            }
        },
        initialize: function () {
            // 头部初始化
            new HeadView();
            // 设计初始化
            new DesignView();

            new AsideView({
                model: new ItemModel(eval(groupJson)),
                collection: new ItemModel(eval("(" + styleJson + ")")),
                view: new ItemModel(eval("("+ moduleJson +")"))
            });//注入josn数据

            // 侧边栏初始化
            new SidebarView({
                collection: new GroupCollection(eval(groupJson))//注入josn数据
                // 初始化全局事件
            });
            new moduleView({
                collection : new GroupCollection(eval(moduleJson))
            })
            this.initGlobalEvent();
            this.initView();
        }
    };
});
