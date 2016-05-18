define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};
	Model.prototype.getAddr = function(event) {
		var type = event.source.$domNode.attr('dtype');
		type = type == '1' ? 'cityData' : 'countyData';
		var vo1 = this.getElementByXid('province').value;
		var vo2 = this.getElementByXid('city').value;
		var user = {};
		user.ajax = 1;
		user.userid = localStorage.getItem("userid");
		type == 'cityData' ? user.pid = vo1 : user.pid = vo2;
		var cData = this.comp(type);
		$.get('http://' + localStorage.getItem("ajaxServerIP") + '/xf/contact/getAreas', user, function(data, status) {
			var opts = data.value;
			for (var i = 0; i < opts.length; i++) {
				cData.newData({
					index : 0,
					defaultValues : [ {
						"cID" : opts[i]["id"],
						"c" : opts[i]["name"]
					} ]
				});
			}
		});
	};
	Model.prototype.modelLoad = function(event) {
		var pData = this.comp('pData');
		var sID=localStorage.getItem("sID");
		this.getElementByXid('input5').value=sID;
		var userid = localStorage.getItem("userid");
		$.get('http://' + localStorage.getItem("ajaxServerIP") + '/xf/contact/add', {
			ajax : 1,
			userid : userid
		}, function(data) {
			var ldata = data.province;
			for (var i = 0; i < ldata.length; i++) {
				pData.newData({
					index : 0,
					defaultValues : [ {
						"province" : ldata[i]["name"],
						"pID" : ldata[i]["id"]
					} ]
				});
			}
		});
	};
	Model.prototype.saveClicked=function(event){
		var sID=localStorage.getItem("sID");
		var user={};
		user.opmode="edit";
		user.ajax=1;
		user.userid= localStorage.getItem("userid");
		user.deviceid="00001112";
		user.devicename=this.comp('input1').val();
		user.province=this.getElementByXid('province').value;
		user.city=this.getElementByXid('city').value;
		user.county=this.getElementByXid('county').value;
		user.address=this.comp('input2').val();
		user.mobile=this.comp('input3').val();
		$.post('http://' + localStorage.getItem("ajaxServerIP") + '/xf/contact/save', user, function(data,status) {
			if(status=="success"){
				alert('更改成功');
			}
		});
	};
	return Model;
});