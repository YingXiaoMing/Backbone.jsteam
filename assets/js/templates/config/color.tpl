<!--颜色拾取器-->
<script type="text/javascript" src="assets/js/templates/js/jquery.minicolors.js"></script>
<link rel="stylesheet" href="assets/js/templates/css/jquery.minicolors.css"/>
<div class="form-group col-xs-12">
  <label class="col-xs-2 control-label">${field.label}</label>
  <div class="col-xs-10"><input type="text" class="form-control field"  data-type="${field.type}" data-savetype="${field.savetype}" name='${field.name}' id='${field.name}' value="${field.value}"></div>
</div>


 <script>
$(document).ready(function() {

	$('#${field.name}').each(function() {
		//
		// Dear reader, it's actually very easy to initialize MiniColors. For example:
		//
		//  $(selector).minicolors();
		//
		// The way I've done it below is just for the demo, so don't get confused 
		// by it. Also, data- attributes aren't supported at this time...they're 
		// only used for this demo.
		//
		$(this).minicolors({
			change: function(hex, opacity) {
				if (!hex)
					return;
				if (opacity)
					hex += ', ' + opacity;
				try {
					console.log(hex);
				} catch (e) {
				}
			},
			theme: 'bootstrap'
		});

	});

});
</script>