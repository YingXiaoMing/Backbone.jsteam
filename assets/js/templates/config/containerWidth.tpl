<script>
  $(function() {
	  var con_width="${field.value}";
	  var con_width=con_width.replace("px","");
	  $( "#${field.name}_box" ).val(con_width);
	 // alert(con_width)
    $( "#${field.name}_width" ).slider({
      range: "min",
      value:con_width,
      min: 0,
      max: 1920,
      slide: function( event, ui ) {
		//$( "#opacity" ).val(ui.value / 100 );
        $( "#${field.name}_box" ).val(ui.value);
		$("#design").css({"width":ui.value+"px","margin":"0 auto"}) // 设置最多层容器宽度
		$( "#${field.name}" ).val(ui.value+'px');
		$( "#${field.name}" ).trigger("change");
      }
    });
	//$("#design").css({"width":temp+"px"})
  });
  </script>
<style>
.ui-slider-horizontal{ height:0.2em;margin-top:9px;}
.ui-widget-header{ background:#9db9cf !important;}
.ui-slider .ui-slider-handle{ width:0.7em; height:0.7em;}
.design_width input{float:left; width:60px; margin:0 5px;}
.design_width span{ line-height:35px;}
#${field.name}_width{float:left; width:90px; margin-top:18px;}
</style>
<div class="col-xs-12">
<label class="col-xs-2">${field.label}</label>
	<div class="col-xs-10 design_width ">
    <input class='form-control field' data-type="${field.type}" data-savetype="${field.savetype}" type="hidden" name='${field.name}' id='${field.name}' value='${field.value}' />
    <div id="${field.name}_width"></div><input  type='text' class="form-control" id="${field.name}_box" value="${field.value}" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')"/><span>px</span> 
</div>
</div>
