${toolbarTemplate(buttons)}
<div id="module657" _indexclass="formIndex2" _modulestyle="27" _moduleid="657" class="form form657 formIndex2 formStyle27" title="" style="" _side="0" _intab="0" _inmulmcol="0" _infullmeasure="0" _inpack="0" _autoheight="1" _global="false" _independent="false">
<table class="formTop formTop657" cellpadding="0" cellspacing="0"><tbody><tr><td class="left"></td><td class="center"></td><td class="right"></td></tr></tbody></table>
<table class="formBanner formBanner657" cellpadding="0" cellspacing="0" style=""><tbody><tr>
<td class="left left657"></td>
<td class="center center657" valign="top">
<table cellpadding="0" cellspacing="0" class="formBannerTitle formBannerTitle657"><tbody><tr>
<td class="titleLeft titleLeft657" valign="top">
</td>
<td class="titleCenter titleCenter657" valign="top">
<div class="titleText titleText657">
	<span class="bannerNormalTitle fk_mainTitle mainTitle mainTitle657">${dataAttributes.title}</span>
</div>
</td>
<td class="titleRight titleRight657" valign="top">
</td>
</tr></tbody></table>
</td>
<td class="right right657"></td>
</tr></tbody></table>
<table class="formMiddle formMiddle657" style="" cellpadding="0" cellspacing="0"><tbody><tr>
<td class="formMiddleLeft formMiddleLeft657"></td>
<td class="formMiddleCenter formMiddleCenter657" valign="top">
<div class="formMiddleContent formMiddleContent657" tabstyle="0">
	<div class="photoList" _modulestyle="1">
		<div class="clearfloat"></div>
		<div class="photoForms" picwidth="0" picheight="0">
			<%_.each(dataAttributes.atlas,function(item,i){%>
				<div class="photoForm" faiwidth="160" faiheight="102" style="height: 128px;">
				<div class="imgDiv" style="height: 102px;">
					<table cellpadding="0" cellspacing="0">
						<tbody>
							<tr>
								<td>
									<a hidefocus="true" href="por.jsp?_php=0_657_1" target="_self">
										<img class="photoImg" alt="${item.atlasname}" src="${item.atlaslink}" style="width: 160px; height: 102px;">
									</a>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="parametersDiv">
					<div class="photoParameters firstLine" title="${item.atlasname}" style="height: auto;">${item.atlasname}</div>
				</div>
			<%}); %>
		</div>
	</div>
	<div class="clearfloat"></div>
</div>
</div>
</td>
<td class="formMiddleRight formMiddleRight657"></td>
</tr></tbody></table>
<table class="formBottom formBottom657" cellpadding="0" cellspacing="0"><tbody><tr><td class="left left657"></td><td class="center center657"></td><td class="right right657"></td></tr></tbody></table>
<div class="clearfloat clearfloat657"></div>
</div>