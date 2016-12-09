${toolbarTemplate(buttons)}
<link href="../assets/js/templates/css/productNav.css" rel="stylesheet"/>
<div class="view productNav">
<% var tempNav="" %>
<% if(cpAttributes.tab1.value.navType.value=='1'){ tempNav="productNavList1"} %>
	<div class="productNav_t"><span></span>${cpAttributes.tab1.value.name.value}</div>
	<div class="productNavList ${tempNav}">
		<a href="">潮流专区</a>
		<a href="">休闲专区</a>
		<a href="">热卖专区</a>
		<a href="">街头专区</a>
		<a href="">板鞋专区</a>
		<a href="">街头专区</a>
		<a href="">休闲专区</a>
		<a href="">板鞋专区</a>
		<a href="">潮流专区</a>
		<a href="">休闲专区</a>
	</div>	
</div>

