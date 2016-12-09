<link href="assets/js/templates/css/moduleStyle.css" rel="stylesheet">
<div class="form-group moduleStyle col-xs-12">
  <label class="col-xs-2 control-label">${field.label}</label>
  <div class="col-xs-10 moduleStyle_list">
    <a <% if (field.value=="text") { %> class="checked" <% } %> ><img src="assets/js/templates/images/moduleStyle/m1.jpg" alt="纯文本" title="text" /><span></span></a>
    <a <% if (field.value=="top") { %> class="checked" <% } %> ><img src="assets/js/templates/images/moduleStyle/m2.jpg"  alt="图片居上" title="top"/><span></span></a>
   	<a <% if (field.value=="left") { %> class="checked" <% } %> ><img src="assets/js/templates/images/moduleStyle/m3.jpg" alt="图片居左" title="left"/><span></span></a>
    <a <% if (field.value=="floatLeft") { %> class="checked" <% } %> ><img src="assets/js/templates/images/moduleStyle/m4.jpg" alt="左浮动" title="floatLeft"/><span></span></a>
    <a <% if (field.value=="right") { %> class="checked" <% } %> ><img src="assets/js/templates/images/moduleStyle/m5.jpg" alt="图片居右" title="right"/><span></span></a>
    <a <% if (field.value=="floatRight") { %> class="checked" <% } %> ><img src="assets/js/templates/images/moduleStyle/m6.jpg" alt="右浮动" title="floatRight"/><span></span></a>
    <a <% if (field.value=="bottom") { %> class="checked" <% } %> ><img src="assets/js/templates/images/moduleStyle/m7.jpg" alt="图片居下" title="bottom"/><span></span></a>
  </div>
  <input class='form-control field moduleStyle_name' data-type="${field.type}" data-savetype="${field.savetype}" type='hidden' name='${field.name}' id='${field.name}' value ='${field.value}' />
</div>
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
