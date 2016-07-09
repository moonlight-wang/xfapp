define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var io = require("./socket.io");
	var Model = function() {
		this.callParent();
	};
	Model.prototype.addCountBtnClick = function(event) {
		this.comp('output1').set('value',parseInt(this.comp('output1').get('value'))+1);
		
	};
	Model.prototype.reduceCountBtnClick = function(event) {
		this.comp('output1').set('value',(parseInt(this.comp('output1').get('value'))>0)?parseInt(this.comp('output1').get('value'))-1:0);
		console.log(this.comp('output1').value);
	};
	Model.prototype.menuBtnClick = function(event) {
		justep.Shell.showLeft();
	};
	Model.prototype.controlClick = function(event) {
		var toggler = this.comp('toggle4');
		toggler.get('checked') ? toggler.set({
			'checked' : null
		}) : toggler.set({
			'checked' : 'true'
		});
	};
	Model.prototype.openPage = function(event) {
		var url = event.source.$domNode.attr('url');
		if (url.substr(0, 1) == "/")
			url = '$UI' + url;
		justep.Shell.showPage(require.toUrl(url));
	};
	Model.prototype.toggleChecked = function(event) {
		/*
		 * var dsbtn = this.comp('toggle4'); dsbtn.get('disabled') ? dsbtn.set({
		 * 'disabled' : false }) : dsbtn.set({ 'disabled' : true });
		 */
	};
	Model.prototype.modelLoad = function(event) {
		var valueData = this.comp('valueData');
		var div4 = this.getElementByXid('div4');
		var optionzhi = this.getElementByXid('default9');
		var optionshou = this.getElementByXid('default8');
		var optionshui = this.getElementByXid('default7');
		var toggle1 = this.comp('toggle1');
		var toggle2 = this.comp('toggle2');
		if(localStorage.getItem("lock")=="1"){
			toggle2.set('checked',true);
		}
		
		if(localStorage.getItem("moshi")=="手动"){
			optionshou.selected = "selected";
		}else if(localStorage.getItem("moshi")=="睡眠"){
			optionshui.selected = "selected";
		}else {
			optionzhi.selected = "selected";
		}
		div4.style.height = window.screen.width*0.3 + "px";
		var span1 = this.getElementByXid("span1");
		this.getElementByXid('span7').style.lineHeight = div4.style.height;	
		this.getElementByXid('span1').style.lineHeight = div4.style.height;	
		this.getElementByXid('span4').style.lineHeight = div4.style.height;
		var plData = this.comp('plData');
		//var mData = this.comp('mData');
		span1.style.backgroundImage = "url(./img/lv.png)";
		span1.style.backgroundSize = "100% 100%";
		valueData.clear();
		valueData.newData({
			index : 0,
			defaultValues : [ {
				"pinlv" : localStorage.getItem("pinLv"),
				"vID" : "Hz"
			} ]
		});
		/*for (var i = 59; i >= 0; i--) {
			mData.newData({
				index : 0,
				defaultValues : [ {
					"m" : i,
					"xianshi" : i + "分"
				} ]
			});
		}*/
		
		for (var j = 255; j > 48; j--) {
			if (j == 49) {
				plData.newData({
					index : 0,
					defaultValues : [ {
						"pl" : "静电除尘",
						"a" : "静电除尘"
					} ]
				});
			} else {
				plData.newData({
					index : 0,
					defaultValues : [ {
						"pl" : j,
						"a" : j
					} ]
				});
			}
		}
		
		
	};
	Model.prototype.colseClick = function(event) {
		var msg2 = "AAEA051E01020000000000000000000132" + localStorage.getItem("address");
		var arr = msg2.substring(4);
		var sum = 0;
		var i = 0;
		for (; i < arr.length;) {
			sum += parseInt(arr[i] + arr[i + 1], 16);
			i += 2;
		}
		sum = sum.toString(16);
		sum = sum.substr(-2);
		msg2 = msg2 + sum + "AB";
		var iot = {};
		var idHex = '00000' + parseInt(localStorage.getItem("sID")).toString(16);
		var socket = io('http://' + localStorage.getItem("wbServerIP") + ':4213');
		iot.deviceId = idHex.substr(idHex.length - 6).toUpperCase();
		socket.emit('app2server', {
			deviceId : iot.deviceId,
			msg : msg2
		});
	};
	Model.prototype.doOK = function(event) {
		var comp = event.source;
		var value = comp.getValue();
		if(localStorage.getItem("leixing")=="定时开"){
			value= justep.Date.toString(value, "hh时mm分");
			this.comp('output2').set('value',value);	
		}else{
			value= justep.Date.toString(value, "hh时mm分");
			this.comp('output3').set('value',value);
		}
	};
	Model.prototype.datePickerClick = function(event){
		localStorage.setItem("leixing", event.source.label);
		var comp = this.comp('datePicker');
		comp.set('type',"timer");
		comp.show();
		comp.setValue(new Date());
	};
	Model.prototype.saveClick = function(event) {
		var sid = localStorage.getItem("sID");
		var msg = "AAEA05"; // 05
		var wbServerIP = localStorage.getItem("wbServerIP");
		var pl = this.comp('output1').value;
		if (pl !== null) {
			pl = parseInt(pl).toString(16);
		} else {
			justep.Util.hint("频率不能为空！", {
				"type" : "danger"
			}, 'json');
			return;
		}
		if (pl.length < 2) {
			pl = "0" + pl; // pl
		}
		msg = msg + pl;
		var toggle2 = this.comp('toggle2');
		var mod = this.getElementByXid('select1').value;
		if (toggle2.get('checked')) {
			mod = "0" + parseInt("1" + mod).toString(16);
			localStorage.setItem("lock", "1");
		} else {
			mod = "0" + mod;
			localStorage.setItem("lock", "0");
		}
		msg = msg + mod;
		var toggle1 = this.comp('toggle1');
		var gn, mnt, mnt1,hour,hour1;
		if (toggle1.get('checked')) {
			gn = "1";
			if (this.comp('output2').get('value') && this.comp('output3').get('value')) {
				mnt = ("0" + parseInt(this.comp('output2').get('value').substr(3)).toString(16)).substr(-2);
				mnt1 = ("0" + parseInt(this.comp('output3').get('value').substr(3)).toString(16)).substr(-2);
				hour = ("0" + parseInt(this.comp('output2').get('value')).toString(16)).substr(-2); // hour*2
				hour1 = ("0" + parseInt(this.comp('output3').get('value')).toString(16)).substr(-2);
				console.log(parseInt(this.comp('output2').get('value').substr(3)).toString(16));
			} else {
				justep.Util.hint("未选择开关机时间！", {
					"type" : "danger"
				}, "json");
				return;
			}
		} else {
			gn = "0";
			mnt = "00";
			mnt1 = "00";
			hour = "00";
			hour1 = "00";
		}
		var toggle5 = this.comp('toggle5');
		toggle5.get('checked') ? gn = gn + "1" : gn = gn + "2"; // gn
		gn = "0" + parseInt(gn).toString(16);
		var myDate = new Date();
		var year = ("0"+parseInt(myDate.getFullYear().toString().substr(2,2)).toString(16)).substr(-2);
		var month = ("0" + parseInt(myDate.getMonth() + 1).toString(16)).substr(-2);
		var dat = ("0" + myDate.getDate().toString(16)).substr(-2);
		var hours = ("0" + myDate.getHours().toString(16)).substr(-2);
		var minute = ("0" + myDate.getMinutes().toString(16)).substr(-2);
		msg = msg + gn + minute + hours + dat + month + year + mnt + hour + mnt1 + hour1;
		var nww = "00";
		msg = msg + nww;
		var chu = "32";
		if (!isNaN(this.getElementByXid('select7').value)) {
			chu = parseInt(this.getElementByXid('select7').value).toString(16); // chu
		} 
		if (localStorage.getItem("address")) {
			msg = msg + chu + localStorage.getItem("address");
		} else {
			justep.Util.hint("设备未刷新", {
				"type" : "danger"
			}, "json");
			return;
		}
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
		console.log(msg);
		var iot = {};
		var idHex = '00000' + parseInt(sid).toString(16);
		var socket = io('http://' + wbServerIP + ':4213');
		iot.deviceId = idHex.substr(idHex.length - 6).toUpperCase();
		/*
		 * socket.emit('appLogin', { deviceId : iot.deviceId });
		 */
		socket.emit('app2server', {
			deviceId : iot.deviceId,
			msg : msg
		});
		
		  justep.Util.hint("保存成功", { "type" : "success" }, 'json');
		 
	};
	return Model;
});
