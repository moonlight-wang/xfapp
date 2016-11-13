define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var html2canva = require("./html2canvas");
	var utils = require("$UI/system/components/justep/common/utils");
	var bmap = require('$UI/system/components/justep/bmap/bmap');
	var io = require("./socket.io");
	var socket;
	require("cordova!com.justep.cordova.plugin.baidulocation");
	require("cordova!cordova-plugin-x-socialsharing");

	var Model = function() {
		this.callParent();
	};
	/*
	 * // 图片路径转换 Model.prototype.getImageUrl = function(url) { return
	 * require.toUrl(url); };
	 */
	Model.prototype.modelLoad = function(event) {
		var refesh = 0;
		this.getElementByXid('label7').innerHTML = localStorage.getItem("userName");
		var first = true;
		var jishi = 0;
		var sid = localStorage.getItem("sID");
		var blast = 5;
		switch (sid.substr(0, 2)) {
		case "00":
			blast = 10;
			break;
		case "01":
			blast = 5;
			break;
		case "02":
			blast = 20;
			break;
		case "03":
			blast = 15;
			break;
		default:
			blast = 5;
		}
		var ajaxServerIP = localStorage.getItem("ajaxServerIP");
		var userid = localStorage.getItem("userid");
		var sname = localStorage.getItem("sName");
		var span = this.getElementByXid("span17");
		var element = this.getElementByXid('image4');
		span.style.height = window.screen.width * 0.34 + "px";
		element.style.height = window.screen.width * 0.34 + "px";
		var value = this.comp('valueData');
		var adata = this.comp('aData');
		var info = this.comp('infoData');
		var lxData = this.comp('lxData');
		info.newData({
			index : 0,
			defaultValues : [ {
				"fqy" : 40,
				"mode" : "智能",
				"TOVC" : 43,
				"name" : "测试",
				"CO2" : 360,
				"nPM" : 23,
				"tmp" : 26,
				"hmy" : 56,
				"status" : "在线",
				"gn" : 2,
				"wPM" : 40,
				"blast" : 80
			} ]
		});
		var r = 0;
		var i = 1;
		element.src = './img/lv.png';
		function rotate() {
			r += i;
			element.style.MozTransform = "rotate(" + r + "deg)";
			element.style.webkitTransform = "rotate(" + r + "deg)";
			element.style.msTransform = "rotate(" + r + "deg)";
			element.style.OTransform = "rotate(" + r + "deg)";
			element.style.transform = "rotate(" + r + "deg)";
		}
		var timer = setInterval(rotate, 1);
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
		socket.on('appOffline', function(data) {
			info.clear();
			info.newData({
				index : 0,
				defaultValues : [ {
					"fqy" : 40,
					"mode" : "智能",
					"TOVC" : 43,
					"name" : "测试",
					"CO2" : 360,
					"nPM" : 23,
					"tmp" : 26,
					"hmy" : 56,
					"status" : "离线",
					"gn" : 2,
					"wPM" : 40,
					"blast" : 80
				} ]
			});
		});
		// // 后端推送来消息时
		socket.on('server2app', function(msg) {
			// console.log(msg);
			if (msg.substr(0, 4) == "40DA") {
				var arr = msg.substr(34, 6);
				localStorage.setItem("address", arr);
				localStorage.setItem("pinLv", parseInt(msg[4] + msg[5], 16));
				var mode = parseInt(msg[8] + msg[9], 16);
				if (mode !== 0) {
					localStorage.setItem("kg", "k");
				} else {
					localStorage.setItem("kg", "g");
				}
				localStorage.setItem("neiWai", parseInt(msg[8], 16));

				if (parseInt(msg[14] + msg[15] + msg[12] + msg[13], 16) !== 0) {
					var status = localStorage.getItem("status");
					refesh = 0;
					var pm25in = parseInt(msg[18] + msg[19] + msg[16] + msg[17], 16);
					var pm25out = parseInt(msg[14] + msg[15] + msg[12] + msg[13], 16);
					info.clear();
					info.newData({
						index : 0,
						defaultValues : [ {
							"fqy" : parseInt(msg[4] + msg[5], 16),
							"mode" : modeCased(mode),
							"TOVC" : parseInt(msg[6] + msg[7], 16),
							"name" : sname,
							"CO2" : parseInt(msg[22] + msg[23] + msg[20] + msg[21], 16),
							"nPM" : parseInt(msg[18] + msg[19] + msg[16] + msg[17], 16),
							"tmp" : parseInt(msg[26] + msg[27], 16) < 100 ? parseInt(msg[26] + msg[27], 16) : "-" + (parseInt(msg[26] + msg[27], 16) - 100),
							"hmy" : parseInt(msg[32] + msg[33], 16),
							"status" : status,
							"gn" : parseInt(msg[10] + msg[11], 16),
							"wPM" : parseInt(msg[14] + msg[15] + msg[12] + msg[13], 16),
							"blast" : parseInt(msg[4] + msg[5], 16) * 47 / blast
						} ]
					});
				} else {
					if (refesh == 1) {
						return;
					}
					if (parseInt(msg.substr(4, 30), 16) == 0) {
						status = "离线";
						refesh = 1;
					}
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
								info.clear();
								info.newData({
									index : 0,
									defaultValues : [ {
										"fqy" : parseInt(msg[4] + msg[5], 16),
										"mode" : modeCased(mode),
										"TOVC" : parseInt(msg[6] + msg[7], 16),
										"name" : sname,
										"CO2" : parseInt(msg[22] + msg[23] + msg[20] + msg[21], 16),
										"nPM" : parseInt(msg[18] + msg[19] + msg[16] + msg[17], 16),
										"tmp" : parseInt(msg[26] + msg[27], 16) < 100 ? parseInt(msg[26] + msg[27], 16) : "-" + (parseInt(msg[26] + msg[27], 16) - 100),
										"hmy" : parseInt(msg[32] + msg[33], 16),
										"status" : status,
										"gn" : parseInt(msg[10] + msg[11], 16),
										"wPM" : wth.aqi.city.pm25,
										"blast" : parseInt(msg[4] + msg[5], 16) * 47 / blast
									} ]
								});
								var pm25in = parseInt(msg[18] + msg[19] + msg[16] + msg[17], 16);
								var pm25out = parseInt(msg[14] + msg[15] + msg[12] + msg[13], 16);
							}
						}, 'json');
					}, 'json');
				}
				// console.log(pm25in+' '+first);
				if (jishi % 720 == 0) {

					if (pm25in) {
						$.post('http://' + ajaxServerIP + '/contact/saveInfo', {
							ajax : 1,
							userid : userid,
							recievedate : new Date().getTime(),
							id : sid,
							pm25in : pm25in,
							pm25out : pm25out
						}, function(data) {
							// console.log(data);
						});

					}
				}

				jishi += 1;
				var nPM = parseInt(info.val("nPM"));
				if (nPM <= 35) {
					element.src = './img/lv.png';
				} else if (nPM > 35 && nPM <= 75) {
					element.src = './img/huang.png';
				} else if (nPM > 75 && nPM <= 115) {
					element.src = './img/ju.png';
				} else if (nPM > 115 && nPM <= 150) {
					element.src = './img/hong.png';
				} else if (nPM > 150 && nPM <= 250) {
					element.src = './img/zhong.png';
				} else if (nPM > 250) {
					element.src = './img/yan.png';
				} else {
					element.src = './img/lv.png';
				}
				var hqy = parseInt(msg[4] + msg[5], 16);
				if (parseInt(msg.substr(4, 30), 16) == 0) {
					window.clearInterval(timer);
				} else {
					if ((50 - hqy) > 0) {
						window.clearInterval(timer);
						timer = setInterval(rotate, (50 - hqy));
					} else {
						window.clearInterval(timer);
						timer = setInterval(rotate, 1);
					}
				}
				localStorage.setItem("moshi", modeCased(mode));
			} else if (msg.substr(0, 4) == "409A") {
				if ((parseInt(msg[16] + msg[17], 16) == 1) || (parseInt(msg[18] + msg[19], 16) == 1) || (parseInt(msg[20] + msg[21], 16) == 1)) {
					lxData.newData({
						index : 0,
						defaultValues : [ {
							"lx" : 1
						} ]
					});
				}
				localStorage.setItem("message", msg);
			}
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
						} ]
					});
				}
			}, 'json');
		}, 'json');

	};
	Model.prototype.mdataActive = function() {
		var mData = this.comp('mData');
		if (localStorage.getItem("lock")) {
			mData.clear();
			mData.newData({
				index : 0,
				defaultValues : [ {
					"lx" : "0",
					"lock" : localStorage.getItem("lock")
				} ]
			});
		}
	};
	Model.prototype.tvoc = function() {
		var nData = this.comp("infoData");
		var TOVC = parseInt(nData.val("TOVC"));
		if (TOVC >= 0 && TOVC <= 2) {
			return "理想";
		} else if (TOVC >= 3 && TOVC <= 8) {
			return "合适";
		} else if (TOVC > 8) {
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
		case 1:
		case 11:
		case 21:
		case 31:
			return "开";
			break;
		case 2:
		case 12:
		case 22:
		case 32:
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
					}
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
			// console.log(position);
		});
	};
	Model.prototype.shareClick = function(event) {
		plugins.socialsharing.share("中嘉新风", null, null, "http://iot.mengtiankeji.com")
		/*
		 * // window.location.href); // event.preventDefault();
		 * html2canvas(this.getElementByXid('content2'), { allowTaint : true,
		 * taintTest : false, onrendered : function(canvas) { canvas.id =
		 * "mycanvas"; // document.body.appendChild(canvas); // 生成base64图片数据 var
		 * dataUrl = canvas.toDataURL();
		 * $.post('http://iot.mengtiankeji.com/contact/saveImg', { ajax : 1,
		 * userid : 4, dataUrl : dataUrl }, function(data) { });
		 * 
		 * var newImg = document.createElement("img"); newImg.src = dataUrl;
		 * document.body.appendChild(newImg);
		 *  } });
		 */
		// plugins.socialsharing.share("中嘉新风", null, null, dataUrl);
	};
	Model.prototype.button21Click = function(event) {
		var url = event.source.$domNode.attr('url');
		if (url.substr(0, 1) == "/")
			url = '$UI' + url;
		this.owner.close();
		socket.disconnect();
		justep.Shell.showPage(require.toUrl(url));
	};
	return Model;
});
function modeCased(mode) {
	switch (mode) {
	case 11:
		return "智能";
		break;
	case 12:
		return "手动";
		break;
	case 13:
		return "睡眠";
		break;
	case 1:
		return "智能";
		break;
	case 2:
		return "手动";
		break;
	case 3:
		return "睡眠";
		break;
	default:
		return "未知";
	}
}
