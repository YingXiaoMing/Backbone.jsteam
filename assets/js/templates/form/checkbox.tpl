${toolbarTemplate(buttons)}
<div class="view clearfix">
	<div class="form-group  <% if(isrequired) {%> required-control<% } %>" data-control="label div"
		id="checkboxs">
		<label for="${id}-0" class="col-sm-2 control-label">${label}</label>
		<div class="col-sm-10">
			 <% _.each(datas, function (item,i) { %>
			 	<div class="checkbox">
					<label for="${id}-${i}"><input type="checkbox" value="${item.value}" id="${id}-${i}" name="${name}" <% if(item.checked) {%>  checked="checked" <% } %>>${item.value}</label>
				</div>
			 <% }); %>
		</div>
	</div>
    <div class="form-mask"></div>
</div>

				