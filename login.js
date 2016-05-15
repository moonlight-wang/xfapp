define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function() {
		this.callParent();
		this.username= justep.Bind.observable('nameInput');
		this.password= justep.Bind.observable('passwordInput');
		this.username='wang1';
		this.password='admin';
	};

	// 进入注册页 
	Model.prototype.registeredClick = function(event) {
		var demo = $(event.target).attr("url");
		justep.Shell.showPage(demo);
	};

	Model.prototype.loginIsmBtn = function(event) {
		var user={};
		user.emp_no=this.username;
		user.password=this.password;
		user.ajax=1;
		$.post('http://localhost/xf/public/check_login',user,function(data){
			if (data.status==1) {
				//justep.Util.hint("登录成功");
				justep.Shell.userName.set(this.username);
	            localStorage.setItem("user", this.username);
				justep.Shell.showPage('main', {
						userName : this.username
					});
			    justep.Shell.closePage('login');
			} else {
				justep.Util.hint("用户名或密码有误！", {
					"type" : "danger"
			},'json');
		}
		})
	};

	return Model;
});