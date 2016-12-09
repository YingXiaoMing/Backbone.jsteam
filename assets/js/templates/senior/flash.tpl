${toolbarTemplate(buttons)}
<div class="view">
  <div>${cpAttributes.tab1.value.name.value}</div>
<% if(cpAttributes.tab1.value.fileType.value=="1"){%>
  <% var fileUrl=cpAttributes.tab1.value.fileType.listvalue1.url.value%>
<%} else {%>
  <% var fileUrl=cpAttributes.tab1.value.fileType.listvalue2.url.value%>
<%}%>
  <div><embed id="1257" width="${cpAttributes.tab1.value.width.value}" height="${cpAttributes.tab1.value.height.value}" allowscriptaccess="always" style="visibility: visible;" pluginspage="http://get.adobe.com/cn/flashplayer/" flashvars="playMovie=true&amp;auto=1" allowfullscreen="true" quality="hight" src="${fileUrl}" type="application/x-shockwave-flash" wmode="${cpAttributes.tab1.value.wmode.value}"></div>
</div>
