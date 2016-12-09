<div class="form-group ${field.cls}">
<style>
.padding{width:100%;}
.padding_t{ font-size:14px; line-height:30px; font-weight:bold; padding-left:5px;}
.padding_select{ clear:both; overflow:hidden; padding:5px;}
.padding_select >p{ float:left; margin:0px;line-height:24px; margin-right:10px;}
.padding_select >p >input{ float:left; margin:0px; margin-top:5px; margin-right:5px;}
.padding >ul{ display:none; padding-left:5px; }
.padding >ul >li{display:inline-block;float:left;padding-right:15px; line-height:30px; font-size:16px;}
.padding >ul >li >span{float:left;line-height:30px;padding-right:5px;}
.padding >ul >li >input{float:left;border:1px solid #ccc;background:#fff;width:60px; margin-right:5px;line-height:20px; overflow:hidden;}
</style>
<div class="padding">
    <div class="padding_t">${field.label}</div>
    <div class="padding_select">
    	<%_.map(field.listvalue,function(item,key){ %>
        	<label class="radio-inline">
        		<input type="radio" name="${field.name}" value="${item.value}" <% if(item.value==field.value){ %>checked<% } %> data-type="${field.type}" data-savetype="${field.savetype}"> ${item.label}
        	</label>
        <%}); %>
        </div>
    </div>
    
    <%_.map(field.listvalue,function(item,key){ %>
    	<div id="${field.name}${item.value}" <%if(item.value!=field.value){ %> style="display:none;" <% } %>>
    		<%if(field["listvalue"+item.value]){ %>
	        	<ul id="${field.name}" class="box field">
	        	<% _.map(field["listvalue"+item.value],function(_item,key){%>
	                <li>
		                <span>${item.label}</span>
		                <input name="${field.name}${separator}listvalue${item.value}${separator}${key}" class='form-control padding-control' value="${_item.value}" data-savetype="${_item.savetype}" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')" >px
		            </li>
	        	<% }); %>
	        	</ul>
	        <% } %>
    	</div>
    <%}); %>
</div>  
</div>
