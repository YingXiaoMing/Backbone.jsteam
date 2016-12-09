<div class="form-group col-xs-12">
    <label class="col-xs-2 control-label">${field.label}</label>
    <div class="col-xs-10">
        <select class="field form-control" data-type="${field.type}" data-savetype="${field.savetype}" id='${field.name}' name="${field.name}">
        <% _.each(field.value, function (item) { %>
        	<option value="${item.value}" <% if (item.selected) { %> selected="selected" <% } %>>${item.label}</option>
        <% }); %>
        </select>
    </div>
</div>
