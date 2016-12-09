<div class="box">
    <% _.each(value, function (item) { %>
        <label class="${labelcls} control-label">${item.label}</label>
        <div class="${valuecls} form-group">
            <input class='form-control field' data-type="${field.type}" data-savetype="${field.savetype}" type='text' name='${field.name}' id='${field.name}' value ='${item.value}' />
        </div>
    <% }); %>
</div>
