<link href="assets/js/templates/css/carouselPhoto.css" rel="stylesheet">
<div class="clear"></div>
<div class="form-group carouselPhoto ${field.cls} col-xs-12">
  <label class="${field.labelcls} control-label col-xs-2">${field.label}</label>
  <div class="listType ${field.valuecls} col-xs-10">
    <a title="圆点轮播" data-type="carouselPhoto1<% if(field.value=='carouselPhoto1'){%>" class="selected<%}%>"><img src="assets/js/templates/images/carouselPhoto/1.jpg"></a>
    <a title="数字轮播" data-type="carouselPhoto2<% if(field.value=='carouselPhoto2'){%>" class="selected<%}%>"><img src="assets/js/templates/images/carouselPhoto/2.jpg"></a>
    <a title="大图预览" data-type="carouselPhoto3<% if(field.value=='carouselPhoto3'){%>" class="selected<%}%>"><img src="assets/js/templates/images/carouselPhoto/3.jpg"></a>
  </div>
  <div class="clear"></div>
  <input class="form-control field" data-type="${field.type}" data-savetype="${field.savetype}" type="hidden" name='${field.name}' id='${field.name}' value="${field.value}">
</div>
<script>
$(document).ready(function(e) {
    $(".carouselPhoto .listType > a").click(function(e) {
        $(this).addClass("selected");
		$(this).prevAll().removeClass("selected");
		$(this).nextAll().removeClass("selected");
		$("#${field.name}").val($(this).attr('data-type'));
    });
});
</script>