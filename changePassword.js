define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};
	Model.prototype.sendsmsButton = function(event){
		var tel = this.comp('tel').val();

		if (!(/^1[3|4|5|7|8]\d{9}$/.test(tel))) {
			justep.Util.hint("手机号码有误，请重填！", {
				"type" : "danger"
			}, 'json');
			return false;
		}
		this.comp("sendsmsbutton").mytimer();
		var user = {};
		user.ajax = 1;
		user.tel = tel;
		user.emp_no = localStorage.getItem('userName');
		$.post('http://' + localStorage.getItem("ajaxServerIP") + '/public/getcode', user, function(data) {
			console.log(data);
			if (data.successCounts == 1) {
				justep.Util.hint('获取验证码成功！', {
					"type" : "success"
				}, 'json');
			}else{
				justep.Util.hint('获取验证码失败！', {
					"type" : "danger"
				}, 'json');
			}
		});
		
	};
	
	Model.prototype.modelLoad = function(event){
		var comp = this.comp("sendsmsbutton");
		Timmer.apply(comp, [ 60, "免费获取验证码", "重新发送" ]);
	};
	function Timmer(loopSecond, titile1, title2, lisentner) { // todo
		// 还要检查一个结果返回变量。
		this.loopSecond = loopSecond;
		this.waittime = loopSecond;
		var self = this;
		this.mytimer = function() {
			if (self.waittime <= 0) {
				self.set({
					"disabled" : false,
					"label" : titile1
				});
				this.waittime = loopSecond; // 可设 60秒
			} else {
				self.set({
					"disabled" : true,
					"label" : title2 + "(" + self.waittime + ")"
				});
				self.waittime--;
				setTimeout(function() {
					self.mytimer();
				}, 1000);
			}
		}

	};
	Model.prototype.verifyButton = function(event){
		var userName = localStorage.getItem('userName');
		var val = this.comp("repassword").val();
		var password = this.comp("password").val();
		var res = /^[\@A-Za-z0-9\!\#\$\%\^\&\*\.\~]{8,22}$/;
		if (res.test(password)) {
			var user = {};
			user.ajax = 1;
			user.emp_no = userName;
			user.password = password;
			user.verify = this.comp('verifyCode').val();
			user.tel = this.comp('tel').val();
			user.repassword = val;
			console.log(user);
			$.post('http://' + localStorage.getItem("ajaxServerIP") + '/public/resetPassword', user, function(data) {
				if (data.status == 0) {
					justep.Util.hint(data['info'], {
						"type" : "danger"
					}, 'json');
				} else {
					justep.Util.hint('重置成功，请返回登录！', {
						"type" : "success"
					}, 'json');
				}
			});
		} else {
			justep.Util.hint("密码格式不正确！", {
				"type" : "danger"
			}, 'json');
		}
	};
	return Model;
});