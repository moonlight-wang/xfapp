define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var io = require("./socket.io");
	var Model = function() {
		this.callParent();
	};
	Model.prototype.addCountBtnClick = function(event) {
		var row = event.bindingContext.$object;
		row.val("pinlv", parseInt(row.val("pinlv")) + 1);
	};

	Model.prototype.reduceCountBtnClick = function(event) {
		var row = event.bindingContext.$object;
		row.val("pinlv", (row.val("pinlv") > 0) ? parseInt(row.val("pinlv") - 1) : 0);
	};
	Model.prototype.menuBtnClick = function(event) {
		justep.Shell.showLeft();
	};

	Model.prototype.openPage = function(event) {
		var url = event.source.$domNode.attr('url');
		if (url.substr(0, 1) == "/")
			url = '$UI' + url;
		justep.Shell.showPage(require.toUrl(url));
	};
	Model.prototype.toggleChecked = function(event) {
		var dsbtn = this.comp('button14');
		dsbtn.get('disabled') ? dsbtn.set({
			'disabled' : false
		}) : dsbtn.set({
			'disabled' : true
		});
	};
	Model.prototype.modelLoad = function(event) {
		var valueData = this.comp('valueData');
		valueData.newData({
			index : 0,
			defaultValues : [ {
				"pinlv" : localStorage.getItem("pinLv"),
			} ]
		});
		var toggle = this.comp('toggle1');
		var dsbtn = this.comp('button14');
		toggle.get('checked') ? dsbtn.set({
			'disabled' : false
		}) : dsbtn.set({
			'disabled' : true
		});
	};
	Model.prototype.saveClick=function(event){
		var sid = localStorage.getItem("sID");
		var msg = "AAEA05";
		var wbServerIP = localStorage.getItem("wbServerIP");
		var pl = this.comp('output1').value.toString(16);
		if(pl.length<2){
			pl="0"+pl;
		}
		msg=msg+pl;
		var toggle2=this.comp('toggle2');
		toggle2.get('checked')?msg=msg+"1":msg=msg+"0";
		var mod=this.getElementByXid('select1').value;
		msg=msg+mod;
		var toggle1=this.comp('toggle1');
		toggle1.get('checked')?msg=msg+"1":msg=msg+"0";
		var toggle3=this.comp('toggle3');
		toggle3.get('checked')?msg=msg+"1":msg=msg+"2";
		//var nw=localStorage.getItem("neiWai");
		msg=msg+"00171705160000000003";
		var chu=parseInt(this.getElementByXid('select5').value).toString(16);
		msg=msg+chu+"00000018AB";
		
		var iot = {};
		var idHex = '00000' + parseInt(sid).toString(16);
		var socket = io('http://'+wbServerIP+':4213');
		iot.deviceId = idHex.substr(idHex.length - 6).toUpperCase();
		// // 连接后登录
		socket.emit('appLogin', {
			deviceId : iot.deviceId
		});
		socket.emit('app2server', {
			deviceId : iot.deviceId,
			msg : msg
		});
		console.log(msg);
		
	};
	return Model;
});