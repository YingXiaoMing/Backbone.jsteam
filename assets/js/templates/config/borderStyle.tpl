<!--背景图像位置-->
<div class="form-group col-xs-12 backgroundRepeat ${field.cls}">
  <label class="${field.labelcls} control-label col-xs-2">${field.label}</label>
  <div class="col-xs-10">
<select class="field form-control" data-type="${field.type}" data-savetype="${field.savetype}" id='${field.name}' name="${field.name}">
    <option value="solid">实线</option>
    <option value="dashed">虚线</option>
    <option value="double">双线</option>
</select>
</div>
  <div class="clear"></div>
</div>
<script>
    $(function(){
        $("#${field.name}").find("option[value='${field.value}']").attr("selected","selected");
    });
</script>