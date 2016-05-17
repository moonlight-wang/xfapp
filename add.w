<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:255px;left:513px;height:auto;"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="fileData" idColumn="fID"><column name="fID" type="Integer" xid="xid1"></column>
  <column name="filePath" type="String" xid="xid2"></column></div></div> 
<div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1">
   <div class="x-contents-content" xid="content2"><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel2">
   <div class="x-panel-top" xid="top2">
    <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar2">
     <div class="x-titlebar-left" xid="left2">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" xid="button10" onClick="{'operation':'window.close'};" icon="icon-chevron-left">
       <i xid="i10" class="icon-chevron-left"></i>
       <span xid="span10"></span></a> </div> 
     <div class="x-titlebar-title" xid="title2"></div>
     <div class="x-titlebar-right reverse" xid="right2"></div></div> </div> 
   <div class="x-panel-content" xid="content3">
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
     <div class="x-col" xid="col8" style="Text-align:center;">
      <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="扫二维码添加设备" xid="button8" onClick="scanBtnClick">
       <i xid="i8"></i>
       <span xid="span8">扫二维码添加设备</span></a> </div> </div> 
    <div style="position:relative;buttom:0px;" xid="div3">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
      <div class="x-col" xid="col7" style="Text-align:center;">
       <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="设备ID添加设备" xid="button11" target="content5">
   <i xid="i11"></i>
   <span xid="span11">设备ID添加设备</span></a></div> </div> </div> 
  </div> </div></div>
  <div class="x-contents-content" xid="content4"><iframe xid="iframe1" height="100%" width="100%"/> </div>
  <div class="x-contents-content" xid="content5"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1">
   <div class="x-titlebar-left" xid="left1"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button"  xid="button1" icon="icon-chevron-left" target="content2">
   <i xid="i1" class="icon-chevron-left"></i>
   <span xid="span1"></span></a></div>
   <div class="x-titlebar-title" xid="title1"></div>
   <div class="x-titlebar-right reverse" xid="right1"></div></div><input component="$UI/system/components/justep/input/input" class="form-control" xid="input1"  placeHolder="请输入设备ID号"></input>
  <div xid="div4" style="Text-align:center;"><a component="$UI/system/components/justep/button/button" class="btn btn-default" label="添加" xid="button12">
   <i xid="i12"></i>
   <span xid="span12"></span></a></div>
  </div></div></div>