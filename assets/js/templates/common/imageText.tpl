${toolbarTemplate(buttons)}
<div class="view imageText">
<% var tempLink=tempOpen='';var width=cpAttributes.tab1.value.width.value;var height=cpAttributes.tab1.value.height.value;%>
<% var tempStyle =cpAttributes.tab1.value.style.value; var tempContent =cpAttributes.tab1.value.content.value; %>
<%_.each(cpAttributes.tab2.value.link.listvalue1.link.value,function(item){ %>
	<% if(item.selected){ tempLink=item.value } %>
<% }); %>
<%_.each(cpAttributes.tab2.value.link.listvalue1.open.value,function(item){ %>
	<% if(item.selected){ tempOpen=item.value } %>
<% }); %>
<style>
.imageText{ margin: 30px auto; overflow: hidden; text-align: center;}	
.imageText_t{ border-bottom: 1px solid #ccc; margin-bottom: 15px; clear: both; overflow: hidden;}	
.imageText_t span{ display: inline-block; float: left;font-size: 16px; line-height: 30px; padding: 0 15px; border-bottom: 2px solid #f04363;}	
a.imageText_more{ float:right;  margin-right: 10px; width: 44px; margin-top: 5px;<% if( tempOpen=='0' && tempLink=='0'){%> display:none;<%}%>}	
.imageText_text{ text-align: left; }
.imageText_img{margin:0 auto; display: inline-block;}
	
.imageText_img_left,.imageText_text_left{ float:left;}
.imageText_img_right,.imageText_text_right{ float:right;}
.imageText_img_none{display: none;}
.imageText_img_block{display: inline-block;}
</style>
	<div class="imageText_t"><span>${cpAttributes.tab1.value.name.value}</span><a href="${tempLink}" class="imageText_more" target="${tempOpen}"><img src="assets/js/templates/images/moduleStyle/more.jpg"></a></div> 


<% var tempImgClass="imageText_img";var tempTextClass="imageText_text";%>
<% if(tempStyle=="text"){%><!-- 纯文本 -->
	<% tempImgClass="imageText_img imageText_img_none"%>
<%}else if(tempStyle=="left"){%><!-- 图片居左 -->
	<% tempImgClass="imageText_img imageText_img_left"%>
	<% tempTextClass="imageText_text imageText_text_right"%>
<%}else if(tempStyle=="floatLeft"){%><!-- 左浮动 -->
	<% tempImgClass="imageText_img imageText_img_left"%>
	<% tempTextClass="imageText_text imageText_text_right"%>
<%}else if(tempStyle=="right"){%><!-- 图片居右 -->
	<% tempImgClass="imageText_img imageText_img_right"%>
	<% tempTextClass="imageText_text imageText_text_left"%>
<%}else if(tempStyle=="floatRight"){%><!-- 右浮动 -->
	<% tempImgClass="imageText_img imageText_img_right"%>
	<% tempTextClass="imageText_text imageText_text_left"%>
<%}%>



<img src="${cpAttributes.tab1.value.src.value}" class="${tempImgClass} <% if(tempStyle=='bottom'){%>imageText_img_none<%}%>" />  
<div class="${tempTextClass}">${tempContent}</div>    
<img src="${cpAttributes.tab1.value.src.value}" class="${tempImgClass} <% if(tempStyle=='bottom'){%>imageText_img_block <%}else {%>imageText_img_none<%}%>"/>          
        
        
       
 </div>
 
<script>
	$(function(){
		//alert("${width}")
		var temp=$("img.imageText_img").not(".imageText_img_none");
		var tempStyle="${tempStyle}";
		if("${width}"){temp.css({"width":"${width}px"})}
		if("${height}"){temp.css({"height":"${height}px"})}
		if(tempStyle=="left" || tempStyle=="floatLeft" || tempStyle=="right" || tempStyle=="floatRight"){
			$(".imageText_text").css({"width":$(".imageText").width()-$(temp).width()})
		}
	})
</script>


