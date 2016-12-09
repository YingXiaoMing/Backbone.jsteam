<div class="form-group col-xs-12">
	<label class="col-xs-2 control-label">${field.label}</label>
	<div class="col-xs-10 field group sortable ui-sortable" data-type="${field.type}" data-savetype="${field.savetype}" id="${field.name}">
		  <% _.each(value, function (item) { %>
			 <div class="box">
			 	<div class="btn-toolbar">
					<div role="group" class="btn-group btn-group-xs btn-config">
							<button rel="copyHandler" class="btn btn-primary" type="button">
								增加
				        	</button>
					</div>
				   	<div role="group" class="btn-group btn-group-xs btn-base">
						<button rel="removeHandler" class="btn btn-danger">
							<i class="glyphicon glyphicon-remove"></i>删除
						</button>
					</div>
				</div>
				<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon"> 
								<input type="${item.type}" class="checked" name="checked" value="1" <% if (item.checked) { %> checked="checked" <% } %>>
							</span>
							<input type="text"  placeholder="请输入选项值" name="value"  value="${item.value}" class="form-control">
						</div>
				</div>
			</div>
		<% }); %>
	</div>
</div>
