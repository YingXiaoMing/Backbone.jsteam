<!--滚动公告-公告图标-->
<link href="assets/js/templates/css/notic_choice_panel.css" rel="stylesheet">
<div class="clear"></div>

<div class="form-group col-xs-12">
  <label class="col-xs-2 control-label">${field.label}</label>
  <div class="col-xs-10">
  	<div class="notic_choice_panel"><input id="noticeIco1" type="radio" name="noticeIco"  <% if(field.value=='noticeIco101'){%>checked="checked"<%}%> data-type="noticeIco101" ><img class="imag" lzurl="assets/js/templates/images/notic_choice_panel/noticeIco1.gif" src="assets/js/templates/images/notic_choice_panel/noticeIco1.gif"><input id="noticeIco2" type="radio" name="noticeIco" <% if(field.value=='noticeIco102'){%>checked="checked"<%}%> data-type="noticeIco102"><img class="imag" lzurl="assets/js/templates/images/notic_choice_panel/noticeIco1.gif" src="assets/js/templates/images/notic_choice_panel/noticeIco2.gif"><input id="noticeIco3" type="radio" name="noticeIco" <% if(field.value=='noticeIco103'){%>checked="checked"<%}%> data-type="noticeIco103"><img class="imag" lzurl="assets/js/templates/images/notic_choice_panel/noticeIco1.gif" src="assets/js/templates/images/notic_choice_panel/noticeIco3.gif"><input id="noticeIco4" type="radio" name="noticeIco" <% if(field.value=='noticeIco104'){%>checked="checked"<%}%> data-type="noticeIco104" >无</div>
  </div>
</div>

    
<input class="form-control field" data-type="${field.type}" data-savetype="${field.savetype}" type="hidden" name='${field.name}' id='${field.name}' value="${field.value}">

<script>
$(document).ready(function(e) {
	$(".notic_choice_panel input[name='noticeIco']").click(function(e) {
		$("#${field.name}").val($(this).attr('data-type'));
	});
});
</script>