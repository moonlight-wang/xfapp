<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" class="main13" component="$UI/system/components/justep/window/window"
  design="device:mobile;" xid="window">  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full x-card x-has-iosstatusbar"
    xid="panel2"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar"
        xid="titleBar1"> 
        <div class="x-titlebar-left" xid="div2"> 
          </div>  
        <div class="x-titlebar-title" xid="div3">登录界面</div>  
        <div class="x-titlebar-right reverse" xid="div4"/> 
      </div> 
    </div>  
    <div class="x-panel-content  x-cards panel-body" xid="content1"> 
      <div xid="div1" class="list-group"> 
        <div class="list-group-item"> 
          <div class="input-group" xid="div7"> 
            <span class="input-group-addon" xid="span2"> 
              <i class="icon-ios7-contact"/> 
            </span>  
            <input component="$UI/system/components/justep/input/input" class="form-control x-inputText"
              xid="nameInput" placeHolder="请输入用户名" max="js:new Date()" min="js:new Date()" bind-value="username"/> 
          </div> 
        </div>  
        <div class="list-group-item" xid="div6"> 
          <div class="input-group" xid="div8"> 
            <span class="input-group-addon" xid="span3"> 
              <i class="icon-unlocked" xid="i3"/> 
            </span>  
            <input component="$UI/system/components/justep/input/password" class="form-control x-inputText"
              xid="passwordInput" placeHolder="请输入密码" bind-value="password"/> 
          </div> 
        </div> 
      </div>  
      <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-only-label btn-block"
        label="登录" xid="loginIsmBtn" onClick="loginIsmBtn"> 
        <i xid="i4"/>  
        <span xid="span4">登录</span> 
      </a>  
      <div class="list-group"> 
        <div class="list-group-item"> 
          <div class="h5"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-only-icon pull-right"
              label="button" xid="button2" icon="icon-ios7-arrow-right"> 
              <i xid="i1" class="icon-ios7-arrow-right text-muted"/>  
              <span xid="span5"/> 
            </a>  
            <span xid="span8" class="text-black">没有账号？</span>  
            <span class="text-danger" xid="emailReg" style="margin-left:10px;" bind-click="registeredClick" url="registerEmail"><![CDATA[注册新账号]]></span></div> 
        </div> 
      </div> 
    </div> 
  </div> 
</div>
