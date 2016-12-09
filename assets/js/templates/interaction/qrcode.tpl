<!--二维码前端显示的页面-->
${toolbarTemplate(buttons)}
<div class="view qrcode_c">
<style>
	.qrcode_c{
		text-align: center;
		margin: 20px auto;
	}
	.qrcode_c >#qrcode_img > table{
		margin: 10px auto;
		text-align: center;
		display: block;
	}
</style>
<script type="text/javascript" src="assets/js/templates/js/jquery.qrcode.min.js"></script>
	<div id="qrcode_${smid}"></div>
	<div id="qrcode_img"></div>
	${cpAttributes.tab1.value.alt.value}
<script>
    jQuery(function(){		
		$("#qrcode_${smid}").qrcode({ 
			render: "table", //table方式 
			width: ${cpAttributes.tab1.value.width.value}, //宽度 
			height:${cpAttributes.tab1.value.width.value}, //高度 
			text: "${cpAttributes.tab1.value.site.value}" //任意内容 
		}); 
		$("#qrcode_img").html($("#qrcode_${smid}").html())
		$("#qrcode_${smid}").html("")
})
</script>

</div>