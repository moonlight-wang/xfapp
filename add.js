define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	require("$UI/system/lib/cordova/cordova");
	require("css!$UI/demo/native/common/pub").load();
	require("cordova!phonegap-plugin-barcodescanner");
	var Model = function(){
		this.callParent();
	};
    Model.prototype.scanBtnClick = function(event) {
		var data = this.comp("fileData");
		function onSuccess(result) {
			data.newData({
				index : 0
			});
			data.setValue("filePath", result.text);
		}
		cordova.plugins.barcodeScanner.scan(onSuccess);
	};
	Model.prototype.saveClick=function(event){
		var sID=this.comp('input1').value;
		var user={};
		user.opmode="add";
		user.ajax=1;
		user.userid= localStorage.getItem("userid");
		user.deviceid=sID;
		$.post('http://' + localStorage.getItem("ajaxServerIP") + '/xf/contact/save', user, function(data,status) {
			if(status=="success"){
				alert('添加成功');
			}
		});
	};
	return Model;
});