${toolbarTemplate(buttons)}
<div class="view clearfix">
	<div class="form-group" data-control="label div" id="upload">
		<label for="appendedtext" class="col-sm-2 control-label">${label}</label>

		<div class="col-sm-10">
			
		</div>
	</div>
</div>
<div class="form-mask"></div>

<div class="view clearfix">
	<div class="form-group   <% if(isrequired) {%> required-control<% } %>" data-control="label div">
		<label for="${id}" class="col-sm-2 control-label">${label}</label>
		<div class="col-sm-10">
			<div class="input-group">
				<input type="text" <% if(isrequired) {%> required <% } %>" <% if(isshow) {%> isshow="1" <% } %> <% if(isrepeated) {%> isrepeated="1" <% } %> placeholder="${placeholder}" name="${name}" id="${id}" > <span
					class="input-group-btn">
					<button class="btn btn-primary" type="button" name="${name}button" id="${id}button" >上传</button>
				</span>
			</div>
		</div>
	</div>
</div>
<div class="form-mask"></div>

           