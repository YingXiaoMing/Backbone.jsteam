${toolbarTemplate(buttons)}
<div class="view clearfix">
	<div class="form-group  <% if(isrequired) {%> required-control<% } %>" data-control="label div">
		<label for="${id}" class="col-sm-2 control-label">${label}</label>

		<div class="col-sm-10">
			<select class="form-control" class="form-control <% if(isrequired) {%> required <% } %>" <% if(isshow) {%> isshow="1" <% } %> <% if(isrepeated) {%> isrepeated="1" <% } %> placeholder="${placeholder}" name="${name}" id="${id}">
				<% _.each(datas, function (item,i) { %>
				<option value="${item.value}"  <% if(item.checked) {%>  selected="selected" <% } %> >${item.value}</option>
			    <% }); %>
			</select>
		</div>
	</div>
    <div class="form-mask"></div>
</div>
