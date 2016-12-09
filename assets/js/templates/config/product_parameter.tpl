<!--产品展示-展示参数-->
<link href="assets/js/templates/css/product_parameter.css" rel="stylesheet">
<!--<script type="text/javascript" src="assets/js/templates/js/jquery.SuperSlide.js"></script>-->
<div class="clear"></div>

<div class="flBtnStyle">
    
    
	<!--<script type="text/javascript">
    $(document).ready(function(){
        $(".product_parameter .hh_list").slide({
            mainCell:"ul",
            prevCell:".hleft",
            nextCell:".hright",
            autoPage:true,
            effect:"left",
            autoPlay:true,
            vis:4
        });
    
    });
    </script>-->
    <div class="product_parameter">
        <div class="hh_list"> 
            <span class="hleft"></span>
            <span class="hright"></span>
            <ul>
                <li data-type="product_parameter101"><span class="checked"></span><img src="assets/js/templates/images/product_parameter/style1.jpg" /></li>
                <li data-type="product_parameter102"><span class="checked"></span><img src="assets/js/templates/images/product_parameter/style2.jpg" /></li>
                <li data-type="product_parameter103"><span class="checked"></span><img src="assets/js/templates/images/product_parameter/style3.jpg" /></li>
                <li data-type="product_parameter104"><span class="checked"></span><img src="assets/js/templates/images/product_parameter/style4.jpg" /></li>
                <li data-type="product_parameter105"><span class="checked"></span><img src="assets/js/templates/images/product_parameter/style5.jpg" /></li>
                <li data-type="product_parameter106"><span class="checked"></span><img src="assets/js/templates/images/product_parameter/style6.jpg" /></li>
                <li data-type="product_parameter107"><span class="checked"></span><img src="assets/js/templates/images/product_parameter/style7.jpg" /></li>
            </ul> 
        </div>
    </div>
    
    <input class="form-control field" data-type="${field.type}" data-savetype="${field.savetype}" type="hidden" name='${field.name}' id='${field.name}' value="${field.value}">
</div>
<script>
$(document).ready(function(e) {
    $(".product_parameter ul li").click(function(e) {
        $('.product_parameter ul li').removeClass("parameter_choice");
        $(this).addClass("parameter_choice");
		$("#${field.name}").val($(this).attr('data-type'));
    });
});
</script>