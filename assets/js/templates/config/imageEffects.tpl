<!--鼠标悬停效果-->
<link href="assets/js/templates/css/imageEffects.css" rel="stylesheet">
<div class="form-group imageEffects_box ${field.cls} col-xs-12">
  <label class="${field.labelcls} control-label col-xs-2">${field.label}</label>
  <div class="listType ${field.valuecls} col-xs-10"> 
    <a data-type="default<% if(field.value=='default'){%>" class="selected<%}%>"></a>
    <a data-type="imageEffects_Border<% if(field.value=='imageEffects_Border'){%>" class="selected<%}%>"></a>
    <a data-type="imageEffects_Magnifier<% if(field.value=='imageEffects_Magnifier'){%>" class="selected<%}%>"></a>
    <a data-type="imageEffects_FullMaks<% if(field.value=='imageEffects_FullMaks'){%>" class="selected<%}%>"></a>
    <a data-type="imageEffects_HalfMaks<% if(field.value=='imageEffects_HalfMaks'){%>" class="selected<%}%>"></a>
    <a data-type="imageEffectsAnimate_Magnify<% if(field.value=='imageEffectsAnimate_Magnify'){%>" class="selected<%}%>"></a>
    <a data-type="imageEffectsAnimate_MoveLeft<% if(field.value=='imageEffectsAnimate_MoveLeft'){%>" class="selected<%}%>"></a>
    <a data-type="J_hoverImage<% if(field.value=='J_hoverImage'){%>" class="selected<%}%>"></a>
   </div>
  <div class="clear"></div>
  <input class="form-control field" data-type="${field.type}" data-savetype="${field.savetype}" type="hidden" name='${field.name}' id='${field.name}' value="${field.value}">
</div>
<script>
$(document).ready(function(e) {
    $(".imageEffects_box .listType > a").click(function(e) {
        $(this).addClass("selected");
		$(this).prevAll().removeClass("selected");
		$(this).nextAll().removeClass("selected");
		$("#${field.name}").val($(this).attr('data-type'));
    });
});
</script>



