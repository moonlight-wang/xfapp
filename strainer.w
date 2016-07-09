<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:135px;left:28px;" onLoad="modelLoad"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="infoData" idColumn="ID">
   <column name="ID" type="Integer" xid="xid5"></column>
   <column label="设备名" name="name" type="String" xid="xid8"></column>
   <column label="状态" name="status" type="String" xid="xid9"></column>
   <column label="模式" name="mode" type="String" xid="xid23"></column>
   <data xid="default4">[]</data>
   <rule xid="rule2">
    <col name="TOVC" xid="ruleCol3">
     <calculate xid="calculate3">
      <expr xid="default5"></expr></calculate> </col> </rule> </div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="data1" idColumn="col0"><column name="col0" type="String" xid="xid1"></column>
  <column name="col1" type="String" xid="xid2"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="data2" idColumn="chuxiao"><column name="chuxiao" type="String" xid="xid3"></column>
  <column name="jingdian" type="String" xid="xid4"></column>
  <column name="gaoxiao" type="String" xid="xid6"></column>
  <data xid="default1">[{&quot;chuxiao&quot;:&quot;50%&quot;,&quot;jingdian&quot;:&quot;50%&quot;,&quot;gaoxiao&quot;:&quot;50%&quot;}]</data></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="滤网信息"
          class="x-titlebar">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">滤网信息</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1" style="background:url('./img/beijing.jpg') no-repeat;background-size:100% 100%;color:#e4e4e4;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row5" style="height:8%;">
   <div class="x-col" style="Text-align:center;font-size:12px;" xid="col13" bind-text=' $model.infoData.ref("mode")'></div>
   <div class="x-col" style="Text-align:center;font-size:12px;" xid="col15">
    <span xid="span40">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link" xid="button6" style="height:100%;" icon="icon-android-add" onClick="openPage" url="/xfapp/edit.w">
      <i xid="i8" class="icon-android-add"></i>
      <span xid="span39"></span></a> </span> 
    <span xid="span41">
     <label xid="label3" bind-text=' $model.infoData.ref("name")'></label></span> </div> 
   <div class="x-col" style="Text-align:center;font-size:12px;" xid="col19" bind-text=' $model.infoData.ref("status")'></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="width:90%;margin-left:5%">
   <div class="x-col" xid="col3" style="text-align:center;border-bottom:2px solid #fff;font-size:16px" label="滤芯状态">滤芯状态</div></div>
  <div xid="div1" style="height:10%;width:90%;margin-left:10%"><span xid="span1" class="pull-left" style="width:80%;height:100%;"><![CDATA[粗效过滤]]><p xid="p1" style="background-color:#e4e4e4;border-radius:20px;width:100%;height:50%;"><img src="./img/lvtiao.png" alt="" xid="image1" style="border-radius:20px;width:60%;" height="100%"></img></p></span>
  <span xid="span2" class="pull-right" style="width:20%;height:100%;text-align:center;line-height:70px;" bind-text='$model.data2.ref("chuxiao")'><![CDATA[]]></span></div>
  <div xid="div2" style="height:10%;width:90%;margin-left:10%">
   <span xid="span5" class="pull-left" style="width:80%;height:100%;"><![CDATA[静电除尘器    ]]>
  <p xid="p2" style="background-color:#e4e4e4;border-radius:20px;width:100%;height:50%;">
   <img src="./img/huangtiao.png" alt="" xid="image2" style="border-radius:20px;width:60%;" height="100%"></img></p></span> 
   <span xid="span3" class="pull-right" style="width:20%;height:100%;text-align:center;line-height:70px;" bind-text='$model.data2.ref("jingdian")'><![CDATA[]]></span></div>
  <div xid="div3" style="height:10%;width:90%;margin-left:10%">
   <span xid="span7" class="pull-left" style="width:80%;height:100%;"><![CDATA[HEPA高效过滤器  ]]>
  <p xid="p3" style="background-color:#e4e4e4;border-radius:20px;width:100%;height:50%;">
   <img src="./img/hongtiao.png" alt="" xid="image3" style="border-radius:20px;width:60%;" height="100%"></img></p></span> 
   <span xid="span6" class="pull-right" style="width:20%;height:100%;text-align:center;line-height:70px;" bind-text='$model.data2.ref("gaoxiao")'><![CDATA[]]></span></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="width:90%;margin-left:5%;border-bottom:2px solid #fff;">
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3" style="width:90%;margin-left:5%;border-bottom:2px solid #fff;">
   <div class="x-col" xid="col1" style="text-align:center;font-size:16px" label="滤芯状态">历史数据</div></div>
  <div xid="main" style="width:100%;height:50%;color:#e4e4e4;" class="main"></div></div>
  <div class="x-panel-bottom" xid="bottom1">
   <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar2">
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row14" style="height:100%;width:100%;">
     <div class="x-col" xid="col31" style="Text-align:center;">
      <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="主页" style="background-color:rgba(186, 197, 190, 0.37);border-radius:3em" xid="button4" onClick="openPage" url="/xfapp/main.w">
       <i xid="i2"></i>
       <span xid="span4">主页</span></a> </div> 
     <div class="x-col" xid="col32" style="Text-align:center;">
      <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="设置" style="background-color:rgba(186, 197, 190, 0.37);border-radius:3em" xid="button4" onClick="openPage" url="/xfapp/control.w">
       <i xid="i2"></i>
       <span xid="span4">设置</span></a> </div> 
     <div class="x-col" xid="col33" style="Text-align:center;">
      <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="更多" style="background-color:rgba(186, 197, 190, 0.37);border-radius:3em" xid="button4" onClick="openPage" url="/xfapp/strainer.w">
       <i xid="i2"></i>
       <span xid="span4">更多</span></a> </div> </div> </div> </div></div> 
</div>