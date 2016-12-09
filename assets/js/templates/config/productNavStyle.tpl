<link href="assets/js/templates/css/moduleStyle.css" rel="stylesheet">
<div class="form-group moduleStyle col-xs-12">
  <label class="col-xs-2 control-label">${field.label}</label>
  <div class="col-xs-10 moduleStyle_list">
    <a <% if (field.value=="0") { %> class="checked" <% } %> ><img src="assets/js/templates/images/productNav/m1.jpg" title="简易横向样式" alt="0" /><span></span></a>
    <a <% if (field.value=="1") { %> class="checked" <% } %> ><img src="assets/js/templates/images/productNav/m2.jpg"  title="简易纵向样式" alt="1"/><span></span></a>
  </div>
  <input class='form-control field moduleStyle_name' data-type="${field.type}" data-savetype="${field.savetype}" type='hidden' name='${field.name}' id='${field.name}' value ='${field.value}' />
</div>
<script>
$(document).ready(function(e) {
    $(".moduleStyle_list a").click(function(e) {
		$(".moduleStyle_name").val($(this).find("img").attr("alt"));
		$(this).addClass("checked");
		$(this).prevAll().removeClass("checked");
		$(this).nextAll().removeClass("checked");
    });
});
</script>
