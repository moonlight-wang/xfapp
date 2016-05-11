<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:331px;left:481px;"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="valueData" idColumn="ID"><column name="ID" type="Integer" xid="xid1"></column>
  <column label="室外PM2.5" name="wPM" type="Float" xid="xid2"></column>
  <column label="名称" name="name" type="String" xid="xid3"></column>
  <column label="状态" name="state" type="String" xid="xid4"></column>
  <column label="工作模式" name="pattern" type="String" xid="xid5"></column>
  <column label="天气状况" name="weather" type="String" xid="xid6"></column>
  <column label="室外温度" name="temperature" type="String" xid="xid7"></column>
  <column label="地点" name="address" type="String" xid="xid8"></column>
  <column label="排名" name="ranking" type="Integer" xid="xid9"></column>
  <data xid="default1">[{&quot;ID&quot;:1,&quot;wPM&quot;:14,&quot;name&quot;:&quot;客厅&quot;,&quot;state&quot;:&quot;在线&quot;,&quot;pattern&quot;:&quot;智能&quot;,&quot;weather&quot;:&quot;晴转多云&quot;,&quot;temperature&quot;:&quot;23&quot;,&quot;address&quot;:&quot;济宁&quot;,&quot;ranking&quot;:22}]</data>
  <rule xid="rule1">
   <col name="ranking" xid="ruleCol1">
    <calculate xid="calculate1">
     <expr xid="default2"></expr></calculate> </col> 
   <col name="name" xid="ruleCol2">
    <calculate xid="calculate2">
     <expr xid="default3"></expr></calculate> </col> </rule></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="nData" idColumn="nID"><column name="nID" type="Integer" xid="xid10"></column>
  <column name="TOVC" type="Double" xid="xid11"></column>
  <column name="CO2" type="Double" xid="xid12"></column>
  <column label="温度" name="TEMP" type="Float" xid="xid13"></column>
  <column label="湿度" name="humidity" type="Float" xid="xid14"></column>
  <column label="PM2.5" name="nPM" type="Double" xid="xid15"></column>
  <column label="空气质量" name="quality" type="String" xid="xid16"></column>
  <data xid="default4">[{&quot;nID&quot;:1,&quot;TOVC&quot;:0,&quot;CO2&quot;:645,&quot;TEMP&quot;:26,&quot;humidity&quot;:58,&quot;nPM&quot;:13,&quot;quality&quot;:&quot;&quot;}]</data>
  <rule xid="rule2">
   <col name="quality" xid="ruleCol3">
    <calculate xid="calculate3">
     <expr xid="default5">$row.val(&quot;CO2&quot;)&lt;1000?&quot;优&quot;:&quot;差&quot;;</expr></calculate> </col> </rule></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="mData" idColumn="mID"><column name="mID" type="Integer" xid="xid17"></column>
  <column name="frequency" type="Double" xid="xid18"></column>
  <column name="blast" type="Double" xid="xid19"></column>
  <column name="lx" type="Boolean" xid="xid20"></column>
  <column name="gongneng" type="Boolean" xid="xid21"></column>
  <column name="lock" type="Boolean" xid="xid22"></column>
  <data xid="default6">[{&quot;mID&quot;:1,&quot;frequency&quot;:25,&quot;blast&quot;:30,&quot;lx&quot;:&quot;1&quot;,&quot;gongneng&quot;:&quot;1&quot;,&quot;lock&quot;:&quot;1&quot;}]</data></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1">
    <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1">
     <div class="x-titlebar-left" xid="left1">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" xid="button2" icon="glyphicon glyphicon-th-list" style="width:63px;" onClick="{operation:'popMenu1.show'}">
       <i xid="detailsBtn" class="glyphicon glyphicon-th-list"></i>
       <span xid="span2"></span></a> </div> 
     <div class="x-titlebar-title" xid="title1">空气净化器</div>
     <div class="x-titlebar-right reverse" xid="right1">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button3" icon="icon-social-reddit" style="width:70px;height:46px;">
       <i xid="i3" class="icon-social-reddit"></i>
       <span xid="span3"></span></a> </div> </div> </div> 
   <div class="x-panel-content center-block" xid="content1" style="background-color:#8a8fef;">
    
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5">
   <div class="x-col" style="Text-align:center;font-size:12px;" xid="col13" bind-text=' $model.valueData.val("pattern")'></div>
   <div class="x-col" style="Text-align:center;font-size:12px;" xid="col15" bind-text=' $model.valueData.val("name")'></div>
  <div class="x-col" style="Text-align:center;font-size:12px;" xid="col19" bind-text=' $model.valueData.val("state")'></div></div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
   <div class="x-col" style="Text-align:center;font-size:12px;" xid="col20"><div component="$UI/system/components/justep/row/row" class="x-row x-row-center" xid="row1" style="height:30%;">
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6">
   <div class="x-col" xid="col6" style="Text-align:right;font-size:12px;">
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row10">
   <div class="x-col" xid="col24" bind-text=' $model.valueData.val("address")'></div></div></div>
  <div class="x-col" xid="col9" style="Text-align:left;position:relative;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button7" icon="glyphicon glyphicon-repeat">
   <i xid="i5" class="glyphicon glyphicon-repeat" style="color:black;"></i>
   <span xid="span6"></span></a></div></div></div>
  <div class="x-col" style="Text-align:center;font-size:12px;" xid="col7">
   <div style="Text-align:center;font-size:12px;" xid="div1">室外PM2.5</div>
   <div style="Text-align:center;font-size:20px;" xid="div4" bind-text=' $model.valueData.val("wPM")'></div></div>
  <div class="x-col" style="Text-align:center;font-size:12px;" xid="col21"><div xid="div5"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row7">
   <div class="x-col" style="Text-align:center;font-size:12px;" xid="col11"><img src="" alt="" xid="image2"></img></div>
   <div class="x-col" style="Text-align:center;font-size:12px;" xid="col10"><div xid="div6" bind-text=' $model.valueData.val("weather")'></div>
  <div xid="div7" bind-text=' $model.valueData.val("temperature")'></div></div>
   </div></div></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row11">
   <div class="x-col" xid="col25" style="Text-align:center;font-size:12px;"><div xid="div2" style="Text-align:center;font-size:12px;"><span xid="span9" bind-text='$model.valueData.ref("name")'></span>
  <span xid="span10"><![CDATA[在全国空气质量排名：]]></span>
  <span xid="span11" bind-text='$model.valueData.ref("ranking")' style="font-size:18px;"></span></div>
  </div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col" xid="col1" style="Text-align:center;">TVOC
  <div xid="div3"><br/><span xid="span12" bind-text='$model.nData.ref("TOVC")'></span></div></div>
   <div class="x-col" xid="col3" style="Text-align:center;">CO2
  <div xid="div8"><br/><span xid="span13" bind-text='$model.nData.ref("CO2")'></span></div></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
   <div class="x-col" xid="col4" style="Text-align:center;"><label xid="label1" bind-text="$model.tvoc()" style="Text-align:center;background-color:#99ff33;">label</label></div>
   <div class="x-col" xid="col5" style="Text-align:center;font-size:12px;">室内PM2.5
  <div xid="div9"><span xid="span14" bind-text='$model.nData.ref("nPM")' style="Text-align:center;font-size:30px;"></span></div></div>
   <div class="x-col" xid="col12" style="Text-align:center;"><label xid="label2" bind-text="$model.CO()" style="Text-align:center;background-color:#99ff33;">label</label></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row8">
   <div class="x-col" xid="col16" style="Text-align:center;">
   <label xid="label3" bind-text="$model.TEM()" style="Text-align:center;background-color:#99ff33;">label</label></div>
  <div class="x-col" xid="col18" style="Text-align:center;font-size:12px;" bind-text=' $model.nData.val("quality")'></div>
  <div class="x-col" xid="col17" style="Text-align:center;">
   <label xid="label4" bind-text="$model.Humidity()" style="Text-align:center;background-color:#99ff33;">label</label></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row9">
   <div class="x-col" xid="col23" style="Text-align:center;">温度
    <div xid="div11"><br/>
     <span xid="span8" bind-text='$model.nData.ref("TEMP")'></span></div> </div> 
   <div class="x-col" xid="col22" style="Text-align:center;">湿度
    <div xid="div10"><br/>
     <span xid="span7" bind-text='$model.nData.ref("humidity")'></span></div> </div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row12" style="position:absolute;bottom:0px;">
   <div class="x-col" xid="col2"><div xid="div12" style="Text-align:center;font-size:12px;">频率</div>
  <div xid="div13" style="Text-align:center;font-size:12px;" bind-text='$model.mData.val("frequency")? $model.mData.val("frequency")+"Hz":"";'></div></div>
   <div class="x-col" xid="col8"><div xid="div14" style="Text-align:center;font-size:12px;">风量</div>
  <div xid="div15" style="Text-align:center;font-size:12px;" bind-text='$model.mData.val("blast")? $model.mData.val("blast")+"m²/h":"";'></div></div>
   <div class="x-col" xid="col14"><div xid="div16" style="Text-align:center;font-size:12px;">滤芯</div>
  <div xid="div17" style="Text-align:center;font-size:12px;" bind-text=' $model.mData.val("lx") ==1?"更换":"不更换";'></div></div>
  <div class="x-col" xid="col26"><div xid="div18" style="Text-align:center;font-size:12px;">功能</div>
  <div xid="div19" style="Text-align:center;font-size:12px;" bind-text=' $model.mData.val("gongneng") ==1?"开":"关";'></div></div>
  <div class="x-col" xid="col30"><div xid="div20" style="Text-align:center;font-size:12px;">童锁</div>
  <div xid="div21" style="Text-align:center;font-size:12px;" bind-text=' $model.mData.val("lock") ==1?"开":"关";'></div></div></div></div> 
   <div class="x-panel-bottom" xid="bottom1"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar2">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row14" style="height:100%;width:100%;">
   <div class="x-col" xid="col31" style="Text-align:center;">
    <button xid="button6" style="background-color:#009933;" onClick="window.location.href='./main.w';">主页</button></div> 
   <div class="x-col" xid="col32" style="Text-align:center;">
    <button xid="button5" style="background-color:#009933;" onClick="window.location.href='./control.w';">设置</button></div> 
   <div class="x-col" xid="col33" style="Text-align:center;">
    <button xid="button8" style="background-color:#009933;">更多</button></div> </div></div></div></div>
  <div component="$UI/system/components/justep/popMenu/popMenu" class="x-popMenu" xid="popMenu1" direction="left-bottom" style="width:60%;">
   <div class="pull-left x-popMenu-overlay" xid="div25" style="left:0px;"></div>
   <ul component="$UI/system/components/justep/menu/menu" class="x-menu pull-left dropdown-menu x-popMenu-content" xid="menu1"><li class="x-menu-item" xid="item1">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="账号管理" xid="button10">
    <i xid="i4"></i>
    <span xid="span18">账号管理</span></a> </li>
  <li class="x-menu-divider divider" xid="divider1"></li>
  <li class="x-menu-item" xid="item2">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="添加设备" xid="button11">
    <i xid="i6"></i>
    <span xid="span19">添加设备</span></a> </li>
  <li class="x-menu-divider divider" xid="divider2"></li></ul></div>
  </div>