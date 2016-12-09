${toolbarTemplate(buttons)}
<div class="view">
	<% _.each(cpAttributes.tab1.value, function (item,i) { %>
	<div style="padding:15px;">${item.label}：<b style="font-size:30px; color:#FF0000;">${item.value}</b></div>
    
    <% }); %>
	<div style="border-bottom:solid 1px #CCCCCC;"></div>
    
    <% _.each(cpAttributes.tab2.value, function (item,i) { %>
	<div  style="padding:15px;">${item.label}：<b style="font-size:30px; color:#FF0000;">${item.value}</b></div>
    
    <% }); %>
  <div></div>
</div>
