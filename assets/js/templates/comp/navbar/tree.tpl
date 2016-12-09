<div class="form-group ${field.cls}">
	<label class="${field.labelcls} control-label">${field.label}</label>
	<div class="${field.valuecls} field group" style="padding-top:5px;min-height:170px;" data-type="${field.type}" id="${field.name}">
		   <div class="nestable dd">
		   		<ol class="dd-list">
		   			<% _.each(field.value, function (item) { %>
		   			<li class="dd-item dd3-item" data-value="${item.value}" data-href="${item.href}"  data-targetnav="${item.targetNav}">
	                    <div class="dd-handle dd3-handle"></div>
	                    <div class="dd3-content">
		                    <div class="box">
								<div class="btn-toolbar">
									<div role="group" class="btn-group btn-group-xs btn-config">
											<button rel="copyHandler" class="btn btn-primary" type="button">
												增加
								        	</button>
									</div>
									<div role="group" class="btn-group btn-group-xs btn-config">
											<button rel="editHandler" class="btn btn-primary" type="button">
												修改
								        	</button>
									</div>
								   	<div role="group" class="btn-group btn-group-xs btn-base">
										<button rel="removeHandler" class="btn btn-danger">
											<i class="glyphicon glyphicon-remove"></i>删除
										</button>
									</div>
								</div>
								<div class="view">
									 ${item.value}
								</div>
							</div>
						</div>
						<%  if(item.children&&item.children.length>0) { %>
						<ol class="dd-list">
						<%  } %>
							<% _.each(item.children, function (child,j) { %>
								<li class="dd-item dd3-item" data-value="${child.value}" data-href="${child.href}"  data-targetnav="${child.targetNav}">
									<div class="dd-handle dd3-handle"></div>
				                    <div class="dd3-content">
					                    <div class="box">
											<div class="btn-toolbar">
												<div role="group" class="btn-group btn-group-xs btn-config">
														<button rel="copyHandler" class="btn btn-primary" type="button">
															增加
											        	</button>
												</div>
												<div role="group" class="btn-group btn-group-xs btn-config">
														<button rel="editHandler" class="btn btn-primary" type="button">
															修改
											        	</button>
												</div>
											   	<div role="group" class="btn-group btn-group-xs btn-base">
													<button rel="removeHandler" class="btn btn-danger">
														<i class="glyphicon glyphicon-remove"></i>删除
													</button>
												</div>
											</div>
											<div class="view">
												 ${child.value}
											</div>
										</div>
									</div>
								</li>
					   		<% }); %>
	                    <%  if(item.children&&item.children.length>0) { %>
	                    </ol>
	                    <%  } %>
	                </li>
		   			<% }); %>
				</ol>
		 </div>
	</div>
</div>
