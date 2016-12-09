<div class="form-group col-xs-12">
	<label class="col-xs-2 control-label">${field.label}</label>
	<div class="col-xs-10">
		<label><input type="checkbox" data-type="${field.type}" data-savetype="${field.savetype}" class="input-inline field" name="${field.name}" id="${field.name}"<% if(field.value) {%> checked="checked" <% } %>>
		</label>
	</div>
</div>
