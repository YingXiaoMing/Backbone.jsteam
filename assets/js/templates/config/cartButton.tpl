<link href="assets/js/templates/css/cartButton.css" rel="stylesheet">
<div class="form-group cartButton ${field.cls}">
  <label class="${field.labelcls} control-label">${field.label}</label>
  <div class="cartButtonList">
    <a id="cartButton1" data-type="cartButton1<% if(field.value=='cartButton1'){%>" class="selected<%}%>"></a>
    <a id="cartButton2" data-type="cartButton2<% if(field.value=='cartButton'){%>" class="selected<%}%>"></a>
    <a id="cartButton3" data-type="cartButton3<% if(field.value=='cartButton3'){%>" class="selected<%}%>"></a>
    <a id="cartButton4" data-type="cartButton4<% if(field.value=='cartButton4'){%>" class="selected<%}%>"></a>
    <a id="cartButton5" data-type="cartButton5<% if(field.value=='cartButton5'){%>" class="selected<%}%>"></a>
    <div class="clear"></div>
    <a id="cartButton6" data-type="cartButton6<% if(field.value=='cartButton6'){%>" class="selected<%}%>"></a>
    <a id="cartButton7" data-type="cartButton7<% if(field.value=='cartButton7'){%>" class="selected<%}%>"></a>
    <a id="cartButton8" data-type="cartButton8<% if(field.value=='cartButton8'){%>" class="selected<%}%>"></a>
    <a id="cartButton9" data-type="cartButton9<% if(field.value=='cartButton9'){%>" class="selected<%}%>"></a>
    <a id="cartButton10" data-type="cartButton10<% if(field.value=='cartButton10'){%>" class="selected<%}%>"></a>
    <div class="clear"></div>
   </div>
  <div class="clear"></div>
  <input class="form-control field" data-type="${field.type}" data-savetype="${field.savetype}" type="hidden" name='${field.name}' id='${field.name}' value="${field.value}">
</div>
<script>
$(document).ready(function(e) {
    $(".cartButton .cartButtonList > a").click(function(e) {
        $(this).addClass("selected");
		$(this).prevAll().removeClass("selected");
		$(this).nextAll().removeClass("selected");
		$("#${field.name}").val($(this).attr('data-type'));
    });
});
</script>



