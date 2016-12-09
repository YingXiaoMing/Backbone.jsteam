<!--网站设置-"返回顶部"图标-->
<link href="assets/js/templates/css/backTopIcon.css" rel="stylesheet">
<div class="form-group backTopIcon ${field.cls}">
  <label class="${field.labelcls} control-label">${field.label}</label>
  <div class="listType backTopIcon_box ${field.valuecls}"> 
    <a id="siteBackToTop_default" data-type="siteBackToTop_default<% if(field.value=='siteBackToTop_default'){%>" class="selected<%}%>"></a>
    <a id="siteBackToTop_special_01" data-type="siteBackToTop_special_01<% if(field.value=='siteBackToTop_special_01'){%>" class="selected<%}%>"></a>
    <a id="siteBackToTop_special_02" data-type="siteBackToTop_special_02<% if(field.value=='siteBackToTop_special_02'){%>" class="selected<%}%>"></a>
    <a id="siteBackToTop_special_03" data-type="siteBackToTop_special_03<% if(field.value=='siteBackToTop_special_03'){%>" class="selected<%}%>"></a>
    <a id="siteBackToTop_special_04" data-type="siteBackToTop_special_04<% if(field.value=='siteBackToTop_special_04'){%>" class="selected<%}%>"></a>
    <div class="clear"></div>
    <a id="siteBackToTop_firstStyle_01" data-type="siteBackToTop_firstStyle_01<% if(field.value=='siteBackToTop_firstStyle_01'){%>" class="selected<%}%>"></a>
    <a id="siteBackToTop_firstStyle_02" data-type="siteBackToTop_firstStyle_02<% if(field.value=='siteBackToTop_firstStyle_02'){%>" class="selected<%}%>"></a>
    <a id="siteBackToTop_firstStyle_03" data-type="siteBackToTop_firstStyle_03<% if(field.value=='siteBackToTop_firstStyle_03'){%>" class="selected<%}%>"></a>
    <a id="siteBackToTop_firstStyle_04" data-type="siteBackToTop_firstStyle_04<% if(field.value=='siteBackToTop_firstStyle_04'){%>" class="selected<%}%>"></a>
    <a id="siteBackToTop_firstStyle_05" data-type="siteBackToTop_firstStyle_05<% if(field.value=='siteBackToTop_firstStyle_05'){%>" class="selected<%}%>"></a>
    <a id="siteBackToTop_firstStyle_06" data-type="siteBackToTop_firstStyle_06<% if(field.value=='siteBackToTop_firstStyle_06'){%>" class="selected<%}%>"></a>
    <div class="clear"></div>
    <a id="siteBackToTop_secondStyle_01" data-type="siteBackToTop_secondStyle_01<% if(field.value=='siteBackToTop_secondStyle_01'){%>" class="selected<%}%>"></a>
    <a id="siteBackToTop_secondStyle_02" data-type="siteBackToTop_secondStyle_02<% if(field.value=='siteBackToTop_secondStyle_02'){%>" class="selected<%}%>"></a>
    <a id="siteBackToTop_secondStyle_03" data-type="siteBackToTop_secondStyle_03<% if(field.value=='siteBackToTop_secondStyle_03'){%>" class="selected<%}%>"></a>
    <a id="siteBackToTop_secondStyle_04" data-type="siteBackToTop_secondStyle_04<% if(field.value=='siteBackToTop_secondStyle_04'){%>" class="selected<%}%>"></a>
    <a id="siteBackToTop_secondStyle_05" data-type="siteBackToTop_secondStyle_05<% if(field.value=='siteBackToTop_secondStyle_05'){%>" class="selected<%}%>"></a>
    <a id="siteBackToTop_secondStyle_06" data-type="siteBackToTop_secondStyle_06<% if(field.value=='siteBackToTop_secondStyle_06'){%>" class="selected<%}%>"></a>
   </div>
  <div class="clear"></div>
  <input class="form-control field" data-type="${field.type}" data-savetype="${field.savetype}" type="hidden" name='${field.name}' id='${field.name}' value="${field.value}">
</div>
<script>
$(document).ready(function(e) {
    $(".backTopIcon .listType > a").click(function(e) {
        $(this).addClass("selected");
		$(this).prevAll().removeClass("selected");
		$(this).nextAll().removeClass("selected");
		$("#${field.name}").val($(this).attr('data-type'));
    });
});
</script>



