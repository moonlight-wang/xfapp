define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};
	Model.prototype.data1CustomRefresh = function(event){
		var data = event.source;		
		data.newData();	
		data.newData();	
		
		debugger;
	};
	return Model;
});