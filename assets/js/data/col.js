define(function(require){
	var $ = require("jquery");
	var jsUtil = require("kenforJsUtil");
	var cols;//所有栏目信息集合，包含栏目id，栏目所有的组件，当前最大的组件id和最大的栏目id
	var colArray=[];//栏目信息，包含栏目id，栏目名称，栏目链接地址，栏目打开方式，栏目的父id，栏目的seo相关的属性
	var currCol;//当前栏目的信息集合，包含栏目的id，栏目的组件集合。
	var commonMds = {
		mds: []
	};//公有组件集合基本信息
	var userId;//网站id
	var currHtml;//当前页面的html内容
	var currMds = {};
	var commonMdDatas = {};//公有组件集合详细信息
	var commonMdHtml = {};
	var getMdIdx = function(mds,mdId){
		var result = -1;
		if(mds){
			$.each(mds,function(i,obj){
				if(obj.mdId == mdId){
					result = i;
					return false;
				}
			});
		}
		return result;
	};
	var addMd = function(col,md){
		if(col){
			var idx = getMdIdx(col.mds,md.mdId);
			if(idx>-1){
				col.mds[idx] = md;
			}else{
				col.mds.push(md);
			}
		}
	};
	return {
		addColMd : function(md){
			if(md && md.isGlobal){
				//添加公有组件到所有的栏目中。
				$.each(cols.columnes,function(i,obj){
					addMd(obj,md);
				});
				//添加组件到当前栏目中
				addMd(currCol,md);
				//添加组件到公有组件集合中。
				addMd(commonMds,md);
			}else{
				addMd(currCol,md);
				this.setCurrCol(currCol);
			}
			
		},
		updateColMd : function(){
			
		},
		delColMd : function(){
			
		},
		addCol : function(data){
			var maxColId = this.getMaxCpId();
			var colId = maxColId +1;
			//1.先获取栏目id，栏目id为当前最大的栏目id+1;
			var col = data;
			col.colId = colId;
			//2.将公有模块的组件信息写入到新增的栏目中。
			if(col.sjlm > 0){
				var colItem = this.getObjByArray(colArray,"colId",col.sjlm);
				if(colItem){
					if(colItem.colPath){
						col.colPath = colItem.colPath + "__" + col.sjlm;
					}else{
						col.colPath = col.sjlm;
					}
				}
			}
			colArray.push(col);
			this.setMaxCpId(colId);
			//3.生成新栏目对应的编辑页面和查看页面。需要通过后台进行新增
			
			return col;
		},
		getObjByArray : function(array,key,value){
			if(array){
				$.each(array,function(i,item){
					if(item[key] == value){
						return item;
					}
				});
			}
		},
		getIdxByArray : function(array,key,value){
			if(array){
				$.each(array,function(i,item){
					if(item[key] == value){
						return i;
					}
				});
			}
		},
		getCols : function(){
			return cols;
		},
		setCols : function(data){
			cols = data;
		},
		getCurrCol : function(){
			return currCol;
		},
		setCurrCol : function(col){
			if(col){
				$.each(cols.columnes,function(i,obj){
					if(obj.colId == col.colId){
						cols.columnes[i] = col;
						return false;
					}
				});
			}
		},
		setCurrColById : function(colId){
			$.each(cols.columnes,function(i,obj){
				if(obj.colId == colId){
					currCol = obj;
					return false;
				}
			});
		},
		setCommonMds : function(data){
			commonMds = data;
		},
		getCommonMds : function(){
			return commonMds;
		},
		setMaxCpId : function(cpId){
			cols.maxCpId = cpId;
		},
		getMaxCpId : function(){
			return cols.maxCpId;
		},
		saveCols : function(){
			
		},
		getChildren : function(obj,item,checkcommon){
			var thiz = this;
			obj.children().each(function(){
				if($(this).is(".sortable")){
					var sortable = {
						type:'sortable',
						children: []
					};
					item.children.push(sortable);
					if($(this).children(".box")){
						$(this).children(".box").each(function(){
							var modelAttributes = $(this).data("model").attributes;
							var temp = {
								type:'box',
								mdId : $(this).attr("id"),
								initLab : $(this).attr("initLab"),
								attributes:modelAttributes,
								tpl:$(this).data("tpl"),
								htmlnr : $(this).html(),
								children:[]
							};
							var checks = checkcommon;
							if(checkcommon){
								if(modelAttributes.publicAttributes.isGlobal){
									checks = false;
									commonMdDatas[temp.mdId] = temp;
									sortable.children.push(temp);
								}else{
									sortable.children.push(temp);
								}
							}else{
								sortable.children.push(temp);
							}
							thiz.getChildren($(this).find(">.view:eq(0)"),temp,checks);
						});
					}
				}else{
					thiz.getChildren($(this),item,checkcommon);
				}
			});
		},
		obtainHtml : function(dom){
			var domObj = $(dom);
			$.each(commonMdHtml,function(name,obj){
				var objs = domObj.find("[id='"+name+"']");
				if(objs.length==0){
					var temp = domObj.find("[lab]")
					domObj.prepend(obj);
				}else{
					return true;
				}
			});
			return domObj.prop("outerHTML");
		},
		obtainDesigns : function(doms){
			var thiz = this;
			if(doms){
				$.each(doms,function(i,dom){
					thiz.obtainDesign(dom);
				});
				var url = window.location.href;
				var id = jsUtil.getUrlParam(url,"id");
				var htmls = {};
				var def = $.Deferred();
				var idx = 0;
				$.each(cols.columnes,function(i,item){
					require(["text!htmldata/user/pagedata/"+item.colId+".json"],function(data){
						htmls[item.colId] = thiz.obtainHtml(data);
						idx = idx + 1;
						if(idx == cols.columnes.length){
							def.resolve();
						}
					});
				});
				$.when(def).done(function(){
					var objs = $("#design").clone();
					objs.find(".btn-toolbar").remove();
					htmls[id] = objs.prop("outerHTML");
					thiz.saveData(id,JSON.stringify(currMds),JSON.stringify(cols),JSON.stringify(commonMdDatas),JSON.stringify(htmls),JSON.stringify(commonMdHtml));
				});
			}
		},
		obtainDesign : function(dom){
			var design = $(""+dom);
			var designClone = design.clone(true,true);
			
			designClone.find(".btn-toolbar").remove();
			var boxes = [];
			var thiz = this;
			design.children(".box").each(function(){
				var modelAttributes = $(this).data("model").attributes;
				var temp = {
					type:'box',
					mdId : $(this).attr("id"),
					initLab : $(this).attr("initLab"),
					attributes:modelAttributes,
					tpl:$(this).data("tpl"),
					htmlnr : $(this).html(),
					children:[]
				};
				var checks = true;
				if(modelAttributes.publicAttributes.isGlobal){
					commonMdDatas[temp.mdId] = temp;
					boxes.push(temp);
					checks = false;
				}else{
					boxes.push(temp);
				}
				thiz.getChildren($(this).find(">.view:eq(0)"),temp,checks);
			});
			currMds[dom] = boxes;
			
			designClone.children(".box").each(function(){
				var modelAttributes = $(this).data("model").attributes;
				if(modelAttributes.publicAttributes){
					if(modelAttributes.publicAttributes.isGlobal){
						commonMdHtml[$(this).attr("id")] = $(this).prop("outerHTML");
						$(this).remove();
					}
				}
			});
		},
		getInitLab : function(doms){
			var jdoms = $(doms);
			if(typeof(jdoms.attr("initlab"))=="undefined"){
				var parent = doms.parentNode;
				return this.getInitLab(parent);
			}else{
				return jdoms.attr("initlab");
			}
		},
		saveData : function(id,data,columnData,commMdData,htmlData,commonHtmlData){
			alert("data=="+data);
			alert("columnData=="+columnData);
			alert("commMdData=="+commMdData);
			alert("htmlData=="+htmlData);
			alert("commonHtmlData=="+commonHtmlData);
			$.ajax({
				url:"/module/save.do",
				type:"post",
				data : {
					id : id,
					columnData : columnData,
					pageData : data,
					commData : commMdData,
					htmls : htmlData,
					commonhtmls : commonHtmlData
				},
				dataType:"json",
				success:function(dataReturn){
					if(dataReturn.result=="SUCCESS"){
						thiz.initSuccessHandler(dataReturn.data);
					}else{
						thiz.initFailureHandler(dataReturn);
					}
				},
				error : function(e){
					thiz.initErrorHandler(e);
				}
			});
		}
	};
});