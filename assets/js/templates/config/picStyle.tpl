<link href="assets/js/templates/css/moduleStyle.css" rel="stylesheet">
<div class="form-group moduleStyle col-xs-12">
  <label class="col-xs-2 control-label">${field.label}</label>
  <div class="col-xs-10 moduleStyle_list">
    <a <% if (field.value=="dots") { %> class="checked" <% } %> ><img src="assets/js/templates/images/carouselPhoto/1.jpg" alt="圆点" title="dots" /><span></span></a>
    <a <% if (field.value=="digital") { %> class="checked" <% } %> ><img src="assets/js/templates/images/carouselPhoto/2.jpg"  alt="数字" title="digital"/><span></span></a>
   	<a <% if (field.value=="pic") { %> class="checked" <% } %> ><img src="assets/js/templates/images/carouselPhoto/3.jpg" alt="小图" title="pic"/><span></span></a>
  </div>
  <input class='form-control field moduleStyle_name' data-type="${field.type}" data-savetype="${field.savetype}" type='hidden' name='${field.name}' id='${field.name}' value ='${field.value}' />
</div>
<script>
$(document).ready(function(e) {
    $(".moduleStyle_list a").click(function(e) {
		$(".moduleStyle_name").val($(this).find("img").attr("title"));
		$(this).addClass("checked");
		$(this).prevAll().removeClass("checked");
		$(this).nextAll().removeClass("checked");
    });
});
</script>
