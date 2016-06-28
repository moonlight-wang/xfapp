<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:441px;left:763px;"
    onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="valueData" idColumn="vID"> 
      <column name="vID" type="Integer" xid="xid1"/>  
      <column label="频率" name="pinlv" type="String" xid="xid2"/>  
      <data xid="default1">[{&quot;vID&quot;:{&quot;value&quot;:&quot;Hz&quot;},&quot;pinlv&quot;:&quot;30&quot;}]</data></div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="plData" idColumn="col0">
      <column name="col0" type="String" xid="xid3"></column>
  <column name="pl" type="String" xid="xid4"></column>
  <column name="a" type="String" xid="xid8"></column>
  <data xid="default11">[]</data></div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="mData" idColumn="col0">
      <column name="col0" type="String" xid="xid5"/>  
      <column name="m" type="String" xid="xid6"/>  
      <column name="xianshi" type="String" xid="xid7"/>
    </div>
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar"
        xid="titleBar1"> 
        <div class="x-titlebar-left" xid="left1"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
            xid="button2" icon="icon-android-arrow-back" onClick="{'operation':'window.close'};"
            style="width:63px;"> 
            <i xid="detailsBtn" class="icon-android-arrow-back"/>  
            <span xid="span2"/> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title1">设置</div>  
        <div class="x-titlebar-right reverse" xid="right1"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link"
            label="保存" xid="button11" onClick="saveClick"> 
            <i xid="i11"/>  
            <span xid="span12">保存</span>
          </a>
        </div> 
      </div> 
    </div>  
    <div class="x-panel-content center-block" xid="content1" style="background:url(./img/beijing.jpg) no-repeat;background-size:100% 100%;color:#e4e4e4;font-size:15px"> 
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="border-bottom:2px solid #fff;width:90%;margin-left:5%"> 
        <div class="x-col" xid="col1" style='text-align:center;padding:20px'>定时</div>  
        <div class="x-col" xid="col2"> 
          <span component="$UI/system/components/justep/button/toggle" class="x-toggle"
            xid="toggle1" checked="false" onChange="toggleChecked" style="height:100%;"/> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="border-bottom:2px solid #fff;width:90%;margin-left:5%"> 
        <div class="x-col" xid="col5" style="text-align:center;padding:20px">童锁</div>  
        <div class="x-col" xid="col4"> 
          <span component="$UI/system/components/justep/button/toggle" class="x-toggle"
            xid="toggle2" style="height:100%;"/> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3" style="border-bottom:2px solid #fff;width:90%;margin-left:5%"> 
        <div class="x-col" xid="col7" style="Text-align:center;line-height:100%;padding:20px">
  <div xid="div5" style="border-radius:20px;" class="styled-select"><select component="$UI/system/components/justep/select/select" class="form-control pull-left x-edit" xid="select7" bind-options="plData" bind-optionsValue="pl" bind-optionsLabel="a" bind-ref='$model.plData.ref("a")' style="height:100%;margin-left:10%;width:80%;border-radius:20px;"></select></div></div>  
        <div class="x-col" xid="col6"> 
          <span component="$UI/system/components/justep/button/toggle" class="x-toggle" xid="toggle5" style="height:100%;"></span></div> 
      </div>  
      <div component="$UI/system/components/justep/list/list" class="x-list"
        xid="list1" data="valueData" style="display:none;"> 
        <ul class="x-list-template"> 
          <li> 
            <div component="$UI/system/components/justep/row/row" class="x-row"
              xid="row9"> 
              <div class="x-col" xid="col21" style="Text-align:center;line-height:100%">频率调节</div>  
              <div class="x-col" xid="col20"> 
                  
                  
                 
              </div> 
            </div> 
          </li> 
        </ul> 
      </div>  
      <div xid="div4" style="margin-top:10%">
   <span xid="span7" class="pull-left" style="Text-align:center;line-height:100%;width:35%;height:100%;"><![CDATA[]]>
  <a component="$UI/system/components/justep/button/button" class="btn btn-xs btn-only-icon" label="button" xid="button8" icon="icon-android-remove" onClick="reduceCountBtnClick" style="color:white;background-color:#35b3e4;">
   <i xid="i7" class="icon-android-remove"></i>
   <span xid="span8"></span></a></span>
   <span xid="span1" class="pull-left" style="Text-align:center;line-height:100%;width:30%;height:100%;"><![CDATA[]]>
  <div component="$UI/system/components/justep/output/output" class="x-output" xid="output1" style="text-align:right;margin-right:10px;margin-left:10px;display:inline-block;width:20%;font-size:20px;" bind-text=' $model.valueData.ref("pinlv")' bind-ref='$model.valueData.ref("pinlv")'></div>
  <div component="$UI/system/components/justep/output/output" class="x-output" xid="output4" style="text-align:left;display:inline-block;width:30%;" bind-text=' $model.valueData.ref("vID")'></div></span>
   <span xid="span4" class="pull-right" style="width:35%;height:100%;Text-align:center;line-height:100%;"><![CDATA[]]>
  <a component="$UI/system/components/justep/button/button" class="btn btn-xs btn-only-icon" label="button" xid="button9" icon="icon-android-add" onClick="addCountBtnClick" style="color:white;background-color:#35b3e4;">
   <i xid="i8" class="icon-android-add"></i>
   <span xid="span9"></span></a></span></div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row6" style="width:90%;margin-left:5%"> 
        <div class="x-col" xid="col13" style="text-align:center;padding:20px">运行模式</div>  
        <div class="x-col" xid="col12"> 
           
        <div xid="div6" class="styled-select" style="border-radius:20px;"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit2" style="width:60%;"> 
            <select component="$UI/system/components/justep/select/select" class="form-control pull-left x-edit" xid="select1" style="height:333%;width:100%;border-radius:20px;"> 
              <option value="1" xid="default9">智能</option>  
              <option value="2" xid="default8">手动</option>  
              <option value="3" xid="default7" label="睡眠" /> 
            </select> 
          </div></div></div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row8"> 
        </div> 
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
   <div class="x-col" xid="col3" style="Text-align:center;"><a component="$UI/system/components/justep/button/button" style="border-radius:20px;" onClick="datePickerClick" class="btn btn-default" label="定时开" xid="button3">
   <i xid="i1"></i>
   <span xid="span5">定时开</span></a>
  <div component="$UI/system/components/justep/output/output" class="x-output" xid="output2" style="Text-align:center;color:#e4e4e4;"></div></div>
   <div class="x-col" xid="col17" style="Text-align:center;">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-lg btn-only-icon btn-block" label="关机" xid="button10" icon="glyphicon glyphicon-off" style="height:492%;" onClick="colseClick">
    <i xid="i9" class="glyphicon glyphicon-off" style="color:red;backgroungd-size:100% 100%;"></i>
    <span xid="span10">关机</span></a> </div>
  <div class="x-col" xid="col8" style="Text-align:center;"><a component="$UI/system/components/justep/button/button" style="border-radius:20px;" class="btn btn-default" label="定时关" xid="button5" onClick="datePickerClick">
   <i xid="i3"></i>
   <span xid="span6">定时关</span></a>
  <div component="$UI/system/components/justep/output/output" class="x-output" xid="output3" style="Text-align:center;color:#e4e4e4;"></div></div></div>
  </div>  
    <div class="x-panel-bottom" xid="bottom1">
   <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar2">
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row14" style="height:100%;width:100%;">
     <div class="x-col" xid="col31" style="Text-align:center;">
      <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="主页" style="background-color:rgba(186, 197, 190, 0.37);border-radius:3em" xid="button4" onClick="openPage" url="/xfapp/main.w">
       <i xid="i2"></i>
       <span xid="span3">主页</span></a> </div> 
     <div class="x-col" xid="col32" style="Text-align:center;">
      <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="设置" style="background-color:rgba(186, 197, 190, 0.37);border-radius:3em" xid="button4" onClick="openPage" url="/xfapp/control.w">
       <i xid="i2"></i>
       <span xid="span3">设置</span></a> </div> 
     <div class="x-col" xid="col33" style="Text-align:center;">
      <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="更多" style="background-color:rgba(186, 197, 190, 0.37);border-radius:3em" xid="button4" onClick="openPage" url="/xfapp/strainer.w">
       <i xid="i2"></i>
       <span xid="span3">更多</span></a> </div> </div> </div> </div></div> 
<div component="$UI/system/components/justep/datePicker/datePicker" class="x-popPicker" xid="datePicker" type="datetime" onOK="doOK" style="left:75px;top:11px;">
   <div class="x-popPicker-overlay" xid="div1"></div>
   <div class="x-popPicker-content" xid="div2">
    <div class="x-poppicker-header" xid="div3">
     <button class="btn btn-default x-btn-ok" xid="button1">确定</button></div> </div> </div></div>
