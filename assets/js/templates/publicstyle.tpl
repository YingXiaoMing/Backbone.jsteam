<%_.each(fields.cpStyle,function(item,i){ %>
	<%_.each(item.value,function(item2,i){ %>
		<%_.each(item2["listvalue"+item2.value],function(item3,i){ %>
        <% if(item3.type=='images' && item3.value!=='none'){%>
        ${item3.style}{${item3.class}:url(${item3.value});}
        <%}else{%>
		${item3.style}{${item3.class}:${item3.value};}
        <% }%>
		<% }); %> 
	<% }); %>
<% }); %>