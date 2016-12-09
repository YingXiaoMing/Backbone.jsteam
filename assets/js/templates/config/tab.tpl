<script>
$(function() {
$( "#kenfor_upload_tabs" ).tabs();
});
</script>
<style>
.modal-body{ padding:0;}
.ui-widget-header{ background: #e4e5e4; border: 0; border-bottom: 1px solid #bfbfbf;}
.ui-widget-content{ border:none; background:none}
.ui-tabs .ui-tabs-nav{ padding:0; margin-left:1px;}
.ui-tabs .ui-tabs-nav li{ padding:0; margin:0; margin-left:-1px;}
.kenfor_upload_tabsclass .ui-tabs-nav .ui-tabs-anchor{ font-weight:normal; font-size:12px;  padding:5px 10px; }
.ui-corner-all, .ui-corner-top, .ui-corner-right, .ui-corner-tr,.ui-corner-all, .ui-corner-top, .ui-corner-left, .ui-corner-tl{ border-radius:0;}
.uloadPic_div{ padding:10px 0; text-align:center;}
.uloadPic_div input{ margin:0px 10px;}
.kenfor_tab_con{height: 500px; overflow-y: auto; border: 1px solid #bfbfbf; border-top:none;}
</style>
<div class="kenfor_upload_tabsclass" id="kenfor_upload_tabs">
    <ul>
    	<% 
        $.each(fields,function(list,item){
        %>
        <li><a href="#kenfor_upload_tabs-${list}">${item.tabname}</a></li>
        <% })%>
    </ul>
    <div class="scrollbar kenfor_tab_con" >
    	<% 
        $.each(fields,function(list,item){
        %>
        <div id="kenfor_upload_tabs-${list}" >
           <% var compiled = "";
			   $.each(item.value,function(name,_item){
			   		if(attrlayer=='3'){
			   			_item.name = list + '__value__' + name;
			   		}else{
			   			_item.name = name;
			   		}
			   		compiled = compiled + configTemplates[_item["type"]]({
			   		    field: _item,
			   		    list: _item.name,
			   		    separator : separator,
			   		    configTemplates: configTemplates
                    });
			   }); %>
		    ${compiled}
        </div>
        <% })%>
    </div>
</div>


