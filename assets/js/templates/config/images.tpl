<!--引入图片-->
<link href="assets/js/templates/css/images.css" rel="stylesheet">
<div class="form-group col-xs-12 ${field.cls}">
  <label class="${field.labelcls} control-label col-xs-2">${field.label}</label>
  <div class="${field.valuecls} images_tpl_box col-xs-10">
	<div onclick="editorUpImage(innerBackgroundImage);">
        <div id="innerBackgroundPictures" class="clearfix"><img src="assets/js/templates/images/picture/floatimgadd.jpg" width="80"/></div>
    </div>
    <div class="clear"></div>
  </div>
  <div class="clear"></div>
    <script>
    /**
     * 选择图片回调处理
     */
    function innerBackgroundImage() {
        $(".edui-okbutton").off("click.settingInnerBackground").on("click.settingInnerBackground", function () {
            var tempPictureList = window.tempPictureList,
                    html = "";
            //console.log(tempPictureList);
            $.map(tempPictureList, function (item, key) {
                if (key == 0) {
                    html += '<div class="pull-left"><img  alt="' + item.alt + '" src="' + item.src + '"/></div>';
                }
                // else {
                //     html += '<div class="pull-left" style="margin-left: 5px;"><img alt="' + item.alt + '" src="' + item.src + '"/></div>';
                // }
            });
            $("#innerBackgroundPictures").html(html).data("pictures", tempPictureList);
            window.tempPictureList = undefined;
        });
    }
    
    //保存数据
    var saveData = function () {
        var data = {};
        data = $.extend(true, originData, data);
        
        data.innerBackgroundMode = $("[name='innerBackground-mode']:checked").val();
        if (data.innerBackgroundMode == 0) {
            data.innerBackground.color = data.defaults.innerBackground.color;
            data.innerBackground.images = data.defaults.innerBackground.images;
            data.innerBackground.showMode = data.defaults.innerBackground.showMode;
        }
        else {
            data.innerBackground.color = $("#innerBackgroundColor").val();
            var $innerBackgroundPictures = $("#innerBackgroundPictures");
            if ($innerBackgroundPictures.data("pictures")) {
                data.innerBackground.images = $innerBackgroundPictures.data("pictures")[0];
            }
            data.innerBackground.showMode = $("#innerBackgroundMode option:selected").val();
        }
        
        console.log(data);

        return data;
    }

</script>
</div>
