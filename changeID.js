define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var io = require("./socket.io");
	var Model = function() {
		this.callParent();
	};

	Model.prototype.button1Click = function(event) {
		var input1 = this.comp('input1').val();
		if (input1.length !== 8 || parseInt(input1[3]) > 5 || parseInt(input1[5]) > 7) {
			justep.Util.hint("ID号不符合规则！", {
				"type" : "danger"
			}, 'json');
		} else {
			var user = {};
			user.ajax = 1;
			user.userid = 1;
			user.deviceid = parseInt(this.comp("input1").val());
			$.post('http://' + localStorage.getItem("ajaxServerIP") + '/contact/saveDeviceID', user, function(data, status) {
				console.log(data);
				if (data.status) {
					var msg = "AABB00";
					
					var dId = ("000000" + parseInt(input1).toString(16)).substr(-6).toUpperCase();
					msg = msg + dId.substr(-2) + dId.substr(2, 2) + dId.substr(0, 2) + "0000000000000000000000000000";
					var arr = msg.substring(4);
					var sum = 0;
					var i = 0;
					for (; i < arr.length;) {
						sum += parseInt(arr[i] + arr[i + 1], 16);
						i += 2;
					}
					sum = sum.toString(16);
					sum = sum.substr(-2);
					msg = msg + sum + "AB";
					var iot = {};
					var socket = io('http://' + localStorage.getItem("wbServerIP") + ':4213');
					iot.deviceId = "FFFFFF";
					// // 连接后登录
					socket.emit('appLogin', {
						deviceId : iot.deviceId
					});
					socket.emit('app2server', {
						deviceId : iot.deviceId,
						msg : msg
					});
					console.log(msg);
					justep.Util.hint("添加成功", {
						"type" : "success"
					}, 'json');
				} else {
					justep.Util.hint("添加失败", {
						"type" : "danger"
					}, 'json');
				}
			});
		}
	};

	return Model;
});