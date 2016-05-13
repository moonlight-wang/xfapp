<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:403px;top:63px;" onLoad="modelLoad"> 
    <!--     <div component="$UI/system/components/justep/data/baasData" autoLoad="true" -->  
    <!--       xid="baasData2" queryAction="queryUsers" tableName="taobao_user" url="/justep/taobao"> -->  
    <!--       <filter name="userfilter" xid="filter2"><![CDATA[fID=:user]]></filter></div>  -->  
   <filter name="filter0" xid="filter5"><![CDATA[fID=:usera]]></filter>
   <div component="$UI/system/components/justep/data/baasData" autoLoad="false"
      xid="userData" queryAction="queryNetease_user" tableName="netease_user" url="/justep/netease"
      idColumn="fID" saveAction="saveNetease_user" autoNew="false" onAfterNew="userDataAfterNew"> 
      <!--   <column label="密码" name="passwd" type="String" xid="default17"></column> -->  
      <filter name="filter0" xid="filter5">fID=:usera</filter>
  <column label="ID" name="fID" type="String" xid="default6"></column>
  <column label="QQ;weibo;weixin;sim" name="fType" type="String" xid="default7"></column>
  <column label="用户名" name="fName" type="String" xid="default8"></column>
  <column label="用户密码" name="passwd" type="String" xid="default9"></column>
  <column label="用户账号" name="fPhoneNumber" type="String" xid="default10"></column>
  <column label="地址" name="fAddress" type="String" xid="default12"></column></div>
  
  </div>  
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver"
    xid="popOver"> 
    <div class="x-popOver-overlay" xid="div9"/> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full x-card"
    xid="panel1"> 
   <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar"
        xid="titleBar1"> 
        <div class="x-titlebar-left" xid="div2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left btn-only-icon"
            label="注册" xid="button6" icon="icon-chevron-left" onClick="{operation:'window.close'}"> 
            <i xid="i2" class="icon-chevron-left"/>  
            <span xid="span6">注册</span> 
          </a>  
          </div>  
        <div class="x-titlebar-title" xid="div3">注册界面</div>  
        <div class="x-titlebar-right reverse" xid="div4"/> 
      </div> 
    </div>  
    <div class="x-panel-content x-cards" xid="content1"> 
      <div component="$UI/system/components/justep/panel/panel" class="panel panel-default tb-noborder x-card x-tuniu"
        xid="panel3"> 
        <div> 
          
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1">
   <label class="x-label" xid="label1" style="Text-align:right;" bind-text='$model.userData.label("fPhoneNumber")'></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="userName" placeHolder="请输入账号" bind-ref='$model.userData.ref("fPhoneNumber")'></input></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit2">
   <label class="x-label" xid="label2" style="Text-align:right;" bind-text='$model.userData.label("passwd")'></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="password" placeHolder="密码最少8位" bind-ref='$model.userData.ref("passwd")'></input></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit3">
   <label class="x-label" style="Text-align:right;" xid="label3"><![CDATA[确认密码]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="repassword" placeHolder="确认密码"></input></div>
  <div class="panel-heading" xid="div6">
   
   
   <div class="media-body" style="width:119px;" xid="div13" align="justify">
    </div> <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-only-label btn-block" label="提交" xid="button2" onClick="verifyButton">
     <i xid="i2"></i>
     <span xid="span4">提交</span></a></div></div> 
      </div> 
    </div> 
  </div> 
</div>
