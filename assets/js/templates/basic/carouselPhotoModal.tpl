<style>
    .modal-body {
        padding: 0;
    }

    .ui-widget-header {
        background: #e4e5e4;
        border: 0;
        border-bottom: 1px solid #bfbfbf;
    }

    .ui-widget-content {
        border: none;
        background: none
    }

    .ui-tabs .ui-tabs-nav {
        padding: 0;
        margin-left: 1px;
    }

    .ui-tabs .ui-tabs-nav li {
        padding: 0;
        margin: 0;
        margin-left: -1px;
    }

    .kenfor_upload_tabsclass .ui-tabs-nav .ui-tabs-anchor {
        font-weight: normal;
        font-size: 12px;
        padding: 5px 10px;
    }

    .ui-corner-all, .ui-corner-top, .ui-corner-right, .ui-corner-tr, .ui-corner-all, .ui-corner-top, .ui-corner-left, .ui-corner-tl {
        border-radius: 0;
    }

    .uloadPic_div {
        padding: 10px 0;
        text-align: center;
    }

    .uloadPic_div input {
        margin: 0px 10px;
    }

    .kenfor_tab_con {
        height: 500px;
        overflow-y: auto;
        border: 1px solid #bfbfbf;
        border-top: none;
    }
</style>
<div id="kenfor_upload_tabs" class="kenfor_upload_tabsclass ui-tabs ui-widget ui-widget-content ui-corner-all">
    <ul class="ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all" role="tablist">
        <li class="ui-state-default ui-corner-top ui-tabs-active ui-state-active">
            <a href="#tab1" class="ui-tabs-anchor">常规</a>
        </li>
        <li class="ui-state-default ui-corner-top">
            <a href="#tab2" class="ui-tabs-anchor">图片特效</a>
        </li>
        <li class="ui-state-default ui-corner-top">
            <a href="#tab3" class="ui-tabs-anchor">展示设置</a>
        </li>
        <li class="ui-state-default ui-corner-top">
            <a href="#tab4" class="ui-tabs-anchor">幻灯片</a>
        </li>
    </ul>
    <div class="scrollbar kenfor_tab_con">
        <div id="tab1" class="ui-tabs-panel ui-widget-content ui-corner-bottom">
            <div class="form-group col-xs-12">
                <label class="col-xs-2 control-label">模块标题</label>
                <div class="col-xs-10">
                    <input class="form-control field" data-type="input" data-savetype="input" type="text"
                           name="tab1__value__name" id="tab1__value__name" value="列表多图">
                </div>
            </div>
            <link href="assets/js/templates/css/productStyleBox.css" rel="stylesheet">
            <div class="clear"></div>
            <div class="form-group productStyleBox ">
                <label class=" control-label">展示样式</label>
                <div class="ctrl hard-width-296 hard-height-54 overFlowHidden">
                    <div class="listType ">
                        <a data-type="productStyleBox"><img src="assets/js/templates/images/productStyleBox/1.jpg"></a>
                        <a data-type="productStyleBox"><img src="assets/js/templates/images/productStyleBox/2.gif"></a>
                        <a data-type="productStyleBox"><img src="assets/js/templates/images/productStyleBox/3.jpg"></a>
                    </div>
                </div>
                <div class="clear"></div>
                <input class="form-control field" type="hidden" value="待定">
            </div>
            <script>
                $(document).ready(function (e) {
                    $(".productStyleBox .listType > a").click(function (e) {
                        $(this).addClass("selected");
                        $(this).prevAll().removeClass("selected");
                        $(this).nextAll().removeClass("selected");
                        $("#tab1__value__showStyle").val($(this).attr('data-type'));
                    });
                });
            </script>
        </div>
        <div id="tab2" class="ui-tabs-panel ui-widget-content ui-corner-bottom">
            <link href="assets/js/templates/css/imageEffects.css" rel="stylesheet">
            <div class="form-group imageEffects "> 鼠标悬停效果：
                <div class="listType ">
                    <a data-type="imageEffects1"></a>
                </div>
                <div class="clear"></div>
                <input class="form-control field" type="hidden" value="待定">
            </div>
            <script>
                $(document).ready(function (e) {
                    $(".imageEffects .listType > a").click(function (e) {
                        $(this).addClass("selected");
                        $(this).prevAll().removeClass("selected");
                        $(this).nextAll().removeClass("selected");
                        $("#tab2__value__mouseHoverStyle").val($(this).attr('data-type'));
                    });
                });
            </script>
        </div>
        <div id="tab3" class="ui-tabs-panel ui-widget-content ui-corner-bottom">
             <p>基本设置</p>
            <div class="form-group row">
                <label class="col-xs-2 control-label">轮播设置：</label>
                <div class="col-xs-10">
                    <div class="clearfix">
                        <label class="radio-inline">
                            <input type="radio" value="0" checked> 自动轮播
                        </label>
                        <label class="radio-inline">
                            <input type="radio" value="1"> 手动轮播
                        </label>
                    </div>
                    <div id="tab3__value__showSetting1">
                        <div class="form-group row">
                            <label class="col-xs-2 control-label">展示时间：</label>
                            <div class="col-xs-10">
                                <input class="form-control field" type="text" value="4.0">
                                秒
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-xs-2 control-label">切换速度：</label>
                            <div class="col-xs-10">
                                <input class="form-control field" data-type="input" value="1.5">
                                秒
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <p>跳转设置：</p>
            <div class="form-group row">
                <label class="col-xs-2 control-label">显示更多：</label>
                <div class="col-xs-10">
                    <div class="clearfix">
                        <label class="radio-inline">
                            <input type="radio" value="0"> 是
                        </label>
                        <label class="radio-inline">
                            <input type="radio" value="1"> 否
                        </label>
                    </div>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-xs-2 control-label">点击图片弹出：</label>
                <div class="col-xs-10">
                    <div class="clearfix">
                        <label class="radio-inline">
                            <input type="radio" value="0"> 图片链接页面
                        </label>
                        <label class="radio-inline">
                            <input type="radio" value="1"> 幻灯片
                        </label>
                        <label class="radio-inline">
                            <input type="radio" value="1"> 无效果
                        </label>
                    </div>
                    <div>
                        <div class="form-group row">
                            <label class="col-xs-2 control-label">链接打开方式：</label>
                            <div class="col-xs-10">
                                <select>
                                <option>新窗口</option>
                                <option>当前窗口</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="tab4" class="ui-tabs-panel ui-widget-content ui-corner-bottom">
            <link href="assets/js/templates/css/imageEffects.css" rel="stylesheet">
            <div class="form-group imageEffects "> 鼠标悬停效果：
                <div class="listType ">
                    <a data-type="imageEffects1"></a>
                    <a data-type="imageEffects2"></a>
                </div>
                <div class="clear"></div>
                <input class="form-control field" type="hidden" value="待定">
            </div>
            <script>
                $(document).ready(function (e) {
                    $(".imageEffects .listType > a").click(function (e) {
                        $(this).addClass("selected");
                        $(this).prevAll().removeClass("selected");
                        $(this).nextAll().removeClass("selected");
                        $("#tab2__value__mouseHoverStyle").val($(this).attr('data-type'));
                    });
                });
            </script>
        </div>
    </div>
</div>
<script>
    $(function () {
        $("#kenfor_upload_tabs").tabs();
    });
</script>