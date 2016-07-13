define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	require("./dist/echarts-all");
	var Model = function(){
		this.callParent();
	};
	Model.prototype.openPage = function(event) {
		var url = event.source.$domNode.attr('url');
		if (url.substr(0, 1) == "/")
			url = '$UI' + url;
		justep.Shell.showPage(require.toUrl(url));
	};
	Model.prototype.modelLoad = function(event) {
		var ajaxServerIP = localStorage.getItem("ajaxServerIP");
		var sname = localStorage.getItem("sName");
		var status = localStorage.getItem("status");
		var info = this.comp('infoData');
		info.newData({
			index : 0,
			defaultValues : [ {
				"mode" : localStorage.getItem("moshi"),
				"name" : sname,
				"status" : status,
			} ]
		});
		if(localStorage.getItem("message")){
			var msg = localStorage.getItem("message");
			var chuxiao = parseInt(msg[6] + msg[7] + msg[4] + msg[5], 16);
			var jingdian = parseInt(msg[10] + msg[11] + msg[8] + msg[9], 16);
			var gaoxiao = parseInt(msg[14] + msg[15] + msg[12] + msg[13], 16);
			var img1 = this.getElementByXid('image1');
			var img2 = this.getElementByXid('image2');
			var img3 = this.getElementByXid('image3');
			var data2 = this.comp('data2');
			data2.clear();
			data2.newData({
				index : 0,
				defaultValues : [{
					"chuxiao" : parseInt((chuxiao/2000)*100)+"%",
					"jingdian" : parseInt((jingdian/2000)*100)+"%",
					"gaoxiao" : parseInt((gaoxiao/2000)*100)+"%"
				}]
			});
			if(parseInt((chuxiao/2000)*100)<35){
				img1.src = "./img/lvtiao.png"; 
			}else if(parseInt((chuxiao/2000)*100)<70){
				img1.src = "./img/huangtiao.png";
			}else{
				img1.src = "./img/hongtiao.png";
			}
			if(parseInt((jingdian/2000)*100)<35){
				img2.src = "./img/lvtiao.png"; 
			}else if(parseInt((jingdian/2000)*100)<70){
				img2.src = "./img/huangtiao.png";
			}else{
				img2.src = "./img/hongtiao.png";
			}
			if(parseInt((gaoxiao/2000)*100)<35){
				img3.src = "./img/lvtiao.png"; 
			}else if(parseInt((gaoxiao/2000)*100)<70){
				img3.src = "./img/huangtiao.png";
			}else{
				img3.src = "./img/hongtiao.png";
			}
			img1.style.width = parseInt((chuxiao/2000)*100)+"%";
			img2.style.width = parseInt((jingdian/2000)*100)+"%";
			img3.style.width = parseInt((gaoxiao/2000)*100)+"%";
			img1.style.height = "100%";
			img2.style.height = "100%";
			img3.style.height = "100%";
		}
		
		var data = this.comp('data1');
		var lRow = data.getLastRow(), row,names=[];
		/*data.first();
		do {
			row = data.getCurrentRow();
			names.push(data.val('col0'));
			data.next();
		} while (lRow != row);
		console.log(names);*/
		var option = {
			tooltip : {
				trigger : 'axis'
			},
			legend : {
				data : [ '室内PM2.5', '室外PM2.5' ]
			},
			toolbox : {
				show : true,
				feature : {
					mark : {
						show : false
					},
					dataView : {
						show : false,
						readOnly : false
					},
					magicType : {
						show : false,
						type : [ 'line', 'bar' ]
					},
					restore : {
						show : true
					},
					saveAsImage : {
						show : true
					}
				}
			},
			calculable : true,
			xAxis : [ {
				type : 'category',
				data : [ '8:00', '9:00', '10:00', '11:00', '12:00', '13:00']
			} ],
			yAxis : [ {
				type : 'value',
				splitArea : {
					show : true
				}
			} ],
			series : [ {
				name : '室内PM2.5',
				type : 'line',

				data : [ 20,15,16,13,25,19 ]
			}, {
				name : '室外PM2.5',
				type : 'line',

				data : [30,37,35,43,48,52],
			} ]
		};
		var myChart = echarts.init(this.getElementByXid('main'));
		myChart.setOption(option);
		window.onresize = myChart.resize;
	};
	return Model;
});