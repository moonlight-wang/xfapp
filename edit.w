<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:11px;left:-41px;height:auto;" onLoad="modelLoad"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="pData" idColumn="province"><column label="省" name="province" type="String" xid="xid2"></column>
  <rule xid="rule1">
   <col name="pID" xid="ruleCol1">
    <required xid="required1">
     <expr xid="default7"></expr></required> </col> </rule>
  <column name="pID" type="Integer" xid="xid4"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="cityData" idColumn="cID"><column name="cID" type="Integer" xid="xid5"></column>
  <column name="c" type="String" xid="xid6"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="countyData" idColumn="cID"><column name="cID" type="Integer" xid="xid7"></column>
  <column name="c" type="String" xid="xid8"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="编辑设备"
          class="x-titlebar">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">编辑设备</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col" xid="col8"><div xid="div1">
   <span xid="span1" style="width:20%;Text-align:right;" class="pull-left">
    <label xid="label1">设备ID：</label></span> 
   <span xid="span2" class="pull-right" style="width:80%;">
    <input type="text" value="" xid="input5" style="height:100%;width:100%;" readonly="true"></input></span> </div>
  </div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
   <div class="x-col" xid="col10"><div xid="div2">
   <span xid="span4" style="width:20%;Text-align:right;" class="pull-left">
    <label xid="label2">设备名称：</label></span> 
   <span xid="span3" class="pull-right" style="width:80%;">
    <input component="$UI/system/components/justep/input/input" class="form-control" xid="input1"></input></span> </div></div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
   <div class="x-col" xid="col13"><div xid="div3">
   <span xid="span6" style="width:20%;Text-align:right;" class="pull-left">
    <label xid="label3" for="province">所在地：</label></span> 
   <span xid="span5" class="pull-left" style="width:26%;">
    <select component="$UI/system/components/justep/select/select" type="text" dtype="1" name="province" class="form-control" xid="province" style="width:100%;" onChange="getAddr" bind-options="pData" bind-optionsValue="pID" bind-optionsLabel="province">
     <option value="9999999" xid="default4">--请选择--</option>
     <volist name="province" id="vo" xid="default5">
      <option xid="default6"></option></volist> </select> </span> 
   <span xid="span12" class="pull-left" style="width:26%;">
    <select component="$UI/system/components/justep/select/select" type="text" dtype="2" name="city" class="form-control" xid="city" style="width:100%;" onChange="getAddr" bind-options="cityData" bind-optionsValue="cID" bind-optionsLabel="c"></select></span> 
   <span xid="span13" class="pull-left" style="width:26%;">
    <select component="$UI/system/components/justep/select/select" type="text" name="county" class="form-control" xid="county" style="width:100%;" bind-options="countyData" bind-optionsValue="cID" bind-optionsLabel="c"></select></span> </div></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5">
   <div class="x-col" xid="col14"><div xid="div4">
   <span xid="span8" style="width:20%;Text-align:right;" class="pull-left">
    <label xid="label4">详细地址：</label></span> 
   <span xid="span7" class="pull-right" style="width:80%;">
    <input component="$UI/system/components/justep/input/input" class="form-control" xid="input2"></input></span> </div></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6">
   <div class="x-col" xid="col15"><div xid="div5">
   <span xid="span10" style="width:20%;Text-align:right;" class="pull-left">
    <label xid="label5">手机号：</label></span> 
   <span xid="span9" class="pull-right" style="width:80%;">
    <input component="$UI/system/components/justep/input/input" class="form-control" xid="input3"></input></span> </div></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col" xid="col4" style="Text-align:center;"><a component="$UI/system/components/justep/button/button" class="btn btn-default" label="保存" xid="button1" onClick="saveClicked">
   <i xid="i1"></i>
   <span xid="span11">保存</span></a></div>
   </div></div>
  </div> 
</div>