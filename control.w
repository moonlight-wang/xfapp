<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:248px;left:500px;"
    onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="valueData" idColumn="vID"> 
      <column name="vID" type="Integer" xid="xid1"/>  
      <column label="频率" name="pinlv" type="String" xid="xid2"/>  
      <data xid="default1">[]</data>
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="plData" idColumn="col0">
      <column name="col0" type="String" xid="xid3"/>  
      <column name="pl" type="String" xid="xid4"/>
    </div>  
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
    <div class="x-panel-content center-block" xid="content1" style="background:url(./img/beijing.jpg) no-repeat;background-size:100% 100%;"> 
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1"> 
        <div class="x-col" xid="col1" style="Text-align:center;">定时</div>  
        <div class="x-col" xid="col2"> 
          <span component="$UI/system/components/justep/button/toggle" class="x-toggle"
            xid="toggle1" checked="false" onChange="toggleChecked"/> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2"> 
        <div class="x-col" xid="col5" style="Text-align:center;">童锁</div>  
        <div class="x-col" xid="col4"> 
          <span component="$UI/system/components/justep/button/toggle" class="x-toggle"
            xid="toggle2"/> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row10"> 
        <div class="x-col" xid="col18" style="Text-align:center;">功能</div>  
        <div class="x-col" xid="col15"> 
          <span component="$UI/system/components/justep/button/toggle" class="x-toggle"
            xid="toggle3"/>
        </div> 
      </div>
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3"> 
        <div class="x-col" xid="col7" style="Text-align:center;">静电除尘</div>  
        <div class="x-col" xid="col6"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelEdit4" style="width:40%;"> 
            <select component="$UI/system/components/justep/select/select" class="form-control pull-left x-edit"
              xid="select5" style="weigh:30%;height:333%;width:100%;" bind-options="plData"
              bind-optionsValue="pl" bind-optionsLabel="pl"></select> 
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
              <option value="3" xid="default7" label="睡眠"/> 
            </select> 
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5"> 
        <div class="x-col" xid="col23" style="Text-align:center;">定时开</div>
  <div class="x-col" xid="col11">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row11">
    <div class="x-col" xid="col22">
     <span xid="span11" class="pull-left" style="width:50%;">
      <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1" style="width:95%;">
       <select component="$UI/system/components/justep/select/select" class="form-control pull-left x-edit" xid="select2" style="weigh:30%;height:333%;width:100%;">
        <option value="00" xid="default3">0点</option>
        <option value="01" xid="default4">1点</option>
        <option value="02" xid="default3">2点</option>
        <option value="03" xid="default2" label="3点"></option>
        <option value="04" xid="default3">4点</option>
        <option value="05" xid="default3">5点</option>
        <option value="06" xid="default3">6点</option>
        <option value="07" xid="default3">7点</option>
        <option value="08" xid="default3">8点</option>
        <option value="09" xid="default3">9点</option>
        <option value="10" xid="default3">10点</option>
        <option value="11" xid="default3">11点</option>
        <option value="12" xid="default3">12点</option>
        <option value="13" xid="default3">13点</option>
        <option value="14" xid="default3">14点</option>
        <option value="15" xid="default3">15点</option>
        <option value="16" xid="default3">16点</option>
        <option value="17" xid="default3">17点</option>
        <option value="18" xid="default3">18点</option>
        <option value="19" xid="default3">19点</option>
        <option value="20" xid="default3">20点</option>
        <option value="21" xid="default3">21点</option>
        <option value="22" xid="default3">22点</option>
        <option value="23" xid="default3">23点</option></select> </div> </span> 
     <span xid="span13" class="pull-left" style="width:50%;">
      <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit3" style="width:95%;">
       <select component="$UI/system/components/justep/select/select" class="form-control pull-left x-edit" xid="select3" style="weigh:30%;height:333%;width:100%;" bind-optionsValue="m" bind-options="mData" bind-optionsLabel="xianshi"></select></div> </span> </div> </div> </div></div>
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row12">
   <div class="x-col" xid="col24" style="Text-align:center;">定时关</div>
   <div class="x-col" xid="col25">
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row7">
     <div class="x-col" xid="col26">
      <span xid="span4" class="pull-left" style="width:50%;">
       <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit5" style="width:95%;">
        <select component="$UI/system/components/justep/select/select" class="form-control pull-left x-edit" xid="select6" style="weigh:30%;height:333%;width:100%;">
         <option value="00" xid="default5">0点</option>
         <option value="01" xid="default6">1点</option>
         <option value="02" xid="default5">2点</option>
         <option value="03" xid="default10" label="3点"></option>
         <option value="04" xid="default5">4点</option>
         <option value="05" xid="default5">5点</option>
         <option value="06" xid="default5">6点</option>
         <option value="07" xid="default5">7点</option>
         <option value="08" xid="default5">8点</option>
         <option value="09" xid="default5">9点</option>
         <option value="10" xid="default5">10点</option>
         <option value="11" xid="default5">11点</option>
         <option value="12" xid="default5">12点</option>
         <option value="13" xid="default5">13点</option>
         <option value="14" xid="default5">14点</option>
         <option value="15" xid="default5">15点</option>
         <option value="16" xid="default5">16点</option>
         <option value="17" xid="default5">17点</option>
         <option value="18" xid="default5">18点</option>
         <option value="19" xid="default5">19点</option>
         <option value="20" xid="default5">20点</option>
         <option value="21" xid="default5">21点</option>
         <option value="22" xid="default5">22点</option>
         <option value="23" xid="default5">23点</option></select> </div> </span> 
      <span xid="span1" class="pull-left" style="width:50%;">
       <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit6" style="width:95%;">
        <select component="$UI/system/components/justep/select/select" class="form-control pull-left x-edit" xid="select4" style="weigh:30%;height:333%;width:100%;" bind-optionsValue="m" bind-options="mData" bind-optionsLabel="xianshi"></select></div> </span> </div> </div> </div> </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row8" style="display:none;"> 
        <div class="x-col" xid="col17" style="Text-align:center;">
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-lg btn-only-icon"
            label="关机" xid="button10" icon="glyphicon glyphicon-off"> 
            <i xid="i9" class="glyphicon glyphicon-off"/>  
            <span xid="span10">关机</span>
          </a>
        </div> 
      </div> 
    </div>  
    <div class="x-panel-bottom" xid="bottom2"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar"
        xid="titleBar3"> 
        <div component="$UI/system/components/justep/row/row" class="x-row"
          xid="row4" style="height:100%;width:100%;"> 
          <div class="x-col" xid="col9" style="Text-align:center;"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-default"
              label="主页" style="background-color:#009933;" xid="button13" onClick="openPage"
              url="/xfapp/main.w"> 
              <i xid="i3"/>  
              <span xid="span3">主页</span>
            </a> 
          </div>  
          <div class="x-col" xid="col8" style="Text-align:center;"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-default"
              label="设置" style="background-color:#009933;" xid="button13" onClick="openPage"
              url="/xfapp/control.w"> 
              <i xid="i3"/>  
              <span xid="span3">设置</span>
            </a> 
          </div>  
          <div class="x-col" xid="col3" style="Text-align:center;"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-default"
              label="管理" style="background-color:#009933;" xid="button13" onClick="openPage"
              url="/xfapp/edit.w"> 
              <i xid="i3"/>  
              <span xid="span3">管理</span>
            </a> 
          </div> 
        </div> 
      </div> 
    </div>
  </div> 
</div>
