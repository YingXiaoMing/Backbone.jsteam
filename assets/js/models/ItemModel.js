define(function(require) {
	var $ = require("jquery");
	var _ = require("underscore");
	var Backbone = require("backbone");
	var globalObj = require("app/global");
	return Backbone.Model.extend({
		randomNumber : function() {
			return this.randomFromInterval(1, 1e6);
		},
		randomFromInterval : function(e, t) {
			return Math.floor(Math.random() * (t - e + 1) + e);
		},
		getValues : function() {
			var thiz = this;
			//thiz.attributes.smid = thiz.randomNumber();//随机生成一个smid数字
			if (!thiz.attributes.smid) {
				thiz.attributes.smid = thiz.randomNumber();
			}
			var values = _.reduce(this.attributes.fields, function(o, v, k) {
				if (v["type"] == "select") {
					o[k] = _.find(v["value"], function(o) {
						return o.selected;
					})["value"];
				} else {
					if (v["generate"]) {
						v["generate"] = false;
						v["value"] = v["value"] + "_" + thiz.attributes.id;
						o[k] = v["value"];
					} else {
						o[k] = v["value"];
					}
				}
				return o;
			}, {});
			return $.extend(this.attributes, values);
		},
		setField : function(name, value) {
			var fields = this.get("fields");
			fields[name]["value"] = value;
			this.set("fields", fields);
		},
		setCpAttributes : function (name, value) {
			var names = name.split(globalObj.itemSeparator);
			var cpAttributes = this.get("cpAttributes");
			if(names.length == 1){
				cpAttributes[names[0]]["value"] = value;
			}else if(names.length == 2){
				cpAttributes[names[0]]["value"][names[1]]["value"] = value;
			}
			
			this.set("cpAttributes", cpAttributes);
		},
		setCpAttributes1 : function(name,value){
			var names = name.split(globalObj.itemSeparator);
			var cpAttributes = this.get("cpAttributes");
			switch (names.length){
			case 1 :
				cpAttributes[names[0]]["value"] = value;
				break;
			case 2 :
				cpAttributes[names[0]][names[1]]["value"] = value;
				break;
			case 3 : 
				cpAttributes[names[0]][names[1]][names[2]]["value"] = value;
				break;
			case 4 : 
				cpAttributes[names[0]][names[1]][names[2]][names[3]]["value"] = value;
				break;
			case 5 : 
				cpAttributes[names[0]][names[1]][names[2]][names[3]][names[4]]["value"] = value;
				break;
			case 6 : 
				cpAttributes[names[0]][names[1]][names[2]][names[3]][names[4]][names[5]]["value"] = value;
				break;
			case 7 : 
				cpAttributes[names[0]][names[1]][names[2]][names[3]][names[4]][names[5]][names[6]]["value"] = value;
				break;
			}
			this.set("cpAttributes", cpAttributes);
		},
		setCpStyle : function(name,value){
			var names = name.split(globalObj.itemSeparator);
			var cpStyle = this.get("cpStyle");
			switch (names.length){
			case 1 :
				cpStyle[names[0]]["value"] = value;
				break;
			case 2 :
				cpStyle[names[0]][names[1]]["value"] = value;
				break;
			case 3 : 
				cpStyle[names[0]][names[1]][names[2]]["value"] = value;
				break;
			case 4 : 
				cpStyle[names[0]][names[1]][names[2]][names[3]]["value"] = value;
				break;
			case 5 : 
				cpStyle[names[0]][names[1]][names[2]][names[3]][names[4]]["value"] = value;
				break;
			case 6 : 
				cpStyle[names[0]][names[1]][names[2]][names[3]][names[4]][names[5]]["value"] = value;
				break;
			case 7 : 
				cpStyle[names[0]][names[1]][names[2]][names[3]][names[4]][names[5]][names[6]]["value"] = value;
				break;
			}
			this.set("cpStyle", cpStyle);
		},
		getTitle : function() {
			return this.get("title").replace(/\W/g, '').toLowerCase();
		}
	});
});
