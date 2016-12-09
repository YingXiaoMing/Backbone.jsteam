<link href="assets/js/templates/css/productStyleBox.css" rel="stylesheet">
<div class="clear"></div>
<div class="form-group productStyleBox col-xs-12">
  <label class="col-xs-2 control-label">${field.label}</label>
  <div class="col-xs-10">
    <div class="ctrl hard-width-296 hard-height-54 overFlowHidden">
      <div class="listType ${field.valuecls}">
        <a data-type="productStyleBox1" <% if(field.value=='productStyleBox1'){%>class="selected" <%}%>><img src="assets/js/templates/images/productStyleBox/1.jpg"></a>
        <a data-type="productStyleBox2" <% if(field.value=='productStyleBox2'){%>class="selected" <%}%>><img src="assets/js/templates/images/productStyleBox/2.gif"></a>
        <a data-type="productStyleBox3" <% if(field.value=='productStyleBox3'){%>class="selected" <%}%>><img src="assets/js/templates/images/productStyleBox/3.jpg"></a>
        <a data-type="productStyleBox4" <% if(field.value=='productStyleBox4'){%>class="selected" <%}%>><img src="assets/js/templates/images/productStyleBox/4.jpg"></a>
        <a data-type="productStyleBox5" <% if(field.value=='productStyleBox5'){%>class="selected" <%}%>><img src="assets/js/templates/images/productStyleBox/5.jpg"></a>
        <a data-type="productStyleBox6" <% if(field.value=='productStyleBox6'){%>class="selected" <%}%>><img src="assets/js/templates/images/productStyleBox/6.jpg"></a>
        <a data-type="productStyleBox7" <% if(field.value=='productStyleBox7'){%>class="selected" <%}%>><img src="assets/js/templates/images/productStyleBox/7.jpg"></a>
        <a data-type="productStyleBox8" <% if(field.value=='productStyleBox8'){%>class="selected" <%}%>><img src="assets/js/templates/images/productStyleBox/8.jpg"></a>
      </div>
    </div>  
  <div class="clear"></div>
  <input class="form-control field" data-type="${field.type}" data-savetype="${field.savetype}" type="hidden" name='${field.name}' id='${field.name}' value="${field.value}">
  </div>
</div>
<script>
$(document).ready(function(e) {
    $(".productStyleBox .listType > a").click(function(e) {
        $(this).addClass("selected");
		$(this).prevAll().removeClass("selected");
		$(this).nextAll().removeClass("selected");
		$("#${field.name}").val($(this).attr('data-type'));
    });
});
</script>