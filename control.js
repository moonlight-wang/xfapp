define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};
    Model.prototype.addCountBtnClick = function(event) {
		var row = event.bindingContext.$object;
		row.val("fCount", row.val("fCount") + 1);
	};

	Model.prototype.reduceCountBtnClick = function(event) {
		var row = event.bindingContext.$object;
		row.val("fCount", (row.val("fCount") > 0) ? row.val("fCount") - 1 : 0);
	};
	Model.prototype.menuBtnClick = function(event){
		justep.Shell.showLeft();
	};

	Model.prototype.openPage = function(event){
		var url = event.source.$domNode.attr('url');
		if(url.substr(0,1) == "/")
			url = '$UI' + url;
		justep.Shell.showPage(require.toUrl(url));
	};
	return Model;
});