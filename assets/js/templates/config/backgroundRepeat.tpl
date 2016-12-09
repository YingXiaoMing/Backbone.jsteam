<!--背景图像位置-->
<div class="form-group col-xs-12 backgroundRepeat ${field.cls}">
  <label class="${field.labelcls} control-label col-xs-2">${field.label}</label>
<select class="field form-control col-xs-10" data-type="${field.type}" data-savetype="${field.savetype}" id='${field.name}' name="${field.name}">
    <option value="repeat">重复</option>
    <option value="no-repeat">不重复</option>
    <option value="repeat-x">水平重复</option>
    <option value="repeat-y">垂直重复</option>
</select>
  <div class="clear"></div>
</div>
<script>
    $(function(){
        $("#${field.name}").find("option[value='${field.value}']").attr("selected","selected");
    });
</script>