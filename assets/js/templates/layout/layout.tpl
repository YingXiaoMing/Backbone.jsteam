${toolbarTemplate(buttons)}    
<div class="view">
	<div class="row base row-fluid clearfix">
		<% _.each(value, function (item) { %>
	 		<div class="col-md-${item} sortable kenfor-column kenfor-addible"></div>
		<% }); %>
	</div>
</div>
