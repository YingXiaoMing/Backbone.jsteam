${toolbarTemplate(buttons)}
<div class="view">
  <div>${cpAttributes.tab1.value.name.value}</div>
  <div id="video"><div id="a1"></div></div>
<% if(cpAttributes.tab1.value.fileType.value=="1"){%>
  <% var fileUrl=cpAttributes.tab1.value.fileType.listvalue1.url.value%>
<%} else {%>
  <% var fileUrl=cpAttributes.tab1.value.fileType.listvalue2.url.value%>
<%}%>
<script src="../assets/js/templates/js/ckplayer.js" charset="utf-8"></script>
<script>
	var flashvars={
    f:'${fileUrl}',
    c:0,
    b:1
<% if(cpAttributes.tab1.value.fileType.listvalue1.pic.value=="1"){%>
    ,i:"${cpAttributes.tab1.value.fileType.listvalue1.pic.listvalue1.picurl.value}"
<%}%>
  };
	var params={bgcolor:'#FFF',allowFullScreen:true,allowScriptAccess:'always'};	CKobject.embedSWF('ckplayer/ckplayer.swf','a1','ckplayer_a1','${cpAttributes.tab1.value.width.value}','${cpAttributes.tab1.value.height.value}',flashvars,params);
	var video=['${fileUrl}'];
	var support=['iPad','iPhone','ios','android+false','msie10+false','webKit'];
	CKobject.embedHTML5('video','ckplayer_a1',${cpAttributes.tab1.value.width.value},${cpAttributes.tab1.value.height.value},video,flashvars,support);
</script>
</div>
