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
				},
				"list" : {
					url : require.toUrl('./list.w')
				},
				"edit" : {
					url : require.toUrl('./edit.w')
				},
				"config" : {
					url : require.toUrl('./config.w')
				},
				"feedBack" : {
					url : require.toUrl('./feedBack.w')
				},
				"about" : {
					url : require.toUrl('./about.w')
				},
				"strainer" : {
					url : require.toUrl('./strainer.w')
				},
				"lxreset" : {
					url : require.toUrl('./lxreset.w')
				},
				"changeID" : {
					url : require.toUrl('./changeID.w')
				},
				"changePassword" : {
					url : require.toUrl('./changePassword.w')
				}
				}});
				shellImpl.useDefaultExitHandler = false;

		CommonUtils.attachDoubleClickExitApp(function() {
			
			//var isHomePage = shellImpl.pagesComp.contents[0].innerContainer.getInnerModel().comp('windowContainer1').getActiveIndex() == 0;
			if (shellImpl.pagesComp.getActiveIndex() === 0) {
				return true;
			}
			return false;
		});
				
	};
	Model.prototype.modelLoad = function(event) {
		localStorage.setItem("ajaxServerIP","iot.mengtiankeji.com");
    	localStorage.setItem("wbServerIP","http://iot.mengtiankeji.com:4214");
		justep.Shell.userType = justep.Bind.observable();
		justep.Shell.userName = justep.Bind.observable();
		var userLocal = (localStorage.getItem("userUUID") && JSON.parse(localStorage.getItem("userUUID"))) || null;
		if (userLocal) {
			justep.Shell.userName.set(userLocal.name || "UNKNOWN");
			justep.Shell.userType.set(userLocal.accountType || "UNKNOWN");
		} else {
		
		}
		
	};

	return Model;
});