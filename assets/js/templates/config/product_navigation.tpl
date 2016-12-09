<!--产品导航-模块样式-->
<link href="assets/js/templates/css/product_navigation.css" rel="stylesheet">
<div class="clear"></div>

<div class="product_dh_mokuai product_dh_mokuai_Check" data-type="product_dh_mokuai101"><span class="checked"></span><img src="assets/js/templates/images/product_navigation/productNavHr.jpg" /></div>
<div class="product_dh_mokuai" data-type="product_dh_mokuai102"><span class="checked"></span><img src="assets/js/templates/images/product_navigation/productNavVl.jpg" /></div>
<script>
$(document).ready(function(e) {
    $(".product_dh_mokuai").click(function(e) {
        $(this).addClass("product_dh_mokuai_Check");
        $(this).prevAll().removeClass("product_dh_mokuai_Check");
        $(this).nextAll().removeClass("product_dh_mokuai_Check");
		$("#${field.name}").val($(this).attr('data-type'));
    });
});
</script>
<input class="form-control field" data-type="${field.type}" data-savetype="${field.savetype}" type="hidden" name='${field.name}' id='${field.name}' value="${field.value}">
