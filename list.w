<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:353px;top:1px;" onLoad="modelLoad">
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="listData" idColumn="sID">
      <column label="设备ID" name="sID" type="String" xid="xid1"></column>
  <column label="设备名" name="sname" type="String" xid="xid2"></column>
  <column label="状态" name="status" type="String" xid="xid3"></column>
  <data xid="default1">[]</data></div>
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar"
        xid="titleBar1" title="我的设备"> 
        <div class="x-titlebar-left" xid="left1"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" onClick="{'operation':'window.close'};" label="button" xid="button1" icon="icon-chevron-left">
   <i xid="i1" class="icon-chevron-left"></i>
   <span xid="span1"></span></a></div>  
        <div class="x-titlebar-title" xid="title1">我的设备</div>  
        <div class="x-titlebar-right reverse" xid="right1"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" url="/xfapp/add.w" xid="button2" icon="icon-plus" onClick="openPages">
   <i xid="i2" class="icon-plus"></i>
   <span xid="span2"></span></a></div>
      </div> 
    </div>  
    <div class="x-panel-content  x-scroll-view" xid="content1" _xid="C6F5B0969BE00001D49313F012631710"> 
      
  <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1">
   <div class="x-content-center x-pull-down container" xid="div1">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i3"></i>
    <span class="x-pull-down-label" xid="span3">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div2"><div component="$UI/system/components/justep/list/list" class="x-list x-cards" xid="list2" data="listData">
   <ul class="x-list-template list-group" xid="listTemplateUl2">
    <li xid="li2" class="list-group-item">
     
  <div xid="div25" class="media" bind-click="listClick"><div xid="div6" class="media-body"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col x-col-fixed" xid="col3" style="width:auto;"></div>
   <div class="x-col" xid="col4">
    <div component="$UI/system/components/justep/output/output" class="x-output" xid="output6" bind-ref='ref("sname")' style="font-size:16px;font-weight:bold;"></div>
    <div component="$UI/system/components/justep/output/output" class="x-output" xid="output5" bind-ref='ref("sID")'></div>
    <div xid="div4"></div></div> </div></div>
  <div xid="nextDiv" class="media-right">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-right" xid="nextBtn" icon="icon-chevron-right">
    <i xid="i9" class="icon-chevron-right" style="color:#C0C0C0;"></i>
    <span xid="span14"></span></a> 
  <div xid="div8"><div component="$UI/system/components/justep/output/output" class="x-output" xid="output3" bind-ref='ref("status")'></div></div></div></div></li> </ul> </div></div>
   <div class="x-content-center x-pull-up" xid="div3">
    <span class="x-pull-up-label" xid="span4">加载更多...</span>
  </div> </div>
  </div>  
    </div>
</div>