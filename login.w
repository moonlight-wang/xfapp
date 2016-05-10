<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:258px;top:435px;"></div> 

  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-content tb-trans" xid="content1" style="top:0;"><div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents2" swipe="false" wrap="false" slidable="false">
   <div class="x-contents-content x-cards" xid="loginContent"><div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panel2">
   <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" style="height:auto;">
   <div class="x-titlebar-left" xid="left1"></div>
   <div class="x-titlebar-title" xid="title1">
    <span xid="span1" style="font-weight:normal;">登录</span></div> 
   <div class="x-titlebar-right reverse" xid="right1"></div></div><div class="panel-body" xid="body1"><div class="list-group" xid="listGroup2" style="height:100%;"></div>
  <div xid="div2" class="list-group-item" style="top:auto;">
   <div class="input-group" component="$UI/system/components/bootstrap/inputGroup/inputGroup" xid="inputGroup1">
    <span class="input-group-addon" xid="span3">账号</span>
    <input type="text" class="form-control" component="$UI/system/components/justep/input/input" xid="nameInput" placeHolder="手机号/昵称"></input></div> </div>
  <div xid="div3" class="list-group-item">
   <div class="input-group" component="$UI/system/components/bootstrap/inputGroup/inputGroup" xid="inputGroup2">
    <span class="input-group-addon" xid="span4">密码</span>
    <input component="$UI/system/components/justep/input/password" class="form-control" xid="passwordInput" placeHolder="不得少于8位，由数字或字母组成"></input></div> </div>
  <a component="$UI/system/components/justep/button/button" style="margin-top:25px;" class="btn btn-default btn-block" label="登录" xid="loginBtn">
   <i xid="i1"></i>
   <span xid="span6">登录</span></a>
  <div xid="div6" class="list-group-item" align="center">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="注册账号" xid="registerBtn" target="registerContent">
    <i xid="i2"></i>
    <span xid="span7">注册账号</span></a> 
   <i xid="i4" class="icon-ios7-information-empty"></i>
   <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="忘记密码" xid="forgetBtn">
    <i xid="i3"></i>
    <span xid="span8">忘记密码</span></a> </div>
  </div>
   </div></div>
  <div class="x-contents-content x-cards" xid="registerContent">
  <div component="$UI/system/components/justep/windowContainer/windowContainer"
            class="x-window-container" xid="navContainer2" src="./register.w"/></div>
            </div></div>
   </div></div>