<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;"> 
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
    <div class="x-panel-content" xid="content1"><input component="$UI/system/components/justep/input/input" placeHolder="初效过滤寿命" class="form-control" xid="input1"></input>
  <input component="$UI/system/components/justep/input/input" class="form-control" xid="input2" placeHolder="静电除尘寿命"></input><input component="$UI/system/components/justep/input/input" class="form-control" xid="input3" placeHolder="高效过滤寿命"></input><a component="$UI/system/components/justep/button/button" class="btn btn-default" label="重置" xid="button1" style="width:40%;margin-left:30%" onClick="button1Click">
   <i xid="i1"></i>
   <span xid="span1">重置</span></a>
  </div>
  </div> 
</div>