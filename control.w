<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:288px;left:505px;">
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="valueData" idColumn="vID">
      <column name="vID" type="Integer" xid="xid1"/>  
      <column label="频率" name="pinlv" type="String" xid="xid2"/>  
      <data xid="default1">[{"vID":1,"pinlv":"25"}]</data>
    </div>
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar"
        xid="titleBar1"> 
        <div class="x-titlebar-left" xid="left1"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
            xid="button2" icon="icon-navicon-round" style="width:63px;"> 
            <i xid="detailsBtn" class="icon-navicon-round"/>  
            <span xid="span2"/> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="title1">设置</div>  
        <div class="x-titlebar-right reverse" xid="right1"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
            label="button" xid="button3" icon="icon-power" style="width:70px;height:46px;"> 
            <i xid="i3" class="icon-power"/>  
            <span xid="span3"/> 
          </a> 
        </div> 
      </div> 
    </div>  
    <div class="x-panel-content center-block" xid="content1" style="background-color:#8a8fef;"> 
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1"> 
        <div class="x-col" xid="col1" style="Text-align:center;">定时</div>  
        <div class="x-col" xid="col2"> 
          <span component="$UI/system/components/justep/button/toggle" class="x-toggle"
            xid="toggle1"/> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2"> 
        <div class="x-col" xid="col5" style="Text-align:center;">童锁</div>  
        <div class="x-col" xid="col4"> 
          <span component="$UI/system/components/justep/button/toggle" class="x-toggle"
            xid="toggle2"/> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3"> 
        <div class="x-col" xid="col7" style="Text-align:center;">静电除尘</div>  
        <div class="x-col" xid="col6"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit4" style="width:40%;"> 
            <select component="$UI/system/components/justep/select/select" class="form-control pull-left x-edit"
              xid="select5" style="weigh:30%;height:333%;width:100%;"> 
              <option value="1" xid="default10">1</option>  
              <option value="2" xid="default11">2</option>  
              <option value="3" xid="default12">3</option>  
              <option value="4" xid="default13">4</option>  
              <option value="5" xid="default14">5</option>  
              <option value="6" xid="default15">6</option>  
              <option value="7" xid="default16">7</option>  
              <option value="8" xid="default17">8</option>  
              <option value="9" xid="default18">9</option> 
            </select> 
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/list/list" class="x-list"
        xid="list1" data="valueData"> 
        <ul class="x-list-template"> 
          <li>
            <div component="$UI/system/components/justep/row/row" class="x-row"
              xid="row9"> 
              <div class="x-col" xid="col21" style="Text-align:center;">频率调节</div>  
              <div class="x-col" xid="col20"> 
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-xs btn-only-icon" label="button" xid="button8" icon="icon-android-remove"
                  onClick="reduceCountBtnClick" style="color:white;background-color:#35b3e4;"> 
                  <i xid="i7" class="icon-android-remove"/>  
                  <span xid="span8"/>
                </a>  
                <div component="$UI/system/components/justep/output/output"
                  class="x-output" xid="output1" bind-ref="ref(&quot;pinlv&quot;)" style="text-align:center;margin-right:10px;margin-left:10px;display:inline-block"/>  
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-xs btn-only-icon" label="button" xid="button9" icon="icon-android-add"
                  onClick="addCountBtnClick" style="color:white;background-color:#35b3e4;"> 
                  <i xid="i8" class="icon-android-add"/>  
                  <span xid="span9"/>
                </a> 
              </div> 
            </div>
          </li>
        </ul> 
      </div>
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6"> 
        <div class="x-col" xid="col13" style="Text-align:center;">运行模式</div>  
        <div class="x-col" xid="col12"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit2" style="width:40%;"> 
            <select component="$UI/system/components/justep/select/select" class="form-control pull-left x-edit"
              xid="select1" style="weigh:30%;height:333%;width:100%;"> 
              <option value="1" xid="default9">智能</option>  
              <option value="2" xid="default8">手动</option>  
              <option value="3" xid="default7">睡眠</option> 
            </select> 
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row7"> 
        <div class="x-col" xid="col16" style="Text-align:center;"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-lg" label="定时开关机" xid="button14">
   <i xid="i13"></i>
   <span xid="span14">定时开关机</span></a></div>
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row8"> 
        <div class="x-col" xid="col17" style="Text-align:center;"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-lg" label="关机" xid="button10" icon="glyphicon glyphicon-off">
   <i xid="i9" class="glyphicon glyphicon-off"></i>
   <span xid="span10">关机</span></a></div> 
      </div> 
    </div>  
    <div class="x-panel-bottom" xid="bottom1"/> 
  </div> 
<ul component="$UI/system/components/justep/menu/menu" class="x-menu dropdown-menu" xid="menu1"><li class="x-menu-item" xid="item1">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="1小时" xid="button12">
    <i xid="i11"></i>
    <span xid="span12">1小时</span></a> </li>
  <li class="x-menu-item" xid="item2">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="2小时" xid="button13">
    <i xid="i12"></i>
    <span xid="span13">2小时</span></a> </li></ul></div>
