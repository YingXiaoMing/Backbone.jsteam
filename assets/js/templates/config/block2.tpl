<div class="form-group col-xs-12">
	<label class="col-xs-2 control-label">${field.label}</label>
	<div class="col-xs-10">
        <div class="clearfix">
        <%_.map(field.listvalue,function(item,key){ %>
          <label class="radio-inline">
            <input type="radio" name="${field.name}" value="${item.value}" <% if(item.value==field.value){ %>checked<% } %> data-type="${field.type}" data-savetype="${field.savetype}"> ${item.label}
          </label>
        <%}); %>
        </div>
	</div>
</div>
<%_.map(field.listvalue,function(item,key){ %>
  <div id="${field.name}${item.value}" <%if(item.value!=field.value){ %> style="display:none;" <% } %>>
    <%if(field["listvalue"+item.value]){ %>
      <% _.map(field["listvalue"+item.value],function(_item,key){
            _.extend(_item,{
                name: list + separator + "listvalue"+item.value+ separator + key
            });
            var compiled = configTemplates[_item["type"]]({
                field: _item,
                list: _item.name,
                separator : separator,
                configTemplates: configTemplates
            });
        %>
        ${compiled}
      <% }); %>
    <% } %>
  </div>
<%}); %>
