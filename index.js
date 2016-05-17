define(function(require){
	var $ = require("jquery");
	var io = require("./socket.io");
	var justep = require("$UI/system/lib/justep");
	var ShellImpl = require('$UI/system/lib/portal/shellImpl');
	var CommonUtils = require("$UI/system/components/justep/common/utils");
	var Model = function(){
		this.callParent();
		localStorage.setItem("rtServerIP",'192.168.1.102');
		localStorage.setItem("ajaxServerIP",'localhost');
		localStorage.setItem("sID",'00000123');
		localStorage.setItem("userid",'4');
		localStorage.setItem("sName",'sdfsdf4');
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

	

	return Model;
});