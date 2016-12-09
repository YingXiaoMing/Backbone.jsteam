<link href="assets/js/templates/css/moduleStyle.css" rel="stylesheet">
<div class="form-group moduleStyle col-xs-12" style="">
  <label class="col-xs-2 control-label">${field.label}</label>
  <div class="col-xs-10 articleStyle moduleStyle_list">
    <a <% if (field.value=="default") { %> class="checked" <% } %> ><img src="assets/js/templates/images/article/1.jpg" alt="文字列表" title="default" ><span></span></a>
    <a <% if (field.value=="default1") { %> class="checked" <% } %> ><img src="assets/js/templates/images/article/2.jpg"  alt="新图文列表" title="default1"><span></span></a>
   	<a <% if (field.value=="default2") { %> class="checked" <% } %> ><img src="assets/js/templates/images/article/3.jpg" alt="图文列表" title="default2"><span></span></a>
    <a <% if (field.value=="default3") { %> class="checked" <% } %> ><img src="assets/js/templates/images/article/4.jpg" alt="头条列表" title="default3"><span></span></a>
    <a <% if (field.value=="default4") { %> class="checked" <% } %> ><img src="assets/js/templates/images/article/5.jpg" alt="时间轴列表" title="default4"><span></span></a>
    <a <% if (field.value=="default5") { %> class="checked" <% } %> ><img src="assets/js/templates/images/article/6.jpg" alt="标题日期列表" title="default5"><span></span></a>
    <a <% if (field.value=="default6") { %> class="checked" <% } %> ><img src="assets/js/templates/images/article/7.jpg" alt="日期头图列表" title="default6"><span></span></a>
  </div>
  <input class='form-control field moduleStyle_name' data-type="${field.type}" data-savetype="${field.savetype}" type='hidden' name='${field.name}' id='${field.name}' value ='${field.value}' />
</div>
<script>
$(document).ready(function(e) {
    $(".moduleStyle_list a").click(function(e) {
		$(".moduleStyle_name").val($(this).find("img").attr("title"));
		$(this).addClass("checked");
		$(this).prevAll().removeClass("checked");
		$(this).nextAll().removeClass("checked");
    });
});
</script>
