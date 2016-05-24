define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
		this.fIP = justep.Bind.observable('input1');
    	this.duankou = justep.Bind.observable('input2');
    	this.fIP="192.168.1.109";
    	this.duankou="4213";
	};
    Model.prototype.saveClick = function(event){
    	localStorage.setItem("ajaxServerIP",this.fIP+"/xf");
    	localStorage.setItem("wbServerIP",this.fIP);
    	localStorage.setItem("duankou",this.duankou);
    	justep.Util.hint("保存成功");
    };
	return Model;
});