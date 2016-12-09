<div class="btn-toolbar">
	<div class="btn-group btn-group-xs btn-config" role="group">
		<% _.each(buttons, function (item,i) { %>
			<%  if(item.type=="button") { %>
			<button type="button" class="btn ${item.cls}" rel="${item.rel}" data-type="${i}">
				${item.label}
        	</button>
			<% } else { %>
			<div class="btn-group btn-group-xs" role="group">
			    <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			      	${item.label}<span class="caret"></span>
			    </button>
			    <ul class="dropdown-menu">
			   		<% _.each(item.menu, function (menu,j) { %>
			   		<li <%  if(menu.rel==item.rel) { %>class="active" <%  } %> ><a href="#" rel="${menu.rel}">${menu.label}</a></li>
			   		<% }); %>
			    </ul>
			</div>
			<%  } %>
		 <% }); %>		
         <button class="btn btn-danger" rel="removeHandler">
			<i class="glyphicon glyphicon-remove"></i>删除模块
		 </button>
	</div>
   	<div class="btn-group btn-group-xs btn-base" role="group">

	</div>
</div>