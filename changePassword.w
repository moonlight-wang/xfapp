<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;" onLoad="modelLoad"> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="重置密码"
          class="x-titlebar">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">重置密码</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit4">
   <label class="x-label" xid="label4" style="Text-align:right;">手                       机：</label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="tel" placeHolder="请输入正确的手机号"></input></div>
  <div class="panel-heading" xid="div1" style="height:44px;">
   <span xid="span1" class="pull-left" style="width:30%;text-align:right;">
    <div class="media-left media-middle" xid="mediaLeft1" style="margin-left:66px;width:20%;">
     <span class="pull-right x-flex" style="width:64px;" xid="span2">验证码：</span></div> </span> 
   <span xid="span3" class="pull-right" style="width:70%;">
    <div class="media-body" xid="mediaBody1" style="width:140px;">
     <input component="$UI/system/components/justep/input/input" class="form-control input-sm tb-noborder text-muted" xid="verifyCode" style="height:33px;width:127px;"></input></div> 
    <div class="media-body" style="width:760px;" xid="div7">
     <a component="$UI/system/components/justep/button/button" class="btn x-black btn-only-label btn-block" label="获取验证码" xid="sendsmsbutton" onClick="sendsmsButton" style="height:33px;width:139px;">
      <i xid="i3"></i>
      <span xid="span5">获取验证码</span></a> </div> </span> </div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit2">
   <label class="x-label" xid="label2" style="Text-align:right;"><![CDATA[新密码：]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="password" placeHolder="密码最少8位"></input></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit3">
   <label class="x-label" style="Text-align:right;" xid="label3">确认密码：</label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="repassword" placeHolder="确认密码"></input></div>
  <div class="panel-heading" xid="div6">
   <div class="media-body" style="width:119px;" xid="div13" align="justify"></div>
   <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-only-label btn-block" label="提交" xid="button2" onClick="verifyButton">
    <i xid="i2"></i>
    <span xid="span4">提交</span></a> </div></div>
  </div> 
</div>