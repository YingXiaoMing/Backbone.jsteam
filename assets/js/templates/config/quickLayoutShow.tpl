<!--页面版式-标准版式-->
<link href="assets/js/templates/css/quickLayoutShow.css" rel="stylesheet">
<div class="form-group quickLayoutShow ${field.cls}">
  <label class="${field.labelcls} control-label">${field.label}</label>
  <div class="listType ${field.valuecls}"> 
    <a data-type="quickLayoutShow1<% if(field.value=='quickLayoutShow1'){%>" class="selected<%}%>"></a>
    <a data-type="quickLayoutShow2<% if(field.value=='quickLayoutShow2'){%>" class="selected<%}%>"></a>
    <a data-type="quickLayoutShow3<% if(field.value=='quickLayoutShow3'){%>" class="selected<%}%>"></a>
    <a data-type="quickLayoutShow4<% if(field.value=='quickLayoutShow4'){%>" class="selected<%}%>"></a>
    <a data-type="quickLayoutShow5<% if(field.value=='quickLayoutShow5'){%>" class="selected<%}%>"></a>
    <a data-type="quickLayoutShow6<% if(field.value=='quickLayoutShow6'){%>" class="selected<%}%>"></a>
    <a data-type="quickLayoutShow7<% if(field.value=='quickLayoutShow7'){%>" class="selected<%}%>"></a>
    <a data-type="quickLayoutShow8<% if(field.value=='quickLayoutShow8'){%>" class="selected<%}%>"></a>
   </div>
  <div class="clear"></div>
  <input class="form-control field" data-type="${field.type}" data-savetype="${field.savetype}" type="hidden" name='${field.name}' id='${field.name}' value="${field.value}">
</div>
<script>
$(document).ready(function(e) {
    $(".quickLayoutShow .listType > a").click(function(e) {
        $(this).addClass("selected");
		$(this).prevAll().removeClass("selected");
		$(this).nextAll().removeClass("selected");
		$("#${field.name}").val($(this).attr('data-type'));
    });
});
</script>



