<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;" onLoad="modelLoad"> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="滤芯重置"
          class="x-titlebar">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">滤芯重置</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1"><div xid="div1">
  
  <span xid="span3" class="pull-left" style="width:70%;"><input component="$UI/system/components/justep/input/input" placeHolder="初效过滤寿命（默认2160h）" class="form-control" xid="input1"></input></span><span xid="span4" class="pull-right"><a component="$UI/system/components/justep/button/button" class="btn btn-default" label="初效重置" xid="button2" onClick="button2Click">
   <i xid="i2"></i>
   <span xid="span2">初效重置</span></a></span></div>
  
  <div xid="div2"><span xid="span5" class="pull-left" style="width:70%;"><input component="$UI/system/components/justep/input/input" class="form-control" xid="input2" placeHolder="静电除尘寿命（默认2160h）"></input></span>
  <span xid="span6" class="pull-right"><a component="$UI/system/components/justep/button/button" class="btn btn-default" label="静电重置" xid="button3" onClick="button3Click">
   <i xid="i3"></i>
   <span xid="span11">静电重置</span></a></span></div>
  <div xid="div4">
   <span xid="span9" class="pull-left" style="width:70%;"><input component="$UI/system/components/justep/input/input" class="form-control" xid="input3" placeHolder="高效过滤寿命（默认4320h）"></input></span>
   <span xid="span10" class="pull-right"><a component="$UI/system/components/justep/button/button" class="btn btn-default" label="高效重置" xid="button4" onClick="button4Click">
   <i xid="i4"></i>
   <span xid="span12">高效重置</span></a></span></div><a component="$UI/system/components/justep/button/button" class="btn btn-default" label="重置" xid="button1" style="width:40%;margin-left:30%;display:none;" onClick="button1Click">
   <i xid="i1"></i>
   <span xid="span1">重置</span></a></div>
  </div> 
</div>