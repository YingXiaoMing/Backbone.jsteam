<style>
.pic_width input{float:left; width:80px; margin-right: 10px;}
.pic_width span{ font-size:18px; line-height:35px;}
</style>
<div class="form-group col-xs-12 ${field.class}">
	<label class="col-xs-2 control-label">${field.label}</label>
	<div class="col-xs-10 pic_width">
		<input class='form-control field' data-type="${field.type}" data-savetype="${field.savetype}" type='text' name='${field.name}' id='${field.name}' value ='${field.value}' onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')"/> <span>px</span>
	</div>
</div>
