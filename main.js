define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var utils = require("$UI/system/components/justep/common/utils");
	var bmap = require('$UI/system/components/justep/bmap/bmap');
	var io = require("./socket.io");
	var socket;
	require("cordova!com.justep.cordova.plugin.baidulocation");
	require("cordova!cordova-plugin-x-socialsharing");

	var Model = function() {
		this.callParent();
	};
	// 图片路径转换
	Model.prototype.getImageUrl = function(url) {
		return require.toUrl(url);
	};
	Model.prototype.modelLoad = function(event) {
		this.getElementByXid('label7').innerHTML = localStorage.getItem("userName");
		var sid = localStorage.getItem("sID");
		var ajaxServerIP = localStorage.getItem("ajaxServerIP");
		var userid = localStorage.getItem("userid");
		var sname = localStorage.getItem("sName");
		var status = localStorage.getItem("status");
		var value = this.comp('valueData');
		var adata = this.comp('aData');
		var info = this.comp('infoData');
		var iot = {};
		var idHex = '00000' + parseInt(sid).toString(16);
		socket = io('http://' + localStorage.getItem("wbServerIP") + ':4213');
		iot.deviceId = idHex.substr(idHex.length - 6).toUpperCase();
		// // 连接后登录
		socket.emit('appLogin', {
			deviceId : iot.deviceId
		});
		socket.emit('app2server', {
			deviceId : iot.deviceId,
			msg : 'come from app'
		});
		info.newData({
			index : 0,
			defaultValues : [ {
				"fqy" : 40,
				"mode" : 2,
				"TOVC" : 43,
				"name" : "测试",
				"CO2" : 360,
				"nPM" : 23,
				"tmp" : 26,
				"hmy" : 56,
				"status" : 11,
				"gn" : 2,
			} ]
		});
		// // 后端推送来消息时
		socket.on('server2app', function(msg) {
			console.log(msg);
			localStorage.setItem("pinLv", parseInt(msg[4] + msg[5], 16));
			var mode = parseInt(msg[8] + msg[9], 16);
			localStorage.setItem("neiWai", parseInt(msg[8], 16));
			info.clear();
			info.newData({
				index : 0,
				defaultValues : [ {
					"fqy" : parseInt(msg[4] + msg[5], 16),
					"mode" : modeCased(mode),
					"TOVC" : parseInt(msg[6] + msg[7], 16),
					"name" : sname,
					"CO2" : parseInt(msg[20] + msg[21], 16),
					"nPM" : parseInt(msg[16] + msg[17], 16),
					"tmp" : parseInt(msg[26] + msg[27], 16),
					"hmy" : parseInt(msg[32] + msg[33], 16),
					"status" : status,
					"gn" : parseInt(msg[10] + msg[11], 16),
				} ]
			});
		});
		$.get('http://' + ajaxServerIP + '/contact/edit', {
			ajax : 1,
			userid : userid,
			id : sid
		}, function(data) {
			adata.newData({
				index : 0,
				defaultValues : [ {
					"city" : data.city,
				} ]
			});
			$.get('http://' + ajaxServerIP + '/contact/getWeather', {
				ajax : 1,
				userid : userid,
				city : data.city
			}, function(wdata, wstatus) {
				if (wstatus == 'success') {
					var wth = wdata['HeWeather data service 3.0'][0];
					value.newData({
						index : 0,
						defaultValues : [ {
							"weather" : wth.now.cond.txt,
							"temperature" : wth.now.tmp,
							"wPM" : wth.aqi.city.pm25,
						} ]
					});
				}
			}, 'json');
		}, 'json');

	};
	Model.prototype.tvoc = function() {
		var nData = this.comp("infoData");
		var TOVC = parseInt(nData.val("TOVC"));
		if (TOVC >= 0 && TOVC <= 24) {
			return "理想";
		} else if (TOVC >= 25 && TOVC <= 84) {
			return "合适";
		} else if (TOVC > 84) {
			return "危害";
		} else {
			return "未知";
		}
	};
	Model.prototype.CO = function() {
		var nData = this.comp("infoData");
		var CO2 = parseInt(nData.val("CO2"));
		if (CO2 >= 350 && CO2 < 450) {
			return "自然";
		} else if (CO2 >= 450 && CO2 < 1000) {
			return "清新";
		} else if (CO2 >= 1000 && CO2 < 2000) {
			return "浑浊";
		} else if (CO2 >= 2000 && CO2 <= 5000) {
			return "缺氧";
		} else {
			return "未知";
		}
	};
	Model.prototype.TEM = function() {
		var nData = this.comp("infoData");
		var TEMP = nData.val("tmp");
		if (TEMP < 10) {
			return "寒冷";
		} else if (TEMP >= 10 && TEMP < 20) {
			return "凉爽";
		} else if (TEMP >= 20 && TEMP < 30) {
			return "温暖";
		} else if (TEMP >= 30) {
			return "炎热";
		} else {
			return "未知";
		}
	};
	Model.prototype.Humidity = function() {
		var nData = this.comp("infoData");
		var humidity = parseInt(nData.val("hmy"));
		if (humidity < 40) {
			return "干燥";
		} else if (humidity >= 40 && humidity < 60) {
			return "适宜";
		} else if (humidity >= 60) {
			return "潮湿";
		} else {
			return "未知";
		}
	};
	Model.prototype.qLy = function() {
		var nData = this.comp("infoData");
		var nPM = parseInt(nData.val("nPM"));
		if (nPM <= 35) {
			return "优";
		} else if (nPM > 35 && nPM <= 75) {
			return "良";
		} else if (nPM > 75 && nPM <= 115) {
			return "轻度污染";
		} else if (nPM > 115 && nPM <= 150) {
			return "中度污染";
		} else if (nPM > 150 && nPM <= 250) {
			return "重度污染";
		} else if (nPM > 250) {
			return "严重污染";
		} else {
			return "未知";
		}
	};
	Model.prototype.gongNeng = function() {
		var nData = this.comp("infoData");
		var gn = parseInt(nData.val("gn"));
		switch (gn) {
		case 1 || 11 || 21 || 31:
			return "开";
			break;
		case 2 || 12 || 22 || 32:
			return "关";
			break;
		default:
			return "未知";
		}
	};
	Model.prototype.click = function(event) {
		this.comp('wing1').showLeft();
	};
	Model.prototype.openPage = function(event) {
		var url = event.source.$domNode.attr('url');
		if (url.substr(0, 1) == "/")
			url = '$UI' + url;
		justep.Shell.showPage(require.toUrl(url));
	};

	Model.prototype.getLocation = function() {
		var gpsDtd = $.Deferred();
		if (this.wxApi) {
			this.wxApi.exec().done(function(wx) {
				wx.getLocation({
					type : "gcj02",
					success : function(data) {
						gpsDtd.resolve({
							coorType : data.coorType,
							address : data.address,
							longitude : data.longitude,
							latitude : data.latitude
						});
					}/*
						 * , cancel : function(res) { gpsDtd.resolve({ longitude :
						 * 116.45764191999997, latitude : 39.8622934399999 }); }
						 */
				});
			}).fail(function() {
				gpsDtd.resolve({
					longitude : 116.45764191999997,
					latitude : 39.8622934399999
				});
			});
		} else if (navigator.geolocation) {
			var success = function(data) {
				// data.longtitude 经度
				// data.latitude 纬度
				// data.address 文字描述的地址信息
				// data.hasRadius 是否有定位精度半径
				// data.radius 定位精度半径
				// data.type 定位方式
				// data.coorType
				gpsDtd.resolve({
					coorType : data.coorType,
					address : data.address,
					longitude : data.coords.longitude,
					latitude : data.coords.latitude
				});
			};

			var fail = function(e) {
				justep.Util.hint("获取地理位置失败，暂时采用默认地址");
				gpsDtd.resolve({
					longitude : 116.45764191999997,
					latitude : 39.8622934399999
				});
			};
			/**
			 * 如果在室内 enableHighAccuracy: true 反而误差更大 如果在室外 enableHighAccuracy:
			 * true 相对准确
			 */
			navigator.geolocation.getCurrentPosition(success, fail);
		}
		return gpsDtd.promise();
	};
	Model.prototype.locationClick = function(event) {
		var self = this;
		var gpsDtd = self.getLocation();
		gpsDtd.done(function(position) {
			bmap.marker({
				location : position.latitude + "," + position.longitude,
				title : position.address,
				content : "",
				src : "justep"
			});
			console.log(position);
		});
	};
	Model.prototype.shareClick = function(event) {
		plugins.socialsharing.share("中嘉新风", null, null, "http://iot.mengtiankeji.com");
	};
	return Model;
});
function modeCased(mode) {
	switch (mode) {
	case 1 || 11:
		return "智能";
		break;
	case 2 || 12:
		return "手动";
		break;
	case 3 || 13:
		return "睡眠";
		break;
	default:
		return "未知";
	}
}
