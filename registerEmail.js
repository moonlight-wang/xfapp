define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Baas = justep.Baas;
	var Model = function() {
		this.callParent();
	};

	
	//注册
	Model.prototype.verifyButton = function(event) {
		var userName = this.comp("userName").val();
		var val = this.comp("repassword").val();
		var password = this.comp("password").val();
		var res=/^[\@A-Za-z0-9\!\#\$\%\^\&\*\.\~]{8,22}$/;
		if(res.test(password)){
		var user={};
		user.ajax=1;
		user.emp_no=userName;
		user.password=password;
		user.repassword=val;
		$.post('http://' + localStorage.getItem("ajaxServerIP") + '/public/regist', user, function(data) {
			if(data.status==0){
				justep.Util.hint(data['info'], {
					"type" : "danger"
				}, 'json');
			}else{
				justep.Util.hint('注册成功，请返回登录！', {
					"type" : "success"
				}, 'json');
			}
		});
		}else{
			justep.Util.hint("密码格式不正确！", {
					"type" : "danger"
				}, 'json');
		}
	};

	return Model;
});