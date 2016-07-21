<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:331px;left:481px;" onLoad="modelLoad" onActive="mdataActive"><div component="$UI/system/components/justep/data/data" autoLoad="false" xid="valueData" idColumn="ID"><column name="ID" type="Integer" xid="xid1"></column>
  <column label="室外PM2.5" name="wPM" type="Float" xid="xid2"></column>
  <column label="天气状况" name="weather" type="String" xid="xid6"></column>
  <column label="室外温度" name="temperature" type="String" xid="xid7"></column>
  <data xid="default1">[]</data>
  <rule xid="rule1">
   <col name="ranking" xid="ruleCol1">
    <calculate xid="calculate1">
     <expr xid="default2"></expr></calculate> </col> 
   <col name="name" xid="ruleCol2">
    <calculate xid="calculate2">
     <expr xid="default3"></expr></calculate> </col> </rule></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="false" xid="mData" idColumn="mID"><column name="mID" type="Integer" xid="xid17"></column>
  <column name="lock" type="Boolean" xid="xid22"></column>
  <data xid="default6">[{&quot;mID&quot;:1,&quot;lx&quot;:&quot;0&quot;,&quot;lock&quot;:&quot;0&quot;}]</data></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="false" xid="aData" idColumn="ID"><column name="ID" type="Integer" xid="xid3"></column>
  <column label="城市" name="city" type="String" xid="xid4"></column>
  <rule xid="rule3"></rule></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="false" xid="infoData" idColumn="ID"><column name="ID" type="Integer" xid="xid5"></column>
  <column label="设备名" name="name" type="String" xid="xid8"></column>
  <column label="状态" name="status" type="String" xid="xid9"></column>
  <column label="模式" name="mode" type="String" xid="xid23"></column>
  <column label="甲醛" name="TOVC" type="Double" xid="xid24"></column>
  <column label="二氧化碳" name="CO2" type="String" xid="xid25"></column>
  <column label="温度" name="tmp" type="String" xid="xid26"></column>
  <column label="湿度" name="hmy" type="String" xid="xid27"></column>
  <column label="频率" name="fqy" type="String" xid="xid28"></column>
  <column label="室内PM2.5" name="nPM" type="String" xid="xid29"></column>
  <column label="功能开关" name="gn" type="String" xid="xid30"></column>
  <data xid="default4">[]</data>
  <column label="室外pm2.5" name="wPM" type="String" xid="xid10"></column>
  <column name="blast" type="Integer" xid="xid13"></column>
  <rule xid="rule2">
   <col name="TOVC" xid="ruleCol3">
    <calculate xid="calculate3">
     <expr xid="default5"></expr></calculate> </col> 
   <col name="blast" xid="ruleCol4">
    <calculate xid="calculate4">
     <expr xid="default8"></expr></calculate> </col> </rule></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="lxData" idColumn="id"><column name="id" type="String" xid="xid11"></column>
  <column name="lx" type="Boolean" xid="xid12"></column>
  <rule xid="rule4"></rule>
  <data xid="default7">[{&quot;id&quot;:&quot;1&quot;,&quot;lx&quot;:&quot;0&quot;}]</data></div></div> 
<div component="$UI/system/components/justep/popMenu/popMenu" class="x-popMenu" xid="popMenu1" direction="left-bottom" style="width:60%;">
   <div class="pull-left x-popMenu-overlay" xid="div25" style="left:0px;"></div>
   <ul component="$UI/system/components/justep/menu/menu" class="x-menu pull-left dropdown-menu x-popMenu-content" xid="menu1">
  <li class="x-menu-item" xid="item1">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="账号管理" xid="button10">
    <i xid="i4"></i>
    <span xid="span18">账号管理</span></a> </li><li class="x-menu-divider divider" xid="divider1"></li><li class="x-menu-item" xid="item2">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="添加设备" xid="button11" onClick="openPage" url="/xfapp/add.w">
    <i xid="i6"></i>
    <span xid="span19">添加设备</span></a> </li><li class="x-menu-divider divider" xid="divider2"></li><li class="x-menu-item" xid="item3">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="button" xid="button1">
    <i xid="i1"></i>
    <span xid="span1">button</span></a> </li></ul></div>
  <div component="$UI/system/components/justep/wing/wing" class="x-wing" xid="wing1">
   <div class="x-wing-left" xid="left2">
  <div class="list-group-item" xid="div28">
   <div class="h5" xid="div29">
    <span xid="span15" style="height:100%;width:20%;"><img src="$UI/xfapp/img/touxiang.jpg" alt="" xid="image1" style="width:10%;" height="10%"></img></span>
  <span xid="span16"><![CDATA[]]>
  <label xid="label7"><![CDATA[]]></label></span></div> </div><div class="list-group-item" xid="div26">
   <div class="h5" xid="div27">
    
    <a component="$UI/system/components/justep/button/button" class="btn btn-link pull-full" label="地址选择" xid="button20" style="width:100%;" onClick="locationClick">
   <i xid="i19"></i>
   <span xid="span33">地址选择</span></a></div> </div>
  <div class="list-group-item" xid="div23">
   <div class="h5" xid="div24">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link pull-full" label="设备列表" xid="button21" style="width:100%;" url="/xfapp/list.w" onClick="openPage">
     <i xid="i20"></i>
     <span xid="span34">设备列表</span></a> </div> </div>
  <div class="list-group-item" xid="div34">
   <div class="h5" xid="div35">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link pull-full" label="滤芯重置" xid="button22" style="width:100%;" url="/xfapp/lxreset.w" onClick="openPage">
     <i xid="i21"></i>
     <span xid="span35">滤芯重置</span></a> </div> </div>
  <div class="list-group-item" xid="div36">
   <div class="h5" xid="div37">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link pull-full" label="关于我们" xid="button23" style="width:100%;" url="/xfapp/about.w" onClick="openPage">
     <i xid="i22"></i>
     <span xid="span36">关于我们</span></a> </div> </div>
  <div class="list-group-item" xid="div38">
   <div class="h5" xid="div39">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link pull-full" label="意见反馈" xid="button24" style="width:100%;" url="/xfapp/feedBack.w" onClick="openPage">
     <i xid="i23"></i>
     <span xid="span37">意见反馈</span></a> </div> </div>
  </div>
   <div class="x-wing-content" xid="content2" style="color:#e4e4e4;">
    <div class="x-wing-backdrop" xid="div22"></div>
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1">
    <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1">
     <div class="x-titlebar-left" xid="left1">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" xid="button2" icon="glyphicon glyphicon-th-list" style="width:63px;" onClick="click">
   <i xid="detailsBtn" class="glyphicon glyphicon-th-list"></i>
   <span xid="span2"></span></a></div> 
     <div class="x-titlebar-title" xid="title1">中嘉新风系统</div>
     <div class="x-titlebar-right reverse" xid="right1">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="分享" onClick="shareClick" xid="button3">
   <i xid="i3"></i>
   <span xid="span3">分享</span></a></div> </div> </div> 
   <div class="x-panel-content center-block" xid="content1" style="background:url('img/beijing.jpg') no-repeat;background-size:100% 100%;">
   
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5" style="height:8%;">
     <div class="x-col" style="Text-align:center;font-size:12px;" xid="col13" bind-text=' $model.infoData.ref("mode")'></div>
     <div class="x-col" style="Text-align:center;font-size:12px;" xid="col15">
  <span xid="span40"><a component="$UI/system/components/justep/button/button" class="btn btn-link" xid="button6" style="height:100%;" icon="icon-android-add" onClick="openPage" url="/xfapp/edit.w">
   <i xid="i8" class="icon-android-add"></i>
   <span xid="span39"></span></a></span>
  <span xid="span41"><label xid="label3" bind-text=' $model.infoData.ref("name")'><![CDATA[]]></label></span></div>
     <div class="x-col" style="Text-align:center;font-size:12px;" xid="col19" bind-text=' $model.infoData.ref("status")'></div></div> 
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3" style="height:14%;">
     <div class="x-col" style="Text-align:center;font-size:15px;" xid="col20">
      <div component="$UI/system/components/justep/row/row" class="x-row x-row-center" xid="row1" style="height:30%;"></div>
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6">
       <div class="x-col" xid="col6" style="Text-align:right;font-size:12px;">
        
  <label xid="label2" style="width:100%;" bind-text='$model.aData.ref("city")'></label></div> 
       <div class="x-col" xid="col9" style="Text-align:left;position:relative;">
        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button7" icon="glyphicon glyphicon-map-marker" onClick="locationClick">
         <i xid="i5" class="glyphicon glyphicon-map-marker" style="color:black;"></i>
         <span xid="span6"></span></a> </div> </div> </div> 
     <div class="x-col" style="Text-align:center;font-size:15px;" xid="col7">
      <div style="Text-align:center;font-size:12px;" xid="div1">室外PM2.5</div>
      <div style="Text-align:center;font-size:20px;" xid="div4" bind-text=' $model.infoData.val("wPM")'></div></div> 
     <div class="x-col" style="Text-align:center;font-size:15px;" xid="col21">
      <div xid="div5">
       <div component="$UI/system/components/justep/row/row" class="x-row" xid="row7">
        <div class="x-col" style="Text-align:center;font-size:12px;" xid="col11">
         <img src="$UI/xfapp/img/tianqi.png" alt="" xid="image2" height="100%" style="width:50%;"></img></div> 
        <div class="x-col" style="Text-align:center;font-size:12px;" xid="col10">
         <div xid="div6" bind-text=' $model.valueData.ref("weather")'></div>
         <div xid="div7" bind-text=' $model.valueData.ref("temperature")'></div></div> </div> </div> </div> </div> 
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row27" style="border-top:3px solid #fff;width:80%;margin-left:10%">
   <div class="x-col" xid="col39"></div>
   <div class="x-col" xid="col40"></div>
   <div class="x-col" xid="col45"></div></div><div component="$UI/system/components/justep/row/row" class="x-row" style="display:none;" xid="row11">
     <div class="x-col" xid="col25" style="Text-align:center;font-size:12px;">
      <div xid="div2" style="Text-align:center;font-size:12px;">
       <span xid="span9" bind-text='$model.infoData.ref("name")'></span>
       <span xid="span10">在全国空气质量排名：</span>
       <span xid="span11" bind-text='$model.valueData.ref("ranking")' style="font-size:18px;"></span></div> </div> </div> 
    <div xid="div41" style="height:12%;margin-top:1%;"><span xid="span25" class="pull-left" style="width:50%;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row34">
   <div class="x-col" xid="col56" style="Text-align:center;color:#e4e4e4;">TVOC
   <div xid="div42">
    <br xid="default15"></br>
    <span xid="span27" bind-text=' "0.0"+$model.infoData.val("TOVC")+"mg/m³"'></span></div> </div></div></span>
  <span xid="span26" class="pull-right" style="width:50%;border-left:2px solid #fff;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row35">
   <div class="x-col" xid="col60" style="Text-align:center;color:#e4e4e4;">温度
   <div xid="div43">
    <br xid="default16"></br>
    <span xid="span28" bind-text=' $model.infoData.val("tmp")+"℃"'></span></div> </div></div></span></div><div xid="div30" style="height:28%;">
   <span xid="span5" class="pull-left" style="width:33%;height:100%;">
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row22">
   <div class="x-col" xid="col27"></div></div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row13">
     <div class="x-col" xid="col34" style="Text-align:center;">
      <label xid="label5" bind-text="$model.tvoc()" style="Text-align:center;border-radius:20px;font-size:17px;width:50%;background-color:rgba(193,239,9,0.73);">label</label></div> </div> 
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4" style="border-bottom:2px solid #fff;height:20%;">
   <div class="x-col" xid="col4"></div>
   </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row21" style="height:20%;">
   <div class="x-col" xid="col18"></div></div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row17" style="top:70%;">
     <div class="x-col" xid="col46" style="Text-align:center;">
      <label xid="label8" bind-text="$model.CO()" style="Text-align:center;border-radius:20px;font-size:17px;width:50%;background-color:rgb(224, 39, 45);">label</label></div> </div> 
  
  </span> 
   <span xid="span17" class="pull-left" style="width:34%;height:100%;margin-top:5%;position:﻿﻿﻿﻿relative">
    <img alt="" xid="image4" style="position:absolute;background-size:100% 100%;height:100%;width:34%;"></img><div component="$UI/system/components/justep/row/row" class="x-row" xid="row23">
   <div class="x-col" xid="col28"></div></div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row15">
     <div class="x-col" xid="col38" style="Text-align:center;font-size:12px;">室内PM2.5
      <div xid="div31">
       <span xid="span21" bind-text='$model.infoData.ref("nPM")' style="Text-align:center;font-size:30px;"></span></div> </div> </div> 
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row18">
     <div class="x-col" xid="col50" style="Text-align:center;font-size:12px;" bind-text=" $model.qLy()"></div></div> 
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row24">
   <div class="x-col" xid="col29"></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row30">
   <div class="x-col" xid="col41"></div></div>
  
  </span> 
   <span xid="span20" class="pull-right" style="width:33%;height:100%;">
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row25">
   <div class="x-col" xid="col35"></div></div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row16">
     <div class="x-col" xid="col42" style="Text-align:center;">
      <label xid="label6" bind-text="$model.TEM()" style="Text-align:center;border-radius:20px;font-size:17px;width:50%;background-color:rgba(58, 55, 183, 0.77);">label</label></div> </div> 
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row8" style="height:20%;border-bottom:2px solid #fff;">
   <div class="x-col" xid="col16"></div></div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row20" style="height:20%;">
   <div class="x-col" xid="col17"></div></div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row19">
     <div class="x-col" xid="col54" style="Text-align:center;">
      <label xid="label9" bind-text="$model.Humidity()" style="Text-align:center;border-radius:20px;font-size:17px;width:50%;background-color:rgba(4, 76, 4, 0.93);">label</label></div> </div> 
  
  </span> </div><div xid="div44" style="height:12%;margin-top:5%;"><span xid="span29" style="width:50%;" class="pull-left"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row36">
   <div class="x-col" xid="col64" style="Text-align:center;color:#e4e4e4;">CO₂
   <div xid="div45">
    <br xid="default17"></br>
    <span xid="span31" bind-text=' $model.infoData.val("CO2")+"PPm"'></span></div> </div></div></span>
  <span xid="span30" style="width:50%;border-left:2px solid #fff;" class="pull-right"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row37">
   <div class="x-col" xid="col68" style="Text-align:center;color:#e4e4e4;">湿度
   <div xid="div46">
    <br xid="default18"></br>
    <span xid="span32" bind-text=' $model.infoData.val("hmy")+"%"'></span></div> </div></div></span></div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row12" style="margin-top:1%;background:url('./img/hengtiao.png') no-repeat;background-size:100% 100%;height:15%;">
     <div class="x-col" xid="col2">
      <div xid="div12" style="Text-align:center;font-size:15px;">频率</div>
      <div xid="div13" style="Text-align:center;font-size:15px;" bind-text=' $model.infoData.val("fqy")+"Hz";'></div></div> 
     <div class="x-col" xid="col8">
      <div xid="div14" style="Text-align:center;font-size:15px;">风量</div>
      <div xid="div15" style="Text-align:center;font-size:15px;" bind-text=' $model.infoData.val("blast")+"m³/h"'></div></div> 
     <div class="x-col" xid="col14">
      <div xid="div16" style="Text-align:center;font-size:15px;">滤芯</div>
      <div xid="div17" style="Text-align:center;font-size:15px;" bind-text=' $model.lxData.val("lx") ==1?"更换":"良好";'></div></div> 
     <div class="x-col" xid="col26">
      <div xid="div18" style="Text-align:center;font-size:15px;">功能</div>
      <div xid="div19" style="Text-align:center;font-size:15px;" bind-text=' $model.gongNeng()'></div></div> 
     <div class="x-col" xid="col30">
      <div xid="div20" style="Text-align:center;font-size:15px;">童锁</div>
      <div xid="div21" style="Text-align:center;font-size:15px;" bind-text=' $model.mData.val("lock") ==1?"开":"关";'></div></div> </div> 
  </div> 
   <div class="x-panel-bottom" xid="bottom1">
    <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar2">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row14" style="height:100%;width:100%;">
      <div class="x-col" xid="col31" style="Text-align:center;">
       <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="主页" style="background-color:rgba(186, 197, 190, 0.37);border-radius:3em" xid="button4" onClick="openPage" url="/xfapp/main.w">
        <i xid="i2"></i>
        <span xid="span4">主页</span></a> </div> 
      <div class="x-col" xid="col32" style="Text-align:center;">
       <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="设置" style="background-color:rgba(186, 197, 190, 0.37);border-radius:3em" xid="button4" onClick="openPage" url="/xfapp/control.w">
        <i xid="i2"></i>
        <span xid="span4">设置</span></a> </div> 
      <div class="x-col" xid="col33" style="Text-align:center;">
       <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="更多" style="background-color:rgba(186, 197, 190, 0.37);border-radius:3em;" xid="button4" onClick="openPage" url="/xfapp/strainer.w">
        <i xid="i2"></i>
        <span xid="span4">更多</span></a> </div> </div> </div> </div> </div></div> 
   </div></div>