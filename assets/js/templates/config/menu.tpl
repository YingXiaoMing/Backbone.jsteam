<!--按钮样式-->
<link href="assets/js/templates/css/menu_edit.css" rel="stylesheet">

<script type="text/javascript">
$(document).ready(function(){
    $( "#menustyle_tab" ).tabs();
});
</script>
<div id="menustyle_tab">
    <div id="mainmenu_color" >
        <div class="tilte">风格</div>
        <ul>
            <li><a href="#menustyle_tab-1" class="bgcor1"></a></li>
            <li><a href="#menustyle_tab-2" class="bgcor2"></a></li>
            <li><a href="#menustyle_tab-3" class="bgcor3"></a></li>
            <li><a href="#menustyle_tab-4" class="bgcor4"></a></li>
            <li><a href="#menustyle_tab-5" class="bgcor5"></a></li>
            <li><a href="#menustyle_tab-6" class="bgcor6"></a></li>
            <li><a href="#menustyle_tab-7" class="bgcor7"></a></li>
            <li><a href="#menustyle_tab-8" class="bgcor8"></a></li>
            <li><a href="#menustyle_tab-9" class="bgcor9"></a></li>
            <li><a href="#menustyle_tab-10" class="bgcor10"></a></li>
            <li><a href="#menustyle_tab-11" class="bgcor11"></a></li>
            <li><a href="#menustyle_tab-12" class="bgcor12"></a></li>

        </ul>
        <div class="scrollbar" style=" height:300px;">
            <div id="menustyle_tab-1" >
                <div class="styleBlockSet panelChecked"><div class="styleImageFrame" id="pat0" ></div><div class="vipBottom " id="vipBottom0" ><div class="vipBottomDiv"></div><div class="vipBottomDivStyle">默认</div></div></div>
                <div class="styleBlockSet pointer"><img class="styleImageFrame" id="pat948" src="assets/js/templates/images/menu/ALQHCAIQ4tmovwUYhrG9-gc.jpg" ><div class="vipBottom" id="vipBottom948" style="display: none;"><div class="vipBottomDiv"></div><div class="vipBottomDivStyle">948</div></div></div>
            </div>
            <div id="menustyle_tab-2">
            </div>
            <div id="menustyle_tab-3">
            </div>
            <div id="menustyle_tab-4">
            </div>
            <div id="menustyle_tab-5">
            </div>
            <div id="menustyle_tab-6">
            </div>
            <div id="menustyle_tab-7">
            </div>
            <div id="menustyle_tab-8">
            </div>
            <div id="menustyle_tab-9">
            </div>
            <div id="menustyle_tab-10">
            </div>
            <div id="menustyle_tab-11">
            </div>
            <div id="menustyle_tab-12">
            </div>
        </div>
    </div>
</div>
<script>
$(document).ready(function(e) {
    $(".styleItem").click(function(e) {
        $('.J_styleItem').removeClass("styleItem_choice");
        $(this).addClass("styleItem_choice");
		$("#${field.name}").val($(this).attr('data-type'));
    });
});
</script>