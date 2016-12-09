${toolbarTemplate(buttons)}
<div class="view">
	<div style="text-align:center; margin:0px auto; cursor:pointer;">
        <div id="${cpAttributes.tab1.pidname}" class="clearfix"><img src="assets/js/templates/images/picture/floatimgadd.jpg"  onclick="editorUpImage(${cpAttributes.tab1.pidname});" /></div>

    </div>

    <script>
    function ${cpAttributes.tab1.pidname}() {
        $(".edui-okbutton").off("click.settingInnerBackground").on("click.settingInnerBackground", function () {
            var tempPictureList = window.tempPictureList,
                  html = "";
            $.map(tempPictureList, function (item, key) {
                if (key == 0) {
                    html += item.src
                }
            });

            $("#${cpAttributes.tab1.pidname} img").attr("src",html);
            window.tempPictureList = undefined;
        });
    }
    </script>
    
</div>


