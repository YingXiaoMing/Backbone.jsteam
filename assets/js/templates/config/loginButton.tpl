<link href="assets/js/templates/css/loginButton.css" rel="stylesheet">
<div class="form-group loginButton ${field.cls}">
  <label class="${field.labelcls} control-label">${field.label}</label>
  <div class="listType ${field.valuecls}"> 
    <a id="loginButton1" data-type="loginButton1<% if(field.value=='loginButton1'){%>" class="selected<%}%>"></a>
    <a id="loginButton2" data-type="loginButton2<% if(field.value=='loginButton2'){%>" class="selected<%}%>"></a>
    <a id="loginButton3" data-type="loginButton3<% if(field.value=='loginButton3'){%>" class="selected<%}%>"></a>
    <a id="loginButton4" data-type="loginButton4<% if(field.value=='loginButton4'){%>" class="selected<%}%>"></a>
    <a id="loginButton5" data-type="loginButton5<% if(field.value=='loginButton5'){%>" class="selected<%}%>"></a>
    <a id="loginButton6" data-type="loginButton6<% if(field.value=='loginButton6'){%>" class="selected<%}%>"></a>
    <a id="loginButton7" data-type="loginButton7<% if(field.value=='loginButton7'){%>" class="selected<%}%>"></a>
    <a id="loginButton8" data-type="loginButton8<% if(field.value=='loginButton8'){%>" class="selected<%}%>"></a>
    <a id="loginButton9" data-type="loginButton9<% if(field.value=='loginButton9'){%>" class="selected<%}%>"></a>
    <a id="loginButton10" data-type="loginButton10<% if(field.value=='loginButton10'){%>" class="selected<%}%>"></a>
    <a id="loginButton11" data-type="loginButton11<% if(field.value=='loginButton11'){%>" class="selected<%}%>"></a>
    <a id="loginButton12" data-type="loginButton12<% if(field.value=='loginButton12'){%>" class="selected<%}%>"></a>
    <div class="clear"></div>
   </div>
  <div class="clear"></div>
  <input class="form-control field" data-type="${field.type}" data-savetype="${field.savetype}" type="hidden" name='${field.name}' id='${field.name}' value="${field.value}">
</div>
<script>
$(document).ready(function(e) {
    $(".loginButton .listType > a").click(function(e) {
        $(this).addClass("selected");
		$(this).prevAll().removeClass("selected");
		$(this).nextAll().removeClass("selected");
		$("#${field.name}").val($(this).attr('data-type'));
    });
});
</script>



