<div class="form-group ${cls}">
	<label class="${labelcls} control-label">${field.label}</label>
	<div class="${valuecls}">
		<textarea class="field form-control" data-type="${field.type}" data-savetype="${field.savetype}" style='min-height: 200px' id='${field.name}'><% for ( var i = 0; i < field.value.length ; i++ ) { %>${field.value[i]}<% if (i < field.value.length - 1) { %>${"\n"}<% } %><% } %></textarea>
	</div>
</div>