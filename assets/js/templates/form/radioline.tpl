${toolbarTemplate(buttons)}
<div class="view clearfix">
	<div class="form-group  <% if(isrequired) {%> required-control<% } %>" data-control="label div">
		<label for="${id}-0" class="col-sm-2 control-label">${label}</label>
		<div class="col-sm-10">
			<% _.each(datas, function (item,i) { %>
					<label for="${id}-${i}"  class="radio-inline"><input type="radio" value="${item.value}" id="${id}-${i}" name="${name}" <% if(item.checked) {%>  checked="checked" <% } %>>${item.value}</label>
			 <% }); %>
		</div>
    </div>
    <div class="form-mask"></div>
</div>
