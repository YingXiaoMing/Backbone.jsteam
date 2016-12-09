<!--在线客服-高级-QQ样式-->
<link href="assets/js/templates/css/onlineService.css" rel="stylesheet">
<div class="clear"></div>
<div class="form-group onlineService ${field.cls}">
  <label class="${field.labelcls} control-label">${field.label}</label>
  <div id="onlineService">
  <dl>
    <dt>
      <input value="onlineService1" type="radio" name='qq' <% if(field.value=='onlineService1'){%>checked="checked"<%}%>>
      <img src="assets/js/templates/images/onlineService/1.gif"/></dt>
    <dt>
      <input value="onlineService2" type="radio" name='qq' <% if(field.value=='onlineService2'){%>checked="checked"<%}%>>
      <img src="assets/js/templates/images/onlineService/2.gif"/></dt>
    <dt>
      <input value="onlineService3" type="radio" name='qq' <% if(field.value=='onlineService3'){%>checked="checked"<%}%>>
      <img src="assets/js/templates/images/onlineService/3.gif"/></dt>
    <dt>
      <input value="onlineService4" type="radio" name='qq' <% if(field.value=='onlineService4'){%>checked="checked"<%}%>>
      <img src="assets/js/templates/images/onlineService/4.gif"/></dt>
    <div class="clear"></div>
  </dl>
  <div class="clear"></div>  
  </div>
  <input class="form-control field" data-type="${field.type}" data-savetype="${field.savetype}" type="hidden" name='${field.name}' id='${field.name}' value="${field.value}">
</div>
<script>
$(document).click(function(e) {
var qq = $('#onlineService input[name="qq"]:checked').val();
$("#${field.name}").val(qq);
});
</script>
