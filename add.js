define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	require("$UI/system/lib/cordova/cordova");
	require("css!$UI/demo/native/common/pub").load();
	require("cordova!phonegap-plugin-barcodescanner");
	var Model = function() {
		this.callParent();
	};
	Model.prototype.scanBtnClick = function(event) {

		function onSuccess(result) {
			var sID = result.text;
			var user = {};
			user.opmode = "add";
			user.ajax = 1;
			user.userid = localStorage.getItem("userid");
			user.deviceid = sID;
			user.city = "289";
			$.post('http://' + localStorage.getItem("ajaxServerIP") + '/contact/save', user, function(data, status) {
				console.log(data);
				if (data.status == 1) {
					justep.Util.hint("添加成功", {
						"type" : "success"
					}, 'json');
				}
			});
		}
		cordova.plugins.barcodeScanner.scan(onSuccess);
	};
	Model.prototype.saveClick = function(event) {
		var sID = this.comp('input1').value;
		var user = {};
		user.opmode = "add";
		user.ajax = 1;
		user.userid = localStorage.getItem("userid");
		user.deviceid = sID;
		user.city = "289";
		$.post('http://' + localStorage.getItem("ajaxServerIP") + '/contact/save', user, function(data, status) {
			console.log(data);
			if (data.status == 1) {
				justep.Util.hint("添加成功", {
					"type" : "success"
				}, 'json');
			}
		});
	};
	return Model;
});