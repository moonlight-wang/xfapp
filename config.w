<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;"> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="配置服务器"
          class="x-titlebar">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">配置服务器</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
   <div class="x-col" xid="col10">
    <div xid="div2">
     <span xid="span4" style="width:20%;Text-align:right;" class="pull-left">
      <label xid="label2"><![CDATA[服务器：]]></label></span> 
     <span xid="span3" class="pull-right" style="width:80%;">
      <input component="$UI/system/components/justep/input/input" class="form-control" xid="input1" bind-value="fIP"></input></span> </div> </div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col" xid="col1">
    <div xid="div1">
     <span xid="span2" style="width:20%;Text-align:right;" class="pull-left">
      <label xid="label1"><![CDATA[端口号：]]></label></span> 
     <span xid="span1" class="pull-right" style="width:80%;">
      <input component="$UI/system/components/justep/input/input" class="form-control" xid="input2" bind-value="duankou"></input></span> </div> </div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col" xid="col4" style="Text-align:center;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="保存" xid="button1" onClick="saveClick">
     <i xid="i1"></i>
     <span xid="span11">保存</span></a> </div> </div></div>
  </div> 
</div>