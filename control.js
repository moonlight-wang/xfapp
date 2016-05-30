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
    Model.prototype.controlClick = function(event){
    	var toggler=this.comp('toggle4');
    	toggler.get('checked')?toggler.set({
    		'checked':null
    	}):toggler.set({
    		'checked':'true'
    	});
    };
	Model.prototype.openPage = function(event) {
		var url = event.source.$domNode.attr('url');
		if (url.substr(0, 1) == "/")
			url = '$UI' + url;
		justep.Shell.showPage(require.toUrl(url));
	};
	Model.prototype.toggleChecked = function(event) {
		var dsbtn = this.comp('toggle4');
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
		var dsbtn = this.comp('toggle4');
		toggle.get('checked') ? dsbtn.set({
			'disabled' : false
		}) : dsbtn.set({
			'disabled' : true
		});
	};
	Model.prototype.saveClick=function(event){
		var sid = localStorage.getItem("sID");
		var msg = "AAEA05";                                   //05
		var wbServerIP = localStorage.getItem("wbServerIP");
		var pl = this.comp('output1').value;
		if(pl!=null){
			pl = pl.toString(16);
		}else{
			justep.Util.hint("频率不能为空！", {
					"type" : "danger"
				}, 'json');
				return ;
		}
		if(pl.length<2){
			pl="0"+pl;                                        //pl
		}
		msg=msg+pl;
		var toggle2=this.comp('toggle2');
		toggle2.get('checked')?msg=msg+"1":msg=msg+"0";       //mod
		var mod=this.getElementByXid('select1').value;
		msg=msg+mod;
		var toggle1=this.comp('toggle1');
		var gn;
		toggle1.get('checked')?gn="1":gn="0";
		var toggle3=this.comp('toggle3');
		toggle3.get('checked')?gn=gn+"1":gn=gn+"2";           //gn
		msg=msg+gn+"0017170516";
		var mnt=this.getElementByXid('select3').value;        //mnt*2
		var hour=this.getElementByXid('select2').value;       //hour*2
		msg=msg+mnt+hour+mnt+hour;
		var toggle4=this.comp('toggle4');
		toggle4.get('checked')?msg=msg+"13":msg=msg+"03";     //13+03
		var chu=parseInt(this.getElementByXid('select5').value).toString(16);  //chu
		if(localStorage.getItem("address")){
			msg=msg+chu+localStorage.getItem("address");
		}else{
			justep.Util.hint("设备未刷新", {"type":"danger"},"json");
			return;
		}
		var arr=msg.substring(4);
		var sum=0;
		var i=0;
		for(;i<arr.length;){
			sum+=parseInt(arr[i]+arr[i+1],16);
			i+=2;
		}
		sum = sum.toString(16);
		sum=sum.substr(-2);
		msg=msg+sum+"AB";
		console.log(msg);
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
	};
	return Model;
});