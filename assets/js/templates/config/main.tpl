<form class="edit" id="editorForm" role="form">
	<div class="container-fluid">
		<div class="row">
			<% var compiled = "";
			   $.each(fields,function(name,item){
			   		if(layername){
			   			item.name = layername + separator + name;
			   		}else{
			   			item.name = name;
			   		}
			   		compiled = compiled + configTemplates[item["type"]]({field:item});
			   }); %>
		    ${compiled}
		</div>
  </div>
</form>
