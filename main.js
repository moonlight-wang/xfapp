define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var utils = require("$UI/system/components/justep/common/utils");
	var bmap = require('$UI/system/components/justep/bmap/bmap');
	require("cordova!com.justep.cordova.plugin.baidulocation");
	
	var Model = function(){
		this.callParent();
	};
	//图片路径转换
    Model.prototype.getImageUrl = function(url) {
		return require.toUrl(url);
	};
	Model.prototype.modelLoad=function(event){
		alert(this.params);
	    this.comp('button4').label=this.params;
	};
	// 加载数据
	Model.prototype.productDataCustomRefresh = function(event) {
		var valueData = event.source;
		$.ajax({
			type : "GET",
			url : require.toUrl('./json/newsData.json'),
			dataType : 'json',
			async : false,
			cache : false,
			success : function(data) {
				valueData.loadData(data);// 将返回的数据加载到data组件
			},
			error : function() {
				throw justep.Error.create("加载数据失败");
			}
		});

	};
	Model.prototype.tvoc=function(){
	    var nData=this.comp("nData");
	    var value=nData.val("TOVC");
	        if(value==0){
	         return "理想";
	        }
	};
	Model.prototype.CO=function(){
	    var nData=this.comp("nData");
	    var CO2=nData.val("CO2");
	    if(CO2<=1000){
	         return "清新";
	    }
	};
	Model.prototype.TEM=function(){
	    var nData=this.comp("nData");
	    var TEMP=nData.val("TEMP");
	    if(TEMP<=30){
	         return "适宜";
	    }
	};
	Model.prototype.Humidity=function(){
	    var nData=this.comp("nData");
	    var humidity=nData.val("humidity");
	    if(humidity<=70){
	         return "舒适";
	    }
	};
   
    Model.prototype.click=function(event){
	    this.comp('wing1').showLeft();
	};
	Model.prototype.openPage = function(event){
		var url = event.source.$domNode.attr('url');
		if(url.substr(0,1) == "/")
			url = '$UI' + url;
		justep.Shell.showPage(require.toUrl(url));
	};
	
	Model.prototype.getLocation = function() {
		var gpsDtd = $.Deferred();
		if (this.wxApi) {
			this.wxApi.exec().done(function(wx) {
				wx.getLocation({
					type : "gcj02",
					success : function(data) {
						gpsDtd.resolve({
							coorType : data.coorType,
							address : data.address,
							longitude : data.longitude,
							latitude : data.latitude
						});
					}/*,
					cancel : function(res) {
						gpsDtd.resolve({
							longitude : 116.45764191999997,
							latitude : 39.8622934399999
						});
					}*/
				});
			}).fail(function() {
				gpsDtd.resolve({
					longitude : 116.45764191999997,
					latitude : 39.8622934399999
				});
			});
		} else if (navigator.geolocation) {
			var success = function(data) {
				// data.longtitude 经度
				// data.latitude 纬度
				// data.address 文字描述的地址信息
				// data.hasRadius 是否有定位精度半径
				// data.radius 定位精度半径
				// data.type 定位方式
				// data.coorType
				gpsDtd.resolve({
					coorType : data.coorType,
					address : data.address,
					longitude : data.coords.longitude,
					latitude : data.coords.latitude
				});
			};

			var fail = function(e) {
				justep.Util.hint("获取地理位置失败，暂时采用默认地址");
				gpsDtd.resolve({
					longitude : 116.45764191999997,
					latitude : 39.8622934399999
				});
			};
			/**
			 *  如果在室内 enableHighAccuracy: true 反而误差更大
			 *  如果在室外 enableHighAccuracy: true 相对准确
			 */
			navigator.geolocation.getCurrentPosition(success, fail);
			/*var gpsWatchID = navigator.geolocation.watchPosition(success, fail,{
			timeout: 30*1000,
			maximumAge: 30000,
			enableHighAccuracy: true});*/
		} /*else {
			justep.Util.hint("获取地理位置失败，暂时采用默认地址");
			gpsDtd.resolve({
				longitude : 116.45764191999997,
				latitude : 39.8622934399999
			});
		}*/
		return gpsDtd.promise();
	};

	Model.prototype.locationClick = function(event) {
		var self = this;
		var gpsDtd = self.getLocation();
		gpsDtd.done(function(position) {
			bmap.marker({
				location:position.latitude+","+ position.longitude,
				title:position.address,
				content:"",
				src:"justep"
			});
		});
	};
	return Model;
});