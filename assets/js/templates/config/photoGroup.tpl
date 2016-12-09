<link href="assets/js/templates/css/photoGroup.css" rel="stylesheet">
<div class="clear"></div>
<div class="form-group photoGroup ${field.cls} col-xs-12">
  <label class="${field.labelcls} control-label col-xs-2">${field.label}</label>
  <div class="listType ${field.valuecls} col-xs-10">
    <a data-type="photoGroup1<% if(field.value=='photoGroup1'){%>" class="selected<%}%>"><img src="assets/js/templates/images/photoGroup/photoGroup_1.jpg"></a>
    <a data-type="photoGroup2<% if(field.value=='photoGroup2'){%>" class="selected<%}%>"><img src="assets/js/templates/images/photoGroup/photoGroup_2.jpg"></a>
  </div>
  <div class="clear"></div>
  <input class="form-control field" data-type="${field.type}" data-savetype="${field.savetype}" type="hidden" name='${field.name}' id='${field.name}' value="${field.value}">
</div>
<script>
$(document).ready(function(e) {
    $(".photoGroup .listType > a").click(function(e) {
        $(this).addClass("selected");
		$(this).prevAll().removeClass("selected");
		$(this).nextAll().removeClass("selected");
		$("#${field.name}").val($(this).attr('data-type'));
    });
});
</script>