define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var io = require("./socket.io");
	var touch = require("./touch");
	require("$UI/system/lib/cordova/cordova");
	
	var Model = function() {
		this.callParent();
	};
	// 图片路径转换
	Model.prototype.toUrl = function(url) {
		return url ? require.toUrl(url) : "";
	};
	
	
	Model.prototype.swipeDelete = function(){
		var newsContentID = this.getIDByXID('content6');
		var swipeAreaSize = 100;
		var dx;
		touch.on('#' + newsContentID, 'touchstart', function(ev){
			//ev.preventDefault();
			var $swipNode = $('#' + newsContentID + " li").has(ev.target);
			dx = parseInt($swipNode.attr('swipeX') || "0");
		});
		
		touch.on('#'+ newsContentID, 'drag', function(ev){
			var $swipNode = $('#' + newsContentID + " li").has(ev.target);
			if(ev.direction === "left" || ev.direction === "right"){
				dx = dx || 0;
				var offx = dx + ev.x;
				if(offx < swipeAreaSize*-1){
					offx = swipeAreaSize*-1;
				}
				if(offx > 0){
					offx = 0;
				}
				if(ev.direction === "right" && $swipNode.hasClass('x-swipe-out')){
					$swipNode.css({'transform':'translate3d('+offx+'px,0,0)'});
				}else if(ev.direction === "left" && (!$swipNode.hasClass('x-swipe-out'))){
					$swipNode.css({'transform':'translate3d('+offx+'px,0,0)'});
				}
			}
		});
		touch.on('#'+ newsContentID, 'dragend', function(ev){
			var $swipNode = $('#' + newsContentID + " li").has(ev.target);
			if(ev.direction === "left"){
				$swipNode.css({'transform':'translate3d(-'+swipeAreaSize+'px,0,0)'});
				$swipNode.addClass('x-swipe-out');
				dx = swipeAreaSize*-1;
			}else if(ev.direction === "right"){
				$swipNode.removeClass('x-swipe-out');
				$swipNode.css({'transform':'translate3d(0,0,0)'});
				dx = 0;
			}
			$swipNode.attr('swipeX',dx);
		});
	};
	
	
	Model.prototype.modelLoad = function(event) {
		this.swipeDelete();
		var list = this.comp("listData");
		var user = {};
		user.userid = localStorage.getItem('userid');
		user.ajax = 1;
		$.post('http://' + localStorage.getItem("ajaxServerIP") + '/contact/index', user, function(data) {
			var ldata = data.list;
			if (ldata == null) {
				justep.Util.hint("当前没有设备，请添加！", {
					"type" : "danger"
				});
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
				var socket = io(localStorage.getItem("wbServerIP"));
				var iot = {};
				socket.emit('getOnlineList');
				socket.on('deviceList', function(iot) {
					console.log(iot);
					var lRow = list.getLastRow(),row;
					list.first();
					do {
						row = list.getCurrentRow();
						for (var i = 0; i < iot.length; i++) {
							var tid = '0000000' + parseInt(iot[i].substr(3),16).toString();
							var deviceId = tid.substr(-8);
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
//		localStorage.setItem("orientation",window.screen.orientation);
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
			});
		}
	};
	Model.prototype.openPages = function(event) {
		var url = event.source.$domNode.attr('url');
		if (url.substr(0, 1) == "/")
			url = '$UI' + url;
		justep.Shell.showPage(require.toUrl(url));
	};
	Model.prototype.div27Click = function(event){
		var row = event.bindingContext.$object;
		var sID = row.row.sID.value.latestValue;
		var listData = this.comp("listData");
		var del = listData.find(["sID"], [sID]);
		listData.deleteData(del)
		var user = {};
		user.userid = localStorage.getItem('userid');
		user.deviceid = sID;
		user.ajax = 1;
		$.post('http://' + localStorage.getItem("ajaxServerIP") + '/contact/delUserDevice', user, function(data) {
			
		});
	};
	return Model;
});