${toolbarTemplate(buttons)}
<div class="view clearfix">
	<div class="form-group   <% if(isrequired) {%> required-control<% } %>" data-control="label div">
		<label for="${id}-0" class="col-sm-2 control-label">${label}</label>
		<div class="col-sm-10">
			<% _.each(datas, function (item,i) { %>
			 	<div class="radio">
					<label for="${id}-${i}">111<input type="radio" value="${item.value}"  <% if(item.checked) {%>  checked="checked" <% } %>  id="${id}-${i}" name="${name}">${item.value}</label>
				</div>
			 <% }); %>
		</div>
	</div>
	<div class="form-mask"></div>
</div>
