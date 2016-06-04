define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};
	Model.prototype.openPage = function(event) {
		var url = event.source.$domNode.attr('url');
		if (url.substr(0, 1) == "/")
			url = '$UI' + url;
		justep.Shell.showPage(require.toUrl(url));
	};
	Model.prototype.modelLoad = function(event) {
		var ajaxServerIP = localStorage.getItem("ajaxServerIP");
		var sname = localStorage.getItem("sName");
		var status = localStorage.getItem("status");
		var info = this.comp('infoData');
		info.newData({
			index : 0,
			defaultValues : [ {
				"mode" : localStorage.getItem("moshi"),
				"name" : sname,
				"status" : status,
			} ]
		});
	};
	return Model;
});