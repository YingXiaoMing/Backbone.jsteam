${toolbarTemplate(buttons)}
<div class="view">
  <div>${cpAttributes.tab1.value.name.value}</div>
<% if(cpAttributes.tab1.value.fileType.value=="1" && cpAttributes.tab1.value.fileType.listvalue1.url.value!=""){%>
<% if(cpAttributes.tab1.value.fileType.listvalue1.width.value!=''){%>
  <% width=cpAttributes.tab1.value.fileType.listvalue1.width.value %>
<%} else {%>
  <% width="300" %>
<%}%>
<% if(cpAttributes.tab1.value.fileType.listvalue1.height.value!=''){%>
  <% height=cpAttributes.tab1.value.fileType.listvalue1.height.value %>
<%} else {%>
  <% height="300" %>
<%}%>
  <% cpAttributes.tab1.value.fileType.listvalue2.url.value="<iframe scrolling='no' frameborder='0' marginheight='0' marginwidth='0' src='"+cpAttributes.tab1.value.fileType.listvalue1.url.value+"' width='"+width+"' height='"+height+"'></iframe>" %>
  <div><iframe scrolling='no' frameborder='0' marginheight='0' marginwidth='0' src='${cpAttributes.tab1.value.fileType.listvalue1.url.value}' width='${width}' height='${height}'></iframe></div>
<%} else if(cpAttributes.tab1.value.fileType.value=="2" && cpAttributes.tab1.value.fileType.listvalue2.url.value!="") {%>
  <div>${cpAttributes.tab1.value.fileType.listvalue2.url.value}</div>
<%}%>
</div>
