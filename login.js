define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
		this.username = justep.Bind.observable('nameInput');
		this.username = 'wang1';
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
		if(localStorage.getItem("ajaxServerIP")){
		var user = {};
		user.emp_no = this.username;
		localStorage.setItem('userName', this.username);
		user.password = this.comp('passwordInput').value;
		user.ajax = 1;
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
		}else{
			justep.Util.hint("未配置网络，请点击右上角配置！", {
					"type" : "danger"
				}, 'json');
		}
	};
	return Model;
});