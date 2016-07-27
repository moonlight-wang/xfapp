define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var io = require("./socket.io");
	var Model = function() {
		this.callParent();
	};

	Model.prototype.button1Click = function(event) {
		var lxmsg = "AA8A";
		var chuxiao = this.comp("input1").val();
		var jingdian = this.comp("input2").val();
		var gaoxiao = this.comp("input3").val();
		
		if (chuxiao && jingdian && gaoxiao) {

			chuxiao = "0" + parseInt(chuxiao).toString(16);
			jingdian = "0" + parseInt(jingdian).toString(16);
			gaoxiao = "0" + parseInt(gaoxiao).toString(16);
			var di = chuxiao.substr(-2);
			var gao = chuxiao.substr(0, 2);
			lxmsg = lxmsg + di + gao + jingdian.substr(-2) + jingdian.substr(0,2) + gaoxiao.substr(-2) + gaoxiao.substr(0,2) + "010101000000000000" + localStorage.getItem("address");
			var arr = lxmsg.substring(4);
			var sum = 0;
			var i = 0;
			for (; i < arr.length;) {
				sum += parseInt(arr[i] + arr[i + 1], 16);
				i += 2;
			}
			sum = sum.toString(16);
			sum = sum.substr(-2);
			lxmsg = lxmsg + sum + "AB";
			console.log(lxmsg);
			var iot = {};
			var idHex = '00000' + parseInt(localStorage.getItem("sID")).toString(16);
			var socket = io('http://' + localStorage.getItem("wbServerIP") + ':4213');
			iot.deviceId = idHex.substr(idHex.length - 6).toUpperCase();
			/*
			 * socket.emit('appLogin', { deviceId : iot.deviceId });
			 */
			socket.emit('app2server', {
				deviceId : iot.deviceId,
				msg : lxmsg
			});

			justep.Util.hint("重置成功", {
				"type" : "success"
			}, 'json');
		}else{
			lxmsg = lxmsg + "70087008E010010101000000000000" + localStorage.getItem("address");
			var arr = lxmsg.substring(4);
			var sum = 0;
			var i = 0;
			for (; i < arr.length;) {
				sum += parseInt(arr[i] + arr[i + 1], 16);
				i += 2;
			}
			sum = sum.toString(16);
			sum = sum.substr(-2);
			lxmsg = lxmsg + sum + "AB";
			console.log(lxmsg);
			var iot = {};
			var idHex = '00000' + parseInt(localStorage.getItem("sID")).toString(16);
			var socket = io('http://' + localStorage.getItem("wbServerIP") + ':4213');
			iot.deviceId = idHex.substr(idHex.length - 6).toUpperCase();
			/*
			 * socket.emit('appLogin', { deviceId : iot.deviceId });
			 */
			socket.emit('app2server', {
				deviceId : iot.deviceId,
				msg : lxmsg
			});

			justep.Util.hint("重置成功", {
				"type" : "success"
			}, 'json');
			
			justep.Util.hint("请正确填写滤芯寿命", {
				"type" : "danger"
			}, 'json');
		}
	};

	return Model;
});