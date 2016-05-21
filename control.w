<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:248px;left:500px;" onLoad="modelLoad">
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="valueData" idColumn="vID">
      <column name="vID" type="Integer" xid="xid1"/>  
      <column label="频率" name="pinlv" type="String" xid="xid2"/>  
      <data xid="default1">[]</data></div>
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar"
        xid="titleBar1"> 
        <div class="x-titlebar-left" xid="left1"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
            xid="button2" icon="icon-android-arrow-back" onClick="{'operation':'window.close'};" style="width:63px;"> 
            <i xid="detailsBtn" class="icon-android-arrow-back"/>  
            <span xid="span2"/> 
          </a> 
          
        </div>  
        <div class="x-titlebar-title" xid="title1">设置</div>  
        <div class="x-titlebar-right reverse" xid="right1"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="保存" xid="button11" onClick="saveClick">
   <i xid="i11"></i>
   <span xid="span12">保存</span></a></div> 
      </div> 
    </div>  
    <div class="x-panel-content center-block" xid="content1" style="background-color:#8a8fef;"> 
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1"> 
        <div class="x-col" xid="col1" style="Text-align:center;">定时</div>  
        <div class="x-col" xid="col2"> 
          <span component="$UI/system/components/justep/button/toggle" class="x-toggle"
            xid="toggle1" checked="false" onChange="toggleChecked"/> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2"> 
        <div class="x-col" xid="col5" style="Text-align:center;">童锁</div>  
        <div class="x-col" xid="col4"> 
          <span component="$UI/system/components/justep/button/toggle" class="x-toggle"
            xid="toggle2"/> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row10">
   <div class="x-col" xid="col18" style="Text-align:center;">功能</div>
   <div class="x-col" xid="col15">
    <span component="$UI/system/components/justep/button/toggle" class="x-toggle" xid="toggle3"></span></div> </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row3"> 
        <div class="x-col" xid="col7" style="Text-align:center;">静电除尘</div>  
        <div class="x-col" xid="col6"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit4" style="width:40%;"> 
            <select component="$UI/system/components/justep/select/select" class="form-control pull-left x-edit"
              xid="select5" style="weigh:30%;height:333%;width:100%;"> 
              <option value="50" xid="default10">50</option>  
              <option value="60" xid="default11">60</option>  
              <option value="70" xid="default12">70</option>  
              <option value="80" xid="default13">80</option>  
              <option value="100" xid="default14">100</option>  
              <option value="130" xid="default15">130</option>  
              <option value="160" xid="default16">160</option>  
              <option value="200" xid="default17">200</option>  
              <option value="255" xid="default18">255</option> 
            </select> 
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/list/list" class="x-list"
        xid="list1" data="valueData"> 
        <ul class="x-list-template"> 
          <li>
            <div component="$UI/system/components/justep/row/row" class="x-row"
              xid="row9"> 
              <div class="x-col" xid="col21" style="Text-align:center;">频率调节</div>  
              <div class="x-col" xid="col20"> 
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-xs btn-only-icon" label="button" xid="button8" icon="icon-android-remove"
                  onClick="reduceCountBtnClick" style="color:white;background-color:#35b3e4;"> 
                  <i xid="i7" class="icon-android-remove"/>  
                  <span xid="span8"/>
                </a>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output" xid="output1" bind-ref="ref(&quot;pinlv&quot;)" style="text-align:center;margin-right:10px;margin-left:10px;display:inline-block"/>  
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-xs btn-only-icon" label="button" xid="button9" icon="icon-android-add"
                  onClick="addCountBtnClick" style="color:white;background-color:#35b3e4;"> 
                  <i xid="i8" class="icon-android-add"/>  
                  <span xid="span9"/>
                </a> 
              </div> 
            </div>
          </li>
        </ul> 
      </div>
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6"> 
        <div class="x-col" xid="col13" style="Text-align:center;">运行模式</div>  
        <div class="x-col" xid="col12"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit2" style="width:40%;"> 
            <select component="$UI/system/components/justep/select/select" class="form-control pull-left x-edit"
              xid="select1" style="weigh:30%;height:333%;width:100%;"> 
              <option value="1" xid="default9">智能</option>  
              <option value="2" xid="default8">手动</option>  
              <option value="3" xid="default7" label="睡眠"></option> 
            </select> 
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5">
   <div class="x-col" xid="col10" style="Text-align:center;">
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row7">
   <div class="x-col" xid="col14"></div>
   <div class="x-col" xid="col16"><span xid="span14" class="pull-left">
   <span component="$UI/system/components/justep/button/toggle" class="x-toggle" xid="toggle4" checked="false" ON="开机" OFF="关机"></span></span></div>
   </div></div>
   <div class="x-col" xid="col11">
    
  <span xid="span11" class="pull-left" style="width:40%;"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1" style="width:90%;">
   <select component="$UI/system/components/justep/select/select" class="form-control pull-left x-edit" xid="select2" style="weigh:30%;height:333%;width:100%;">
    <option value="01" xid="default4">1小时</option>
    <option value="02" xid="default3">2小时</option>
    <option value="03" xid="default2" label="3小时"></option>
    <option value="04" xid="default3">4小时</option>
    <option value="05" xid="default3">5小时</option>
    <option value="06" xid="default3">6小时</option>
    <option value="07" xid="default3">7小时</option>
    <option value="08" xid="default3">8小时</option>
    <option value="09" xid="default3">9小时</option>
    <option value="10" xid="default3">10小时</option>
    <option value="11" xid="default3">11小时</option>
    <option value="12" xid="default3">12小时</option>
    <option value="13" xid="default3">13小时</option>
    <option value="14" xid="default3">14小时</option>
    <option value="15" xid="default3">15小时</option>
    <option value="20" xid="default3">20小时</option>
    </select> </div></span>
  <span xid="span13" class="pull-left" style="width:40%;"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit3" style="width:90%;">
   <select component="$UI/system/components/justep/select/select" class="form-control pull-left x-edit" xid="select3" style="weigh:30%;height:333%;width:100%;">
    <option value="10" xid="default6">10分钟</option>
    <option value="20" xid="default5">20分钟</option>
    <option value="30" xid="default19" label="30分钟"></option>
    <option value="40" xid="default5">40分钟</option>
    <option value="50" xid="default5">50分钟</option>
    </select> </div></span></div> </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row8"> 
        <div class="x-col" xid="col17" style="Text-align:center;"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-lg" label="关机" xid="button10" icon="glyphicon glyphicon-off">
   <i xid="i9" class="glyphicon glyphicon-off"></i>
   <span xid="span10">关机</span></a></div> 
      </div> 
    </div>  
    <div class="x-panel-bottom" xid="bottom2">
   <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar3">
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4" style="height:100%;width:100%;">
     <div class="x-col" xid="col9" style="Text-align:center;">
      <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="主页" style="background-color:#009933;" xid="button13" onClick="openPage" url="/xfapp/main.w">
       <i xid="i3"></i>
       <span xid="span3">主页</span></a> </div> 
     <div class="x-col" xid="col8" style="Text-align:center;">
      <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="设置" style="background-color:#009933;" xid="button13" onClick="openPage" url="/xfapp/control.w">
       <i xid="i3"></i>
       <span xid="span3">设置</span></a> </div> 
     <div class="x-col" xid="col3" style="Text-align:center;">
      <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="管理" style="background-color:#009933;" xid="button13" onClick="openPage" url="/xfapp/edit.w">
       <i xid="i3"></i>
       <span xid="span3">管理</span></a> </div> </div> </div> </div></div> 
<div component="$UI/system/components/justep/popMenu/popMenu" class="x-popMenu" xid="popMenu1">
   <div class="x-popMenu-overlay" xid="div3"></div>
   <ul component="$UI/system/components/justep/menu/menu" class="x-menu dropdown-menu x-popMenu-content" xid="menu1"><li class="x-menu-item" xid="item1">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="1小时" xid="button1">
    <i xid="i1"></i>
    <span xid="span1">1小时</span></a> </li>
  <li class="x-menu-item" xid="item2">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="2小时" xid="button4">
    <i xid="i2"></i>
    <span xid="span4">2小时</span></a> </li>
  <li class="x-menu-item" xid="item3">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="3小时" xid="button5">
    <i xid="i4"></i>
    <span xid="span5">3小时</span></a> </li>
  <li class="x-menu-item" xid="item4">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="5小时" xid="button6">
    <i xid="i5"></i>
    <span xid="span6">5小时</span></a> </li>
  <li class="x-menu-item" xid="item5">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="8小时" xid="button7">
    <i xid="i6"></i>
    <span xid="span7">8小时</span></a> </li></ul></div></div>
