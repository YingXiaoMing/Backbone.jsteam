<!--画册目录-模块样式-->
<link href="assets/js/templates/css/photoGroupStyle.css" rel="stylesheet">
<div class="clear"></div>
<div class="form-group photoGroupStyle ${field.cls}">
  <label class="${field.labelcls} control-label">${field.label}</label>
  <div class="listType ${field.valuecls}">
    <a data-type="photoGroupStyle<% if(field.value=='photoGroupStyle1'){%>" class="selected<%}%>"><img src="assets/js/templates/images/photoGroupStyle/1.jpg"></a>
    <a data-type="photoGroupStyle<% if(field.value=='photoGroupStyle2'){%>" class="selected<%}%>"><img src="assets/js/templates/images/photoGroupStyle/2.jpg"></a>
  </div>
  <div class="clear"></div>
  <input class="form-control field" data-type="${field.type}" data-savetype="${field.savetype}" type="hidden" name='${field.name}' id='${field.name}' value="${field.value}">
</div>
<script>
$(document).ready(function(e) {
    $(".photoGroupStyle .listType > a").click(function(e) {
        $(this).addClass("selected");
		$(this).prevAll().removeClass("selected");
		$(this).nextAll().removeClass("selected");
		$("#${field.name}").val($(this).attr('data-type'));
    });
});
</script>