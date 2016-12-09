
<div class="form-group col-xs-12">
  <label class="col-xs-2 control-label">${field.label}</label>
  <div class="col-xs-10">
  	<select id="${field.name}" class="field form-control" data-type="${field.type}" data-savetype="${field.savetype}" name="${field.name}">
        <option value="SimSun">宋体</option>
        <option value="PMingLiU">新细明体</option>
        <option value="FangSong_GB2312">仿宋_GB2312</option>
        <option value="Miscrosoft YaHei">微软雅黑</option>
    </select>
  </div>
</div>

<script>
    $(function(){
        $("#${field.name}").find("option[value='${field.value}']").attr("selected","selected");
    });
</script>
