<div class="form-group col-xs-12">
	<label class="col-xs-2 control-label">${field.label}</label>
	<div class="col-xs-10">
		<input class='form-control field' data-type="${field.type}" data-savetype="${field.savetype}" type='text' name='${field.name}' id='${field.name}' value ='${field.value}'>
    <a onclick="editorUpFiles(${field.name});" style="cursor:pointer">上传文件</a>
	</div>
<script>
function ${field.name}() {
    $(".edui-okbutton").off("click.settingInnerBackground").on("click.settingInnerBackground", function () {
        var tempPictureList = window.tempPictureList,
              html = "";
        $.map(tempPictureList, function (item, key) {
            if (key == 0) {
                html += item.src
            }
        });
        $("#${field.name}").val(html).data("pictures", tempPictureList);
        window.tempPictureList = undefined;
    });
}
</script>
</div>