${toolbarTemplate(buttons)}
<div class="view">
	<div role="navigation" class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<button data-target="#bs-example-navbar-collapse-11" data-toggle="collapse" class="navbar-toggle collapsed" type="button">
					<span class="sr-only">响应菜单</span> <span class="icon-bar"></span>
					<span class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
				<a href="#" class="navbar-brand">${dataAttributes.logo}</a>
			</div>
			<div style="height: 1px;" id="bs-example-navbar-collapse-11" class="navbar-collapse collapse">
				<ul class="nav navbar-nav ${cpStyle.position.value}">
					 <% _.each(dataAttributes.tree, function (item,i) { %>
					 	<li <%  if(item.children&&item.children.length>0) { %>class="dropdown" <%  } %>>
							<a href="${item.href}" target="${item.targetNav}" <%  if(item.children&&item.children.length>0) { %> class="dropdown-toggle" data-toggle="dropdown" <%  } %> >${item.name} <%  if(item.children&&item.children.length>0) { %><span class="caret"></span><%  } %></a>
							<%  if(item.children&&item.children.length>0) { %>
							<ul role="menu" class="dropdown-menu">
							<%  } %>
							<% _.each(item.children, function (child,j) { %>
					   			<li><a href="${child.href}" target="${child.targetNav}">${child.name}</a></li>
					   		<% }); %>
					   		<%  if(item.children&&item.children.length>0) { %>
							</ul>
							<%  } %>
						</li>
					 <% }); %>
				</ul>
			</div>
		</div>
	</div>
</div>
