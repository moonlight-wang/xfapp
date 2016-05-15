define(function(require){
	var $ = require("jquery");
	var io = require("./socket.io");
	var justep = require("$UI/system/lib/justep");
	var ShellImpl = require('$UI/system/lib/portal/shellImpl');
	var CommonUtils = require("$UI/system/components/justep/common/utils");
	var Model = function(){
		this.callParent();
		var shellImpl = new ShellImpl(this, {
			"contentsXid" : "pages",
			"pageMappings" : {
				"login" : {
					url : require.toUrl('./login.w')
				},
				"registerEmail" : {
					url : require.toUrl('./registerEmail.w')
				},
				"main" : {
					url : require.toUrl('./main.w')
				},
				"control" : {
					url : require.toUrl('./control.w')
				},
				"add" : {
					url : require.toUrl('./add.w')
				}
				}});
				shellImpl.useDefaultExitHandler = false;

		CommonUtils.attachDoubleClickExitApp(function() {
			
			//var isHomePage = shellImpl.pagesComp.contents[0].innerContainer.getInnerModel().comp('contents2').getActiveIndex() == 0;
			if (shellImpl.pagesComp.getActiveIndex() === 0) {
				return true;
			}
			return false;
		});
				
	};
	Model.prototype.modelLoad = function(event) {
		justep.Shell.userType = justep.Bind.observable();
		justep.Shell.userName = justep.Bind.observable();
		var userLocal = (localStorage.getItem("userUUID") && JSON.parse(localStorage.getItem("userUUID"))) || null;
		if (userLocal) {
			justep.Shell.userName.set(userLocal.name || "UNKNOWN");
			//justep.Shell.userType.set(userLocal.accountType || "UNKNOWN");
		} else {
		}
		
	};

	var idHex='00000'+parseInt('00000123').toString(16);
	console.log(idHex);
	var socket = io('http://' + document.domain + ':4213');
    var iot={};
    iot.deviceId=idHex.substr(idHex.length-6).toUpperCase();
//    // 连接后登录
    socket.emit('appLogin', {deviceId:iot.deviceId});
    socket.emit('app2server',{deviceId:iot.deviceId,msg:'come from app'});
//    // 后端推送来消息时
    socket.on('server2app', function(msg) {
        console.log(msg);
        $('#company').val(parseInt(msg[4]+msg[5],16));
    });

	return Model;
});