define(function(require) {
	var $ = require("jquery");
	return {
		_initinput : function($e,$content,datas){
			var name = $e.attr("name");
			$e.val(datas[name]);
		},
		_initcheckbox : function($e,$content,datas){
			var name = $e.attr("name");
			var data = datas[name];
			$.each(data,function(i,item){
				$content.find("input[name='"+name+"'][value="+item+"]").attr("checked","checked");
			});
		},
		_initradio : function($e,$content,datas){
			var name = $e.attr("name");
			$content.find("input[name='"+name+"'][value="+datas[name]+"]").attr("checked",true);
		},
		_saveinput : function($e,$content,datas){
			var name = $e.attr("name");
			datas[name] = $e.val();
			return datas;
		},
		_savecheckbox : function($e,$content,datas){
			var name = $e.attr("name");
			var data = [];
			$content.find("input[name='"+name+"']:checked").each(function(i,obj){
				data.push($(obj).val());
			});
			datas[name] = data;
			return datas;
		},
		_saveradio : function($e,$content,datas){
			var name = $e.attr("name");
			var data = $content.find("input[name='"+name+"']:checked").val();
			datas[name] = data;
			return datas;
		},
		_call : function(fn,args){
			return fn.apply(this, args);
		}
	};
});