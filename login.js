define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
		this.IP = justep.Bind.observable('input1');
		this.username = justep.Bind.observable('nameInput');
		this.password = justep.Bind.observable('passwordInput');
		this.username = 'wang1';
		this.password = 'admin';
		this.IP="192.168.1.131";
	};

	// 进入注册页
	Model.prototype.registeredClick = function(event) {
		var demo = $(event.target).attr("url");
		justep.Shell.showPage(demo);
	};
    Model.prototype.configClick = function(event){
    	justep.Shell.showPage('config');
    };
	Model.prototype.loginIsmBtn = function(event) {
//	var wbServerIP=this.comp('input1').val();
//		console.log(wbServerIP);
		localStorage.setItem("wbServerIP",this.IP);
		localStorage.setItem("ajaxServerIP",this.IP+"/xf");
		var user = {};
		user.emp_no = this.username;
		user.password = this.password;
		user.ajax = 1;
		console.log(this.IP);
		$.post('http://' + localStorage.getItem("ajaxServerIP") + '/public/check_login', user, function(data) {
			if (data.status == 1) {
				localStorage.setItem("userid", data.userid);
				justep.Shell.showPage('list');
				justep.Shell.closePage('login');
			} else {
				justep.Util.hint("用户名或密码有误！", {
					"type" : "danger"
				}, 'json');
			}
		});
		
	};

	return Model;
});