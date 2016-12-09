<!--留言提交-按钮样式-->
<link href="assets/js/templates/css/guestbookButton.css" rel="stylesheet">
<div class="form-group guestbookButton ${field.cls}">
  <label class="${field.labelcls} control-label">${field.label}</label>
  <div class="listType ${field.valuecls}"> 
    <a id="guestbookButton1" data-type="guestbookButton1<% if(field.value=='guestbookButton1'){%>" class="selected<%}%>"></a>
    <a id="guestbookButton2" data-type="guestbookButton2<% if(field.value=='guestbookButton2'){%>" class="selected<%}%>"></a>
    <a id="guestbookButton3" data-type="guestbookButton3<% if(field.value=='guestbookButton3'){%>" class="selected<%}%>"></a>
    <a id="guestbookButton4" data-type="guestbookButton4<% if(field.value=='guestbookButton4'){%>" class="selected<%}%>"></a>
    <a id="guestbookButton5" data-type="guestbookButton5<% if(field.value=='guestbookButton5'){%>" class="selected<%}%>"></a>
    <a id="guestbookButton6" data-type="guestbookButton6<% if(field.value=='guestbookButton6'){%>" class="selected<%}%>"></a>
    <a id="guestbookButton7" data-type="guestbookButton7<% if(field.value=='guestbookButton7'){%>" class="selected<%}%>"></a>
    <a id="guestbookButton8" data-type="guestbookButton8<% if(field.value=='guestbookButton8'){%>" class="selected<%}%>"></a>
    <a id="guestbookButton9" data-type="guestbookButton9<% if(field.value=='guestbookButton9'){%>" class="selected<%}%>"></a>
    <a id="guestbookButton10" data-type="guestbookButton10<% if(field.value=='guestbookButton10'){%>" class="selected<%}%>"></a>
    <a id="guestbookButton11" data-type="guestbookButton11<% if(field.value=='guestbookButton11'){%>" class="selected<%}%>"></a>
    <a id="guestbookButton12" data-type="guestbookButton12<% if(field.value=='guestbookButton12'){%>" class="selected<%}%>"></a>
    <div class="clear"></div>
   </div>
  <div class="clear"></div>
  <input class="form-control field" data-type="${field.type}" data-savetype="${field.savetype}" type="hidden" name='${field.name}' id='${field.name}' value="${field.value}">
</div>
<script>
$(document).ready(function(e) {
    $(".guestbookButton .listType > a").click(function(e) {
        $(this).addClass("selected");
		$(this).prevAll().removeClass("selected");
		$(this).nextAll().removeClass("selected");
		$("#${field.name}").val($(this).attr('data-type'));
    });
});
</script>



