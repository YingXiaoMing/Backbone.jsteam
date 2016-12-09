<!--按钮样式-->
<link href="assets/js/templates/css/button_style.css" rel="stylesheet">
<div class="clear"></div>

<div class="form-group col-xs-12">
  <label class="col-xs-2 control-label">${field.label}</label>
  <div class="col-xs-10">
    <div class="flBtnStyle">
        <div class="setCtrl buttonStyleSelect">
            <span class="StyleListTitle">样式1</span>
            <div class="styleList styleList ">
                <div class="styleItem J_styleItem item101<% if(field.value=='J_styleItem_item101'){%> styleItem_choice<%}%>"  data-type="J_styleItem_item101"></div>
                <div class="styleItem J_styleItem item102<% if(field.value=='J_styleItem_item102'){%> styleItem_choice<%}%>" data-type="J_styleItem_item102" ></div>
                <div class="styleItem J_styleItem item103<% if(field.value=='J_styleItem_item103'){%> styleItem_choice<%}%>" data-type="J_styleItem_item103"></div>
                <div class="styleItem J_styleItem item104<% if(field.value=='J_styleItem_item104'){%> styleItem_choice<%}%>" data-type="J_styleItem_item104" ></div>
                <div class="styleItem J_styleItem item105<% if(field.value=='J_styleItem_item105'){%> styleItem_choice<%}%>" data-type="J_styleItem_item105"></div>
                <div class="styleItem J_styleItem item106<% if(field.value=='J_styleItem_item106'){%> styleItem_choice<%}%>" data-type="J_styleItem_item106"></div>
            </div>
            <span class="StyleListTitle">样式2</span>
            <div class="styleList styleList">
                <div class="styleItem J_styleItem item201<% if(field.value=='J_styleItem_item201'){%> styleItem_choice<%}%>" data-type="J_styleItem_item201" ></div>
                <div class="styleItem J_styleItem item202<% if(field.value=='J_styleItem_item202'){%> styleItem_choice<%}%>" data-type="J_styleItem_item202"></div>
                <div class="styleItem J_styleItem item203<% if(field.value=='J_styleItem_item203'){%> styleItem_choice<%}%>" data-type="J_styleItem_item203"></div>
                <div class="styleItem J_styleItem item204<% if(field.value=='J_styleItem_item204'){%> styleItem_choice<%}%>" data-type="J_styleItem_item204"></div>
                <div class="styleItem J_styleItem item205<% if(field.value=='J_styleItem_item205'){%> styleItem_choice<%}%>" data-type="J_styleItem_item205" ></div>
                <div class="styleItem J_styleItem item206<% if(field.value=='J_styleItem_item206'){%> styleItem_choice<%}%>" data-type="J_styleItem_item206"></div>
            </div>
            <span class="StyleListTitle">样式3</span>
            <div class="styleList styleList">
                <div class="styleItem J_styleItem item301<% if(field.value=='J_styleItem_item301'){%> styleItem_choice<%}%>" data-type="J_styleItem_item301"></div>
                <div class="styleItem J_styleItem item302<% if(field.value=='J_styleItem_item302'){%> styleItem_choice<%}%>" data-type="J_styleItem_item302" ></div>
                <div class="styleItem J_styleItem item303<% if(field.value=='J_styleItem_item303'){%> styleItem_choice<%}%>" data-type="J_styleItem_item303"></div>
                <div class="styleItem J_styleItem item304<% if(field.value=='J_styleItem_item304'){%> styleItem_choice<%}%>" data-type="J_styleItem_item304"></div>
                <div class="styleItem J_styleItem item305<% if(field.value=='J_styleItem_item305'){%> styleItem_choice<%}%>" data-type="J_styleItem_item305" ></div>
                <div class="styleItem J_styleItem item306<% if(field.value=='J_styleItem_item306'){%> styleItem_choice<%}%>" data-type="J_styleItem_item306"></div>
            </div>
            <span class="StyleListTitle">样式4</span>
            <div class="styleList styleList">
                <div class="styleItem J_styleItem item401<% if(field.value=='J_styleItem_item401'){%> styleItem_choice<%}%>" data-type="J_styleItem_item401"></div>
                <div class="styleItem J_styleItem item402<% if(field.value=='J_styleItem_item402'){%> styleItem_choice<%}%>" data-type="J_styleItem_item402"></div>
                <div class="styleItem J_styleItem item403<% if(field.value=='J_styleItem_item403'){%> styleItem_choice<%}%>" data-type="J_styleItem_item403"></div>
                <div class="styleItem J_styleItem item404<% if(field.value=='J_styleItem_item404'){%> styleItem_choice<%}%>" data-type="J_styleItem_item404"></div>
                <div class="styleItem J_styleItem item405<% if(field.value=='J_styleItem_item405'){%> styleItem_choice<%}%>" data-type="J_styleItem_item405"></div>
                <div class="styleItem J_styleItem item406<% if(field.value=='J_styleItem_item406'){%> styleItem_choice<%}%>" data-type="J_styleItem_item406"></div>
            </div>
        </div>
        <input class="form-control field" data-type="${field.type}" data-savetype="${field.savetype}" type="hidden" name='${field.name}' id='${field.name}' value="${field.value}">
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