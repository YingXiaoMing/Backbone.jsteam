<!--背景图像固定或跟随滚动-->
<link href="assets/js/templates/css/backgroundAttachment.css" rel="stylesheet">
<div class="clear"></div>
<div class="form-group backgroundAttachment col-xs-12 ${field.cls}">
  <label class="${field.labelcls} control-label  col-xs-2">${field.label}</label>
  <div id="backgroundAttachment" class="col-xs-10">
  <dl>
    <dt>
      <input value="scroll" type="radio" name='backgroundAttachment' <% if(field.value=='scroll'){%>checked="checked"<%}%>>默认</dt>
    <dt>
      <input value="fixed" type="radio" name='backgroundAttachment' <% if(field.value=='fixed'){%>checked="checked"<%}%>>锁定</dt>
    <div class="clear"></div>
  </dl>
  <div class="clear"></div>  
  </div>
  <input class="form-control field" data-type="${field.type}" data-savetype="${field.savetype}" type="hidden" name='${field.name}' id='${field.name}' value="${field.value}">
    <div class="clear"></div>  
</div>
<script>
$(document).click(function(e) {
var backgroundAttachment = $('#backgroundAttachment input[name="backgroundAttachment"]:checked').val();
$("#${field.name}").val(backgroundAttachment);
});
</script>
