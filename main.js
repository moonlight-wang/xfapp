define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};
	//图片路径转换
    Model.prototype.getImageUrl = function(url) {
		return require.toUrl(url);
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

	return Model;
});