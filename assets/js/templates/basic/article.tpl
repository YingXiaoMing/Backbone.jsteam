${toolbarTemplate(buttons)}
<div class="view">
  <link href="../assets/js/templates/css/article.css" rel="stylesheet"/>
  <div class="listArticle">
    <ul class="type">
      <li class="tn">
        <span>${cpAttributes.tab1.value.name.value}</span>
<% if(cpAttributes.tab2.value.more.value=='1') {%>
        <a href="<% if(cpAttributes.tab2.value.more.listvalue1.linkType.value=='1') {%>index.html<%} else if(cpAttributes.tab2.value.more.listvalue1.linkType.value=='2') {%>${cpAttributes.tab2.value.more.listvalue1.linkType.listvalue2.linkAdd.value}<%}%><%_.each(cpAttributes.tab2.value.more.value,function(item){%><%if(item.selected){%>" target="${item.value}<%}%><%});%>">更多</a>
<%}%>
      </li>
      <li class="line"></li>
    </ul>
    <div id="article_list_${smid}"></div>
  </div>
</div>
<script>
var nr="";
    pageMax=${cpAttributes.tab2.value.pageMax.listvalue1.nums.value};//每页篇数
    pageMax1=${cpAttributes.tab2.value.pageMax.listvalue0.nums.value};//文章篇数
<% if(cpAttributes.tab1.value.disStyle.value=='default') {%>
  nr+="<li><a class='ellipsis' href='displaynews.html?newsID=123'";
  nr+="target='"+"<%_.each(cpAttributes.tab2.value.target.value,function(item){%><%if(item.selected){%>${item.value}<%}%><%});%>'";
  nr+=">新闻标题</a>";
<% if(cpAttributes.tab2.value.showTime.value=='1') {%>
  nr+="<span>2016-11-24</span>";
<%}%>
  nr+="</li>";
  nr+="<li><a class='ellipsis' href='displaynews.html?newsID=123'";
  nr+="target='"+"<%_.each(cpAttributes.tab2.value.target.value,function(item){%><%if(item.selected){%>${item.value}<%}%><%});%>'";
  nr+=">新闻标题</a>";
<% if(cpAttributes.tab2.value.showTime.value=='1') {%>
  nr+="<span>2016-11-24</span>";
<%}%>
  nr+="</li>";
  nr+="<li><a class='ellipsis' href='displaynews.html?newsID=123'";
  nr+="target='"+"<%_.each(cpAttributes.tab2.value.target.value,function(item){%><%if(item.selected){%>${item.value}<%}%><%});%>'";
  nr+=">新闻标题</a>";
<% if(cpAttributes.tab2.value.showTime.value=='1') {%>
  nr+="<span>2016-11-24</span>";
<%}%>
  nr+="</li>";
  nr+="<li><a class='ellipsis' href='displaynews.html?newsID=123'";
  nr+="target='"+"<%_.each(cpAttributes.tab2.value.target.value,function(item){%><%if(item.selected){%>${item.value}<%}%><%});%>'";
  nr+=">新闻标题</a>";
<% if(cpAttributes.tab2.value.showTime.value=='1') {%>
  nr+="<span>2016-11-24</span>";
<%}%>
  nr+="</li>";
  document.getElementById("article_list_${smid}").className="default";
<%} else if(cpAttributes.tab1.value.disStyle.value=='default1') {%>
  nr+="<ul><li class='img'><img src='http://11664372.s61i.faiusr.com/2/AD0I9PfHBRACGAAglqm8wAUoyK2ptgMwuQQ4kAI.jpg'></li><li class='ellipsis title'>韩国互联网女装品牌掘金中国 1年卖10亿韩元</li><li class='ellipsis1 nr'>自2013年借道天猫国际进军中国市场的韩国女装互联网品牌miamasvin，日前亮出一份成绩单：其天猫国际品牌旗舰店的销售额以月均200其天猫国际品牌旗舰店的销售额以月均200%的速度增长...</li></ul>";
  nr+="<ul><li class='img'><img src='http://11664372.s61i.faiusr.com/2/AD0I9PfHBRACGAAglqm8wAUoyK2ptgMwuQQ4kAI.jpg'></li><li class='ellipsis title'>韩国互联网女装品牌掘金中国 1年卖10亿韩元</li><li class='ellipsis1 nr'>自2013年借道天猫国际进军中国市场的韩国女装互联网品牌miamasvin，日前亮出一份成绩单：其天猫国际品牌旗舰店的销售额以月均200%的速度增长...</li></ul>";
  nr+="<ul><li class='img'><img src='http://11664372.s61i.faiusr.com/2/AD0I9PfHBRACGAAglqm8wAUoyK2ptgMwuQQ4kAI.jpg'></li><li class='ellipsis title'>韩国互联网女装品牌掘金中国 1年卖10亿韩元</li><li class='ellipsis1 nr'>自2013年借道天猫国际进军中国市场的韩国女装互联网品牌miamasvin，日前亮出一份成绩单：其天猫国际品牌旗舰店的销售额以月均200%的速度增长...</li></ul>";
  nr+="<ul><li class='img'><img src='http://11664372.s61i.faiusr.com/2/AD0I9PfHBRACGAAglqm8wAUoyK2ptgMwuQQ4kAI.jpg'></li><li class='ellipsis title'>韩国互联网女装品牌掘金中国 1年卖10亿韩元</li><li class='ellipsis1 nr'>自2013年借道天猫国际进军中国市场的韩国女装互联网品牌miamasvin，日前亮出一份成绩单：其天猫国际品牌旗舰店的销售额以月均200%的速度增长...</li></ul>";
  nr+="<ul><li class='img'><img src='http://11664372.s61i.faiusr.com/2/AD0I9PfHBRACGAAglqm8wAUoyK2ptgMwuQQ4kAI.jpg'></li><li class='ellipsis title'>韩国互联网女装品牌掘金中国 1年卖10亿韩元</li><li class='ellipsis1 nr'>自2013年借道天猫国际进军中国市场的韩国女装互联网品牌miamasvin，日前亮出一份成绩单：其天猫国际品牌旗舰店的销售额以月均200%的速度增长...</li></ul>";
  nr+="<ul><li class='img'><img src='http://11664372.s61i.faiusr.com/2/AD0I9PfHBRACGAAglqm8wAUoyK2ptgMwuQQ4kAI.jpg'></li><li class='ellipsis title'>韩国互联网女装品牌掘金中国 1年卖10亿韩元</li><li class='ellipsis1 nr'>自2013年借道天猫国际进军中国市场的韩国女装互联网品牌miamasvin，日前亮出一份成绩单：其天猫国际品牌旗舰店的销售额以月均200%的速度增长...</li></ul>";
  document.getElementById("article_list_${smid}").className="default1 clear_float";
<%} else if(cpAttributes.tab1.value.disStyle.value=='default2') {%>
  nr+="<ul><li><a class='ellipsis title'>韩国互联网女装品牌掘金中国 1年卖10亿韩元<span>2016-11-24</span></a><p>自2013年借道天猫国际进军中国市场的韩国女装互联网品牌miamasvin，日前亮出一份成绩单：其天猫国际品牌旗舰店的销售额以月均200其天猫国际品牌旗舰店的销售额以月均200%的速度增长...</p></li><img src='http://11664372.s61i.faiusr.com/2/AD0I9PfHBRACGAAglqm8wAUoyK2ptgMwuQQ4kAI.jpg'></ul>";
  nr+="<ul><li><a class='ellipsis title'>韩国互联网女装品牌掘金中国 1年卖10亿韩元<span>2016-11-24</span></a><p>自2013年借道天猫国际进军中国市场的韩国女装互联网品牌miamasvin，日前亮出一份成绩单：其天猫国际品牌旗舰店的销售额以月均200其天猫国际品牌旗舰店的销售额以月均200%的速度增长...</p></li><img src='http://11664372.s61i.faiusr.com/2/AD0I9PfHBRACGAAglqm8wAUoyK2ptgMwuQQ4kAI.jpg'></ul>";
  nr+="<ul><li><a class='ellipsis title'>韩国互联网女装品牌掘金中国 1年卖10亿韩元<span>2016-11-24</span></a><p>自2013年借道天猫国际进军中国市场的韩国女装互联网品牌miamasvin，日前亮出一份成绩单：其天猫国际品牌旗舰店的销售额以月均200其天猫国际品牌旗舰店的销售额以月均200%的速度增长...</p></li><img src='http://11664372.s61i.faiusr.com/2/AD0I9PfHBRACGAAglqm8wAUoyK2ptgMwuQQ4kAI.jpg'></ul>";
  nr+="<ul><li><a class='ellipsis title'>韩国互联网女装品牌掘金中国 1年卖10亿韩元<span>2016-11-24</span></a><p>自2013年借道天猫国际进军中国市场的韩国女装互联网品牌miamasvin，日前亮出一份成绩单：其天猫国际品牌旗舰店的销售额以月均200其天猫国际品牌旗舰店的销售额以月均200%的速度增长...</p></li><img src='http://11664372.s61i.faiusr.com/2/AD0I9PfHBRACGAAglqm8wAUoyK2ptgMwuQQ4kAI.jpg'></ul>";
  document.getElementById("article_list_${smid}").className="default2";
<%} else if(cpAttributes.tab1.value.disStyle.value=='default3') {%>
  nr+="<ul><li><a class='ellipsis title'>韩国互联网女装品牌掘金中国 1年卖10亿韩元<span>2016-11-24</span></a><p>自2013年借道天猫国际进军中国市场的韩国女装互联网品牌miamasvin，日前亮出一份成绩单：其天猫国际品牌旗舰店的销售额以月均200其天猫国际品牌旗舰店的销售额以月均200%的速度增长...</p></li><img src='http://11664372.s61i.faiusr.com/2/AD0I9PfHBRACGAAglqm8wAUoyK2ptgMwuQQ4kAI.jpg'></ul>";
  nr+="<li><a class='ellipsis' href='displaynews.html?newsID=123'>新闻标题</a><span>2016-11-24</span></li>";
  nr+="<li><a class='ellipsis' href='displaynews.html?newsID=123'>新闻标题</a><span>2016-11-24</span></li>";
  nr+="<li><a class='ellipsis' href='displaynews.html?newsID=123'>新闻标题</a><span>2016-11-24</span></li>";
  nr+="<li><a class='ellipsis' href='displaynews.html?newsID=123'>新闻标题</a><span>2016-11-24</span></li>";
  nr+="<li><a class='ellipsis' href='displaynews.html?newsID=123'>新闻标题</a><span>2016-11-24</span></li>";
  nr+="<li><a class='ellipsis' href='displaynews.html?newsID=123'>新闻标题</a><span>2016-11-24</span></li>";
  document.getElementById("article_list_${smid}").className="default3";
<%} else if(cpAttributes.tab1.value.disStyle.value=='default4') {%>
  nr+="<ul><li><a class='ellipsis title'>韩国互联网女装品牌掘金中国 1年卖10亿韩元</a><p>自2013年借道天猫国际进军中国市场的韩国女装互联网品牌miamasvin，日前亮出一份成绩单：其天猫国际品牌旗舰店的销售额以月均200其天猫国际品牌旗舰店的销售额以月均200%的速度增长...</p><span>2016-11-24</span></li></ul>";
  nr+="<ul><li><a class='ellipsis title'>韩国互联网女装品牌掘金中国 1年卖10亿韩元</a><p>自2013年借道天猫国际进军中国市场的韩国女装互联网品牌miamasvin，日前亮出一份成绩单：其天猫国际品牌旗舰店的销售额以月均200其天猫国际品牌旗舰店的销售额以月均200%的速度增长...</p><span>2016-11-24</span></li></ul>";
  nr+="<ul><li><a class='ellipsis title'>韩国互联网女装品牌掘金中国 1年卖10亿韩元</a><p>自2013年借道天猫国际进军中国市场的韩国女装互联网品牌miamasvin，日前亮出一份成绩单：其天猫国际品牌旗舰店的销售额以月均200其天猫国际品牌旗舰店的销售额以月均200%的速度增长...</p><span>2016-11-24</span></li></ul>";
  nr+="<ul><li><a class='ellipsis title'>韩国互联网女装品牌掘金中国 1年卖10亿韩元</a><p>自2013年借道天猫国际进军中国市场的韩国女装互联网品牌miamasvin，日前亮出一份成绩单：其天猫国际品牌旗舰店的销售额以月均200其天猫国际品牌旗舰店的销售额以月均200%的速度增长...</p><span>2016-11-24</span></li></ul>";
  nr+="<ul><li><a class='ellipsis title'>韩国互联网女装品牌掘金中国 1年卖10亿韩元</a><p>自2013年借道天猫国际进军中国市场的韩国女装互联网品牌miamasvin，日前亮出一份成绩单：其天猫国际品牌旗舰店的销售额以月均200其天猫国际品牌旗舰店的销售额以月均200%的速度增长...</p><span>2016-11-24</span></li></ul>";
  nr+="<ul><li><a class='ellipsis title'>韩国互联网女装品牌掘金中国 1年卖10亿韩元</a><p>自2013年借道天猫国际进军中国市场的韩国女装互联网品牌miamasvin，日前亮出一份成绩单：其天猫国际品牌旗舰店的销售额以月均200其天猫国际品牌旗舰店的销售额以月均200%的速度增长...</p><span>2016-11-24</span></li></ul>";
  nr+="<ul><li><a class='ellipsis title'>韩国互联网女装品牌掘金中国 1年卖10亿韩元</a><p>自2013年借道天猫国际进军中国市场的韩国女装互联网品牌miamasvin，日前亮出一份成绩单：其天猫国际品牌旗舰店的销售额以月均200其天猫国际品牌旗舰店的销售额以月均200%的速度增长...</p><span>2016-11-24</span></li></ul>";
  document.getElementById("article_list_${smid}").className="default4 before clear_float";
<%} else if(cpAttributes.tab1.value.disStyle.value=='default5') {%>
  nr+="<ul><li><a class='ellipsis title'>韩国互联网女装品牌掘金中国 1年卖10亿韩元<span>2016-11-24</span></a><p class='ellipsis1'>自2013年借道天猫国际进军中国市场的韩国女装互联网品牌miamasvin，日前亮出一份成绩单：其天猫国际品牌旗舰店的销售额以月均200其天猫国际品牌旗舰店的销售额以月均200%的速度增长...</p></li></ul>";
  nr+="<ul><li><a class='ellipsis title'>韩国互联网女装品牌掘金中国 1年卖10亿韩元<span>2016-11-24</span></a><p class='ellipsis1'>自2013年借道天猫国际进军中国市场的韩国女装互联网品牌miamasvin，日前亮出一份成绩单：其天猫国际品牌旗舰店的销售额以月均200其天猫国际品牌旗舰店的销售额以月均200%的速度增长...</p></li></ul>";
  nr+="<ul><li><a class='ellipsis title'>韩国互联网女装品牌掘金中国 1年卖10亿韩元<span>2016-11-24</span></a><p class='ellipsis1'>自2013年借道天猫国际进军中国市场的韩国女装互联网品牌miamasvin，日前亮出一份成绩单：其天猫国际品牌旗舰店的销售额以月均200其天猫国际品牌旗舰店的销售额以月均200%的速度增长...</p></li></ul>";
  nr+="<ul><li><a class='ellipsis title'>韩国互联网女装品牌掘金中国 1年卖10亿韩元<span>2016-11-24</span></a><p class='ellipsis1'>自2013年借道天猫国际进军中国市场的韩国女装互联网品牌miamasvin，日前亮出一份成绩单：其天猫国际品牌旗舰店的销售额以月均200其天猫国际品牌旗舰店的销售额以月均200%的速度增长...</p></li></ul>";
  nr+="<ul><li><a class='ellipsis title'>韩国互联网女装品牌掘金中国 1年卖10亿韩元<span>2016-11-24</span></a><p class='ellipsis1'>自2013年借道天猫国际进军中国市场的韩国女装互联网品牌miamasvin，日前亮出一份成绩单：其天猫国际品牌旗舰店的销售额以月均200其天猫国际品牌旗舰店的销售额以月均200%的速度增长...</p></li></ul>";
  nr+="<ul><li><a class='ellipsis title'>韩国互联网女装品牌掘金中国 1年卖10亿韩元<span>2016-11-24</span></a><p class='ellipsis1'>自2013年借道天猫国际进军中国市场的韩国女装互联网品牌miamasvin，日前亮出一份成绩单：其天猫国际品牌旗舰店的销售额以月均200其天猫国际品牌旗舰店的销售额以月均200%的速度增长...</p></li></ul>";
  nr+="<ul><li><a class='ellipsis title'>韩国互联网女装品牌掘金中国 1年卖10亿韩元<span>2016-11-24</span></a><p class='ellipsis1'>自2013年借道天猫国际进军中国市场的韩国女装互联网品牌miamasvin，日前亮出一份成绩单：其天猫国际品牌旗舰店的销售额以月均200其天猫国际品牌旗舰店的销售额以月均200%的速度增长...</p></li></ul>";
  nr+="<ul><li><a class='ellipsis title'>韩国互联网女装品牌掘金中国 1年卖10亿韩元<span>2016-11-24</span></a><p class='ellipsis1'>自2013年借道天猫国际进军中国市场的韩国女装互联网品牌miamasvin，日前亮出一份成绩单：其天猫国际品牌旗舰店的销售额以月均200其天猫国际品牌旗舰店的销售额以月均200%的速度增长...</p></li></ul>";
  document.getElementById("article_list_${smid}").className="default5";
<%} else {%>
  nr+="<ul><li><a class='ellipsis title'>韩国互联网女装品牌掘金中国 1年卖10亿韩元</a><p class='ellipsis1'>自2013年借道天猫国际进军中国市场的韩国女装互联网品牌miamasvin，日前亮出一份成绩单：其天猫国际品牌旗舰店的销售额以月均200其天猫国际品牌旗舰店的销售额以月均200%的速度增长...</p></li><dd><b>24</b><span>2016/11</span></dd></ul>";
  nr+="<ul><li><a class='ellipsis title'>韩国互联网女装品牌掘金中国 1年卖10亿韩元</a><p class='ellipsis1'>自2013年借道天猫国际进军中国市场的韩国女装互联网品牌miamasvin，日前亮出一份成绩单：其天猫国际品牌旗舰店的销售额以月均200其天猫国际品牌旗舰店的销售额以月均200%的速度增长...</p></li><dd><b>24</b><span>2016/11</span></dd></ul>";
  nr+="<ul><li><a class='ellipsis title'>韩国互联网女装品牌掘金中国 1年卖10亿韩元</a><p class='ellipsis1'>自2013年借道天猫国际进军中国市场的韩国女装互联网品牌miamasvin，日前亮出一份成绩单：其天猫国际品牌旗舰店的销售额以月均200其天猫国际品牌旗舰店的销售额以月均200%的速度增长...</p></li><dd><b>24</b><span>2016/11</span></dd></ul>";
  nr+="<ul><li><a class='ellipsis title'>韩国互联网女装品牌掘金中国 1年卖10亿韩元</a><p class='ellipsis1'>自2013年借道天猫国际进军中国市场的韩国女装互联网品牌miamasvin，日前亮出一份成绩单：其天猫国际品牌旗舰店的销售额以月均200其天猫国际品牌旗舰店的销售额以月均200%的速度增长...</p></li><dd><b>24</b><span>2016/11</span></dd></ul>";
  document.getElementById("article_list_${smid}").className="default6";
<%}%>
document.getElementById("article_list_${smid}").innerHTML=nr;
$(function(){
})
</script>