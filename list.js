define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var io = require("./socket.io");
	var Model = function() {
		this.callParent();
	};
	// 图片路径转换
	Model.prototype.toUrl = function(url) {
		return url ? require.toUrl(url) : "";
	};
	Model.prototype.modelLoad = function(event) {
		var list = this.comp("listData");
		var user = {};
		user.userid = localStorage.getItem('userid');
		user.ajax = 1;
		$.post('http://' + localStorage.getItem("ajaxServerIP") + '/contact/index', user, function(data) {
			var ldata = data.list;
			if (ldata == null) {
				justep.Util.hint("当前没有设备，请添加！", {
					"type" : "danger"
				}, 'json');
			} else {
				var j = ldata.length - 1;
				for (var i = j; i >= 0; i--) {
					list.newData({
						index : 0,
						defaultValues : [ {
							"sID" : ldata[i]['deviceid'],
							"sname" : ldata[i]['devicename'],
							"status" : '离线',
						} ]
					});
				}
				var socket = io('http://' + localStorage.getItem("wbServerIP") + ':4213');
				var iot = {};
				socket.emit('getOnlineListFirst');
				socket.on('deviceList', function(iot) {
					var lRow = list.getLastRow();
					list.first();
					do {
						row = list.getCurrentRow();
						for (var i = 0; i < iot.length; i++) {
							var tid = '0000000' + parseInt(iot[i].substr(3), '16').toString();
							var deviceId = tid.substr(tid.length - 8);
							if (list.val("sID") == deviceId) {
								list.setValue("status", "在线");
							}
						}
						list.next();
					} while (lRow != row);

				});
			}
		});
	};
	Model.prototype.listClick = function(event) {
		var row = event.bindingContext.$object;
		if (row.row.status.value.latestValue == "在线") {
			var sID = row.row.sID.value.latestValue;
			var sname = row.row.sname.value.latestValue;
			localStorage.setItem('sID', sID);
			localStorage.setItem('sName', sname);
			localStorage.setItem('status', row.row.status.value.latestValue);

			justep.Shell.showPage('main');
		} else {
			justep.Util.hint("当前设备离线！", {
				"type" : "danger"
			}, 'json');
		}
	};
	Model.prototype.openPages = function(event) {
		var url = event.source.$domNode.attr('url');
		if (url.substr(0, 1) == "/")
			url = '$UI' + url;
		justep.Shell.showPage(require.toUrl(url));
	};
	return Model;
});