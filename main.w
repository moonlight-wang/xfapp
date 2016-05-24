<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:331px;left:481px;" onLoad="modelLoad"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="valueData" idColumn="ID"><column name="ID" type="Integer" xid="xid1"></column>
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
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="mData" idColumn="mID"><column name="mID" type="Integer" xid="xid17"></column>
  <column name="frequency" type="Double" xid="xid18"></column>
  <column name="blast" type="Double" xid="xid19"></column>
  <column name="lx" type="Boolean" xid="xid20"></column>
  <column name="gongneng" type="Boolean" xid="xid21"></column>
  <column name="lock" type="Boolean" xid="xid22"></column>
  <data xid="default6">[{&quot;mID&quot;:1,&quot;frequency&quot;:25,&quot;blast&quot;:30,&quot;lx&quot;:&quot;1&quot;,&quot;gongneng&quot;:&quot;1&quot;,&quot;lock&quot;:&quot;1&quot;}]</data></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="aData" idColumn="ID"><column name="ID" type="Integer" xid="xid3"></column>
  <column label="城市" name="city" type="String" xid="xid4"></column>
  <rule xid="rule3"></rule></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="infoData" idColumn="ID"><column name="ID" type="Integer" xid="xid5"></column>
  <column label="设备名" name="name" type="String" xid="xid8"></column>
  <column label="状态" name="status" type="String" xid="xid9"></column>
  <column label="模式" name="mode" type="String" xid="xid23"></column>
  <column label="甲醛" name="TOVC" type="String" xid="xid24"></column>
  <column label="二氧化碳" name="CO2" type="String" xid="xid25"></column>
  <column label="温度" name="tmp" type="String" xid="xid26"></column>
  <column label="湿度" name="hmy" type="String" xid="xid27"></column>
  <column label="频率" name="fqy" type="String" xid="xid28"></column>
  <column label="室内PM2.5" name="nPM" type="String" xid="xid29"></column>
  <column label="功能开关" name="gn" type="String" xid="xid30"></column>
  <data xid="default4">[]</data></div></div> 
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
    <a component="$UI/system/components/justep/button/button" class="btn btn-link pull-full" label="滤芯重置" xid="button22" style="width:100%;">
     <i xid="i21"></i>
     <span xid="span35">滤芯重置</span></a> </div> </div>
  <div class="list-group-item" xid="div36">
   <div class="h5" xid="div37">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link pull-full" label="关于我们" xid="button23" style="width:100%;">
     <i xid="i22"></i>
     <span xid="span36">关于我们</span></a> </div> </div>
  <div class="list-group-item" xid="div38">
   <div class="h5" xid="div39">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link pull-full" label="意见反馈" xid="button24" style="width:100%;">
     <i xid="i23"></i>
     <span xid="span37">意见反馈</span></a> </div> </div>
  </div>
   <div class="x-wing-content" xid="content2" style="background-color:#72D994">
    <div class="x-wing-backdrop" xid="div22"></div>
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1">
    <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1">
     <div class="x-titlebar-left" xid="left1">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" xid="button2" icon="glyphicon glyphicon-th-list" style="width:63px;" onClick="click">
   <i xid="detailsBtn" class="glyphicon glyphicon-th-list"></i>
   <span xid="span2"></span></a></div> 
     <div class="x-titlebar-title" xid="title1">空气净化器</div>
     <div class="x-titlebar-right reverse" xid="right1">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="分享" onClick="shareClick" xid="button3">
   <i xid="i3"></i>
   <span xid="span3">分享</span></a></div> </div> </div> 
   <div class="x-panel-content center-block" xid="content1" style="background:url(./img/beijing.jpg) no-repeat;background-size:100% 100%;">
   
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5">
     <div class="x-col" style="Text-align:center;font-size:12px;" xid="col13" bind-text=' $model.infoData.ref("mode")'></div>
     <div class="x-col" style="Text-align:center;font-size:12px;" xid="col15" bind-text=' $model.infoData.ref("name")'></div>
     <div class="x-col" style="Text-align:center;font-size:12px;" xid="col19" bind-text=' $model.infoData.ref("status")'></div></div> 
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
     <div class="x-col" style="Text-align:center;font-size:12px;" xid="col20">
      <div component="$UI/system/components/justep/row/row" class="x-row x-row-center" xid="row1" style="height:30%;"></div>
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6">
       <div class="x-col" xid="col6" style="Text-align:right;font-size:12px;">
        <div component="$UI/system/components/justep/row/row" class="x-row" xid="row10">
         <div class="x-col" xid="col24" bind-text=' $model.aData.val("city")'></div></div> </div> 
       <div class="x-col" xid="col9" style="Text-align:left;position:relative;">
        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button7" icon="glyphicon glyphicon-repeat" onClick="locationClick">
         <i xid="i5" class="glyphicon glyphicon-repeat" style="color:black;"></i>
         <span xid="span6"></span></a> </div> </div> </div> 
     <div class="x-col" style="Text-align:center;font-size:12px;" xid="col7">
      <div style="Text-align:center;font-size:12px;" xid="div1">室外PM2.5</div>
      <div style="Text-align:center;font-size:20px;" xid="div4" bind-text=' $model.valueData.val("wPM")'></div></div> 
     <div class="x-col" style="Text-align:center;font-size:12px;" xid="col21">
      <div xid="div5">
       <div component="$UI/system/components/justep/row/row" class="x-row" xid="row7">
        <div class="x-col" style="Text-align:center;font-size:12px;" xid="col11">
         <img src="" alt="" xid="image2"></img></div> 
        <div class="x-col" style="Text-align:center;font-size:12px;" xid="col10">
         <div xid="div6" bind-text=' $model.valueData.ref("weather")'></div>
         <div xid="div7" bind-text=' $model.valueData.ref("temperature")'></div></div> </div> </div> </div> </div> 
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row11">
     <div class="x-col" xid="col25" style="Text-align:center;font-size:12px;">
      <div xid="div2" style="Text-align:center;font-size:12px;">
       <span xid="span9" bind-text='$model.infoData.ref("name")'></span>
       <span xid="span10">在全国空气质量排名：</span>
       <span xid="span11" bind-text='$model.valueData.ref("ranking")' style="font-size:18px;"></span></div> </div> </div> 
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
     <div class="x-col" xid="col1" style="Text-align:center;">TVOC
      <div xid="div3">
       <br xid="default7"></br>
       <span xid="span12" bind-text='$model.infoData.ref("TOVC")'></span></div> </div> 
     <div class="x-col" xid="col3" style="Text-align:center;">CO2
      <div xid="div8">
       <br xid="default8"></br>
       <span xid="span13" bind-text='$model.infoData.ref("CO2")'></span></div> </div> </div> 
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
     <div class="x-col" xid="col4" style="Text-align:center;">
      <label xid="label1" bind-text="$model.tvoc()" style="Text-align:center;background-color:#99ff33;">label</label></div> 
     <div class="x-col" xid="col5" style="Text-align:center;font-size:12px;">室内PM2.5
      <div xid="div9">
       <span xid="span14" bind-text='$model.infoData.ref("nPM")' style="Text-align:center;font-size:30px;"></span></div> </div> 
     <div class="x-col" xid="col12" style="Text-align:center;">
      <label xid="label2" bind-text="$model.CO()" style="Text-align:center;background-color:#99ff33;">label</label></div> </div> 
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row8">
     <div class="x-col" xid="col16" style="Text-align:center;">
      <label xid="label3" bind-text="$model.TEM()" style="Text-align:center;background-color:#99ff33;">label</label></div> 
     <div class="x-col" xid="col18" style="Text-align:center;font-size:12px;" bind-text=' $model.qLy()'></div>
     <div class="x-col" xid="col17" style="Text-align:center;">
      <label xid="label4" bind-text="$model.Humidity()" style="Text-align:center;background-color:#99ff33;">label</label></div> </div> 
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row9">
     <div class="x-col" xid="col23" style="Text-align:center;">温度
      <div xid="div11">
       <br xid="default9"></br>
       <span xid="span8" bind-text='$model.infoData.ref("tmp")'></span></div> </div> 
     <div class="x-col" xid="col22" style="Text-align:center;">湿度
      <div xid="div10">
       <br xid="default10"></br>
       <span xid="span7" bind-text='$model.infoData.ref("hmy")'></span></div> </div> </div> 
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row12" style="position:absolute;bottom:0px;">
     <div class="x-col" xid="col2">
      <div xid="div12" style="Text-align:center;font-size:12px;">频率</div>
      <div xid="div13" style="Text-align:center;font-size:12px;" bind-text=' $model.infoData.val("fqy")+"Hz";'></div></div> 
     <div class="x-col" xid="col8">
      <div xid="div14" style="Text-align:center;font-size:12px;">风量</div>
      <div xid="div15" style="Text-align:center;font-size:12px;" bind-text='$model.mData.val("blast")? $model.mData.val("blast")+"m²/h":"";'></div></div> 
     <div class="x-col" xid="col14">
      <div xid="div16" style="Text-align:center;font-size:12px;">滤芯</div>
      <div xid="div17" style="Text-align:center;font-size:12px;" bind-text=' $model.mData.val("lx") ==1?"更换":"不更换";'></div></div> 
     <div class="x-col" xid="col26">
      <div xid="div18" style="Text-align:center;font-size:12px;">功能</div>
      <div xid="div19" style="Text-align:center;font-size:12px;" bind-text=' $model.gongNeng()'></div></div> 
     <div class="x-col" xid="col30">
      <div xid="div20" style="Text-align:center;font-size:12px;">童锁</div>
      <div xid="div21" style="Text-align:center;font-size:12px;" bind-text=' $model.mData.val("lock") ==1?"开":"关";'></div></div> </div> </div> 
   <div class="x-panel-bottom" xid="bottom1">
    <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar2">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row14" style="height:100%;width:100%;">
      <div class="x-col" xid="col31" style="Text-align:center;">
       <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="主页" style="background-color:#009933;" xid="button4" onClick="openPage" url="/xfapp/main.w">
        <i xid="i2"></i>
        <span xid="span4">主页</span></a> </div> 
      <div class="x-col" xid="col32" style="Text-align:center;">
       <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="设置" style="background-color:#009933;" xid="button4" onClick="openPage" url="/xfapp/control.w">
        <i xid="i2"></i>
        <span xid="span4">设置</span></a> </div> 
      <div class="x-col" xid="col33" style="Text-align:center;">
       <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="管理" style="background-color:#009933;" xid="button4" onClick="openPage" url="/xfapp/edit.w">
        <i xid="i2"></i>
        <span xid="span4">管理</span></a> </div> </div> </div> </div> </div></div> 
   </div></div>