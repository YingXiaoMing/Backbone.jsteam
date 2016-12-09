
<div class="form-group col-xs-12">
  <label class="col-xs-2 control-label">${field.label}</label>
  <div class="col-xs-10">
  	<select id="${field.name}" class="field form-control" data-type="${field.type}" data-savetype="${field.savetype}" name="${field.name}">
        <option value="12">12</option>
        <option value="14">14</option>
        <option value="16">16</option>
        <option value="18">18</option>
    </select>
  </div>
</div>

<script>
    $(function(){
        $("#${field.name}").find("option[value='${field.value}']").attr("selected","selected");
    });
</script>