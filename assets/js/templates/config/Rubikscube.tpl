<!--魔方多图-->
<link href="assets/js/templates/css/Rubikscube.css" rel="stylesheet">
<div class="form-group ${field.cls} col-xs-12">
<label class="${field.labelcls} control-label col-xs-2">${field.label}</label>
<div class="Rubikscube_Containerdiv col-xs-10">
    <div class="Rubikscube_Container" id="Rubikscube_Container">
        <div class="cardStyleItem itemCard0 <% if(field.value=='cardStyle0'){%>cardStyleChoice<%}%>" data-type="cardStyle0" ><div class="checked"></div></div>
        <div class="cardStyleItem itemCard1 <% if(field.value=='cardStyle1'){%>cardStyleChoice<%}%>" data-type="cardStyle1" ><div class="checked"></div></div>
        <div class="cardStyleItem itemCard2 <% if(field.value=='cardStyle2'){%>cardStyleChoice<%}%>" data-type="cardStyle2" ><div class="checked"></div></div>
        <div class="cardStyleItem itemCard3 <% if(field.value=='cardStyle3'){%>cardStyleChoice<%}%>" data-type="cardStyle3" ><div class="checked"></div></div>
        <div class="cardStyleItem itemCard4 <% if(field.value=='cardStyle4'){%>cardStyleChoice<%}%>" data-type="cardStyle4" ><div class="checked"></div></div>
        <div class="cardStyleItem itemCard5 <% if(field.value=='cardStyle5'){%>cardStyleChoice<%}%>" data-type="cardStyle5" ><div class="checked"></div></div>
        <div class="cardStyleItem itemCard6 <% if(field.value=='cardStyle6'){%>cardStyleChoice<%}%>" data-type="cardStyle6" ><div class="checked"></div></div>
        <div class="cardStyleItem itemCard7 <% if(field.value=='cardStyle7'){%>cardStyleChoice<%}%>" data-type="cardStyle7" ><div class="checked"></div></div>
        <div class="cardStyleItem itemCard8 <% if(field.value=='cardStyle8'){%>cardStyleChoice<%}%>" data-type="cardStyle8" ><div class="checked"></div></div>
        <div class="cardStyleItem itemCard9 <% if(field.value=='cardStyle9'){%>cardStyleChoice<%}%>" data-type="cardStyle9" ><div class="checked"></div></div>
        <div class="cardStyleItem itemCard10 <% if(field.value=='cardStyle10'){%>cardStyleChoice<%}%>" data-type="cardStyle10" ><div class="checked"></div></div>
        <div class="cardStyleItem itemCard11 <% if(field.value=='cardStyle11'){%>cardStyleChoice<%}%>" data-type="cardStyle11" ><div class="checked"></div></div>
        <div class="cardStyleItem itemCard12 <% if(field.value=='cardStyle12'){%>cardStyleChoice<%}%>" data-type="cardStyle12" ><div class="checked"></div></div>
         <div class="clear"></div>
    </div>
</div>
<input class="form-control field" data-type="${field.type}" data-savetype="${field.savetype}" type="hidden" name='${field.name}' id='${field.name}' value="${field.value}">
</div>
<script>
$(document).ready(function(e) {
    $(".Rubikscube_Container .cardStyleItem").click(function(e) {
        $(this).addClass("cardStyleChoice");
        $(this).prevAll().removeClass("cardStyleChoice");
        $(this).nextAll().removeClass("cardStyleChoice");
		$("#${field.name}").val($(this).attr('data-type'));
    });
});
</script>
<script>
$(document).ready(function(e) {
	var total="${field.value}";
	$(".moduleStyle_c").css({"display":"none"})	
    $(".moduleStyle_list a").click(function(e) {		
		var temp=$(this).find("img").attr("title");
		$(".moduleStyle_name").val(temp);
		$(this).addClass("checked");
		$(this).prevAll().removeClass("checked");
		$(this).nextAll().removeClass("checked");
		//alert(temp);
		if(temp!="text"){
			$(".moduleStyle_c").css({"display":"block"})
		}
		else{
			$(".moduleStyle_c").css({"display":"none"})
		}
    });
		if(total!="text"){
			$(".moduleStyle_c").css({"display":"block"})
		}
		else{
			$(".moduleStyle_c").css({"display":"none"})
		}		
	
	//alert(123)
});
</script>