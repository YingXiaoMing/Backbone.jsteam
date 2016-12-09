<link href="assets/js/templates/css/listPhoto.css" rel="stylesheet">
<div class="clear"></div>
<div class="form-group listPhoto col-xs-12">
  <label class="col-xs-2 control-label">${field.label}</label>
  <div class="listType col-xs-10">
    <a data-type="default<% if(field.value=='default'){%>" class="selected<%}%>"><img src="assets/js/templates/images/listPhoto/1.jpg"></a>
    <a data-type="default1<% if(field.value=='default1'){%>" class="selected<%}%>"><img src="assets/js/templates/images/listPhoto/2.jpg"></a>
    <a data-type="default2<% if(field.value=='default2'){%>" class="selected<%}%>"><img src="assets/js/templates/images/listPhoto/3.gif"></a>
   
  </div>
  <div class="clear"></div>
  <input type="hidden" class="field" data-type="${field.type}" data-savetype="${field.savetype}" name='${field.name}' id='${field.name}' value="${field.value}">
</div>
<script>
$(document).ready(function(e) {
    $(".listPhoto .listType > a").click(function(e) {
        $(this).addClass("selected");
		$(this).prevAll().removeClass("selected");
		$(this).nextAll().removeClass("selected");
		$("#${field.name}").val($(this).attr('data-type'));
    });
});
</script>