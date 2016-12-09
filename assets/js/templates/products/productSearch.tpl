${toolbarTemplate(buttons)}
<link href="../assets/js/templates/css/productSearch.css" rel="stylesheet"/>
<div class="view">
  <div id="search_${smid}" class="kenfor_productSearch ${cpAttributes.tab1.value.searchType.value}">
    <div class="tn">
      <span>${cpAttributes.tab1.value.name.value}</span>
    </div>
    <form action="search.html" method="get" name="searchForm">
      <label class="input">
        <input type="text" name="kw" id="kw" value="" placeholder="${cpAttributes.tab2.value.name.value}">
      </label>
      <input type="submit" class="button" name="s" value="搜索">
    </form>
    <div class="kenfor_keyword" id="keyword_${smid}"></div>
  </div>
</div>
<script>
$(document).ready(function(e) {
	var kwtext=[${cpAttributes.tab3.value.keyword.value}];
		kw="";
	for(var i=0;i<kwtext.length;i++){
		kw+="<a href='search.html?kw="+encodeURI(kwtext[i])+"'>"
		kw+=kwtext[i];
		kw+="</a>"
	}
	if(kw!=''){
		document.getElementById("keyword_${smid}").innerHTML="<span>热门搜索：</span>"+kw;
	}
	else{
		document.getElementById("keyword_${smid}").innerHTML="";
	}
});
</script>