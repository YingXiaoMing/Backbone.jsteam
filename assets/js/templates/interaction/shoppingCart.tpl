${toolbarTemplate(buttons)}
<link href="assets/js/templates/css/shoppingCart.css" rel="stylesheet">
<div class="view">
    	<div class="shoppingCart">
            <div class="cartPanel ${cpAttributes.tab1.value.cartButtonStyle.value}">
                <span class="cartButtonLeft"></span>
                <a class="cartButtonText" href="javascript:;">我的购物车</a>
                <span class="cartButtonRight"></span>

                <span class="cartButton_span"></span>

                <div class="cartButton_hover" id="cartButton_hover">
                    <div class="NoGoods">
                        <span></span>
                        <div class="NoGoodsText">
                            <p>您的购物车内暂时没有任何产品。</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</div>

<script>
   $(document).ready(function(){
        $(".cartPanel").hover(function(){
            //当鼠标移动到.hov的时候，执行下面的事件
            $(this).find(".cartButton_span").show();
            $(this).find(".cartButton_hover").css("z-index","2").stop(true).slideDown(300);
            $(this).find(".cartPanel").css("border-radius","5px 5px 0 0");
        },function(){
            $(this).find(".cartButton_span").hide();
            $(this).find(".cartButton_hover").css("z-index","1").stop(true).slideUp(300);
        });
   });
</script>