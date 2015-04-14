
var CalendarWebControl = new newatCalendarControl();
var new_element=document.createElement("script");
new_element.setAttribute("type","text/javascript");
new_element.setAttribute("src","/Analysis/common-skins/default/jslib/my97/WdatePicker.js");
document.body.appendChild(new_element);


function newatCalendarControl(){
  var calendar=this;
  this.datetype='datetime';
  this.calendarPad=null;
  this.prevMonth=null;
  this.nextMonth=null;
  this.prevYear=null;
  this.nextYear=null;
  this.goToday=null;
  this.calendarClose=null;
  this.calendarAbout=null;
  this.currTimeLable=null;
  this.currHour=null;
  this.currMinute=null;
  this.currSecond=null;
  this.head=null;
  this.body=null;
  this.today=[];
  this.currentDate=[];
  this.sltDate;
  this.target;
  this.source;  
  this.oltDate;
  this.soltDate;
  this.ifs;
  this.ifsou;

  /************** 加入日历底板及阴影 *********************/
  this.addCalendarPad=function(){
	   document.write("<div id='divCalendarpad' style='position:absolute;top:100;left:0;width:255;height:167;display:none; z-index:1'>");
	   document.write("<iframe frameborder=0 height=168 width=255></iframe>");
	   document.write("<div style='position:absolute;top:4;left:4;width:248;height:164;background-color:#336699;'></div>");
	   document.write("</div>");
	   calendar.calendarPad=document.all.divCalendarpad;
  }
  /************** 加入日历面板 *********************/
  this.addCalendarBoard=function(){
	   var BOARD=this;
	   var divBoard=document.createElement("div");
	   calendar.calendarPad.insertAdjacentElement("beforeEnd",divBoard);
	   divBoard.style.cssText="position:absolute;top:0;left:0;width:250;height:166;border:1 outset;background-color:buttonface;";
	
	   var tbBoard=document.createElement("table");
	   divBoard.insertAdjacentElement("beforeEnd",tbBoard);
	   tbBoard.style.cssText="position:absolute;top:0;left:0;width:100%;height:10;font-size:9pt;";
	   tbBoard.cellPadding=0;
	   tbBoard.cellSpacing=1;
	   tbBoard.bgColor="#333333";
	
	  /************** 设置各功能按钮的功能 *********************/
	   /*********** Calendar About Button ***************/
	   trRow = tbBoard.insertRow(0);
	   calendar.calendarAbout=calendar.insertTbCell(trRow,0,"帮助","center");
	   calendar.calendarAbout.onclick=function(){calendar.about();}
	   /*********** Calendar Head ***************/
	   tbCell=trRow.insertCell(1);
	   tbCell.colSpan=5;
	   tbCell.bgColor="#99CCFF";
	   tbCell.align="center";
	   tbCell.style.cssText = "cursor:default";
	   calendar.head=tbCell;
	   /*********** Calendar Close Button ***************/
	   tbCell=trRow.insertCell(2);
	   calendar.calendarClose = calendar.insertTbCell(trRow,2,"取消","center");
	   calendar.calendarClose.title="关闭";
	   calendar.calendarClose.onclick=function(){calendar.hide();}
	
	   /*********** Calendar PrevYear Button ***************/
	   trRow = tbBoard.insertRow(1);
	   calendar.prevYear = calendar.insertTbCell(trRow,0,"&lt;&lt;","center");
	   calendar.prevYear.title="上一年";
	   calendar.prevYear.onmousedown=function(){
		    calendar.currentDate[0]--;
		    calendar.show(calendar.target,calendar.currentDate[0]+"-"+calendar.currentDate[1]+"-"+calendar.currentDate[2],datetype,calendar.source);
	   }
	   /*********** Calendar PrevMonth Button ***************/
	   calendar.prevMonth = calendar.insertTbCell(trRow,1,"&lt;","center");
	   calendar.prevMonth.title="上一月";
	   calendar.prevMonth.onmousedown=function(){
		    calendar.currentDate[1]--;
		    if(calendar.currentDate[1]==0){
			     calendar.currentDate[1]=12;
			     calendar.currentDate[0]--;
		    }
		    calendar.show(calendar.target,calendar.currentDate[0]+"-"+calendar.currentDate[1]+"-"+calendar.currentDate[2],datetype,calendar.source);
	   }
	   /*********** Calendar Today Button ***************/
	   calendar.goToday = calendar.insertTbCell(trRow,2,"今天","center",3);
	   calendar.goToday.title="选择今天";
	   calendar.goToday.onclick=function(){
			//add by kanbol,这里对“今天”的处理有点问题，我直接加了个new Date();
		    var da=new Date();
		    var month=da.getMonth()+1;
		    var day=da.getDate();
		    if (month<10) month="0"+month;
		    if (day<10) day="0"+day;
		    if (datetype!='date')
		    calendar.sltDate=da.getYear()+"-"+month+"-"+day+" "+calendar.currHour.value+":"+calendar.currMinute.value+":"+calendar.currSecond.value;
		  else calendar.sltDate=da.getYear()+"-"+month+"-"+day;
		    //calendar.sltDate=calendar.currentDate[0]+"-"+calendar.currentDate[1]+"-"+calendar.currentDate[2];
		    calendar.target.value=calendar.sltDate;
		    calendar.hide();
		    //calendar.show(calendar.target,calendar.today[0]+"-"+calendar.today[1]+"-"+calendar.today[2],calendar.source);
	   }
	   /*********** Calendar NextMonth Button ***************/
	   calendar.nextMonth = calendar.insertTbCell(trRow,3,"&gt;","center");
	   calendar.nextMonth.title="下一月";
	   calendar.nextMonth.onmousedown=function(){
		    calendar.currentDate[1]++;
		    if(calendar.currentDate[1]==13){
			     calendar.currentDate[1]=1;
			     calendar.currentDate[0]++;
		    }
		    calendar.show(calendar.target,calendar.currentDate[0]+"-"+calendar.currentDate[1]+"-"+calendar.currentDate[2],datetype,calendar.source);
	   }
	   /*********** Calendar NextYear Button ***************/
	   calendar.nextYear = calendar.insertTbCell(trRow,4,"&gt;&gt;","center");
	   calendar.nextYear.title="下一年";
	   calendar.nextYear.onmousedown=function(){
		    calendar.currentDate[0]++;
		    calendar.show(calendar.target,calendar.currentDate[0]+"-"+calendar.currentDate[1]+"-"+calendar.currentDate[2],datetype,calendar.source);
	   }
	
	   trRow = tbBoard.insertRow(2);
	   var cnDateName = new Array("周日","周一","周二","周三","周四","周五","周六");
	   for (var i = 0; i < 7; i++) {
		    tbCell=trRow.insertCell(i)
		    tbCell.innerText=cnDateName[i];
		    tbCell.align="center";
		    tbCell.width=35;
		    tbCell.style.cssText="cursor:default;border:1 solid #99CCCC;background-color:#99CCCC;";
	   }
	
	   /*********** Calendar Body ***************/
	   trRow = tbBoard.insertRow(3);
	   tbCell=trRow.insertCell(0);
	   tbCell.colSpan=7;
	   tbCell.height=97;
	   tbCell.vAlign="top";
	   tbCell.bgColor="#F0F0F0";
	   var tbBody=document.createElement("table");
	   tbCell.insertAdjacentElement("beforeEnd",tbBody);
	   tbBody.style.cssText="position:relative;top:0;left:0;width:245;height:103;font-size:9pt;"
	   tbBody.cellPadding=0;
	   tbBody.cellSpacing=1;
	   calendar.body=tbBody;
  }
  /************** 加入功能按钮公共样式 *********************/
  this.insertTbCell=function(trRow,cellIndex,TXT,trAlign,tbColSpan){
	   var tbCell=trRow.insertCell(cellIndex);
	   if(tbColSpan!=undefined) tbCell.colSpan=tbColSpan;
	
	   var btnCell=document.createElement("button");
	   tbCell.insertAdjacentElement("beforeEnd",btnCell);
	   btnCell.value=TXT;
	   btnCell.style.cssText="width:100%;border:1 outset;background-color:buttonface;";
	   btnCell.onmouseover=function(){
	    btnCell.style.cssText="width:100%;border:1 outset;background-color:#F0F0F0;";
	   }
	   btnCell.onmouseout=function(){
	    btnCell.style.cssText="width:100%;border:1 outset;background-color:buttonface;";
	   }
	  // btnCell.onmousedown=function(){
	  //  btnCell.style.cssText="width:100%;border:1 inset;background-color:#F0F0F0;";
	  // }
	   btnCell.onmouseup=function(){
	    btnCell.style.cssText="width:100%;border:1 outset;background-color:#F0F0F0;";
	   }
	   btnCell.onclick=function(){
	    btnCell.blur();
	   }
	   return btnCell;
  }
  
  this.insertTimeCell=function(trRow,cellIndex,TXT,trAlign,tbColSpan){
	   var tbCell=trRow.insertCell(cellIndex);
	   if(tbColSpan!=undefined) tbCell.colSpan=tbColSpan;
	
	   var btnCell=document.createElement("input");
	   tbCell.insertAdjacentElement("beforeEnd",btnCell);
	   btnCell.style.align='center';
	   btnCell.value=TXT;
	   btnCell.style.cssText="width:100%;border:1 outset;";
	   btnCell.onmouseover=function(){
	    btnCell.style.cssText="width:100%;border:1 outset;";
	   }
	   btnCell.onmouseout=function(){
	    btnCell.style.cssText="width:100%;border:1 ";
	   }
	  // btnCell.onmousedown=function(){
	  //  btnCell.style.cssText="width:100%;border:1 inset;background-color:#F0F0F0;";
	  // }
	   btnCell.onmouseup=function(){
	    btnCell.style.cssText="width:100%;border:1 outset;background-color:#F0F0F0;";
	   }
	   
	   btnCell.onkeyup=function(){
	   	if (!/^\d+$/.exec(btnCell.value)){
	   	alert('格式不正确!');
	   	btnCell.value='00';
	    }
	  }
	   //btnCell.onclick=function(){
	    //btnCell.blur();
	   //}
	   return btnCell;
  }
  
  this.setDefaultDate=function(){
	   var dftDate=new Date();
	   calendar.today[0]=dftDate.getYear();
	   calendar.today[1]=dftDate.getMonth()+1;
	   calendar.today[2]=dftDate.getDate();
  }

  /****************** Show Calendar *********************/
  this.show=function(targetObject,defaultDate,inputtype,inputif,inputifs,sourceObject){
  	 calendar.ifs=inputif;
  	 calendar.ifsou=inputifs;
  	 if (inputtype=='date'){
  	 	datetype='date';	
  	 	WdatePicker();//;new WdatePicker(targetObject,'%Y-%M-%D',false,'whyGreen'); 
  	 }else{
  		datetype='datetime';
  		WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'});//new WdatePicker(targetObject,'%Y-%M-%D %h:%m:00',true,'whyGreen');
     }	 
  }
  /****************** formatString 见本路径下 日期格式表.html *********************/
  this.showByDateFormat=function(formatString,customed){
  	if(customed){
  		WdatePicker({dateFmt:formatString});
  	}
  	else {
  	 if (formatString=='date'){	
  	 	WdatePicker();
  	 }else if(formatString=='datetime'){
  		WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'});
     }	
  	}
  }
  /****************** 计算对像的位置 *************************/
  this.getAbsolutePos = function(el) {
	   var r = { x: el.offsetLeft, y: el.offsetTop };
	   if (el.offsetParent) {
		    var tmp = calendar.getAbsolutePos(el.offsetParent);
		    r.x += tmp.x;
		    r.y += tmp.y;
	   }
	   return r;
  };
  //************* 插入日期单元格 **************/
  this.insertBodyCell=function(theRow,j,day,isDefaultMonth,isCurrentMonth){
	   var theCell=theRow.insertCell(j);
	   if(j==0) var theBgColor="#FF9999";
	   else var theBgColor="#FFFFFF";
	   if (isDefaultMonth){
	   		if(day==calendar.currentDate[2]) var theBgColor="#CCCCCC";
	   }
	   if (isCurrentMonth){
	   		if(day==calendar.today[2]) var theBgColor="#99FFCC";
	   }
	   theCell.bgColor=theBgColor;
	   theCell.innerText=day;
	   theCell.align="center";
	   theCell.width=35;
	   theCell.style.cssText="border:1 solid #CCCCCC;cursor:hand;";
	   theCell.onmouseover=function(){
		    theCell.bgColor="#FFFFCC";
		    theCell.style.cssText="border:1 outset;cursor:hand;";
	   }
	   theCell.onmouseout=function(){
		    theCell.bgColor=theBgColor;
		    theCell.style.cssText="border:1 solid #CCCCCC;cursor:hand;";
	   }
	   theCell.onmousedown=function(){
		    theCell.bgColor="#FFFFCC";
		    theCell.style.cssText="border:1 inset;cursor:hand;";
	   }
	   theCell.onclick=function(){
		    if(calendar.currentDate[1].length<2) calendar.currentDate[1]="0"+calendar.currentDate[1];
		    if(day.toString().length<2) day="0"+day;
		    if (datetype=='datetime')
		    calendar.sltDate=calendar.currentDate[0]+"-"+calendar.currentDate[1]+"-"+day+" "+calendar.currHour.value+":"+calendar.currMinute.value+":"+calendar.currSecond.value;
		  else	calendar.sltDate=calendar.currentDate[0]+"-"+calendar.currentDate[1]+"-"+day;
		    calendar.soltDate=calendar.currentDate[1]+"/"+day+"/"+calendar.currentDate[0];
		    if (calendar.ifs=="l")
		    {
		    if(Date.parse(calendar.soltDate)>Date.parse(calendar.oltDate))
		    {
		    	alert(""+calendar.ifsou+"不能大于当前时间");
		    }
		    else
		    {
		    calendar.target.value=calendar.sltDate;
		  	calendar.hide();
		    }
		    }
		    else
		    {
		    		if(calendar.ifs=="s")
		    		{
		    			if(Date.parse(calendar.soltDate)<Date.parse(calendar.oltDate))
					    {
					    	alert(""+calendar.ifsou+"不能小于当前时间");
					    }
					    else
					    {
					    calendar.target.value=calendar.sltDate;
					  	calendar.hide();
					    }
		    		}
		    		else
		    		{
		    			calendar.target.value=calendar.sltDate;
					  	calendar.hide();
		    		}
		    	
		    }
	   
	   }
  }
  /************** 取得月份的第一天为星期几 *********************/
  this.getFirstDay=function(theYear, theMonth){
	   var firstDate = new Date(theYear,theMonth-1,1);
	   return firstDate.getDay();
  }
  /************** 取得月份共有几天 *********************/
  this.getMonthLen=function(theYear, theMonth) {
	   theMonth--;
	   var oneDay = 1000 * 60 * 60 * 24;
	   var thisMonth = new Date(theYear, theMonth, 1);
	   var nextMonth = new Date(theYear, theMonth + 1, 1);
	   var len = Math.ceil((nextMonth.getTime() - thisMonth.getTime())/oneDay);
	   return len;
  }
  /************** 隐藏日历 *********************/
  this.hide=function(){
   //calendar.clearEventKey();
   	calendar.calendarPad.style.display="none";
  }
  /************** 从这里开始 *********************/
  this.setup=function(defaultDate){
	   calendar.addCalendarPad();
	   calendar.addCalendarBoard();
	   calendar.setDefaultDate();
  }
  /************** 关于AgetimeCalendar *********************/
  this.about=function(){
	   /*//alert("Agetime Calendar V1.0\n\nwww.agetime.com\n");
	   popLeft = calendar.calendarPad.style.pixelLeft+4;
	   popTop = calendar.calendarPad.style.pixelTop+25;
	   var popup = window.createPopup();
	   var popupBody = popup.document.body;
	   popupBody.style.cssText="border:solid 2 outset;font-size:9pt;background-color:#F0F0F0;";
	   var popHtml = "<span style='color:#336699;font-size:12pt;'><U>关于 AgetimeCalendar</U></span><BR><BR>";
	   popHtml+="版本: v1.0<BR>日期: 2004-03-13";
	   popupBody.innerHTML=popHtml;
	   popup.show(popLeft,popTop,240,136,document.body); */
	   var strAbout="<<\t: 上一年\n";
	   strAbout+="<\t: 上一月\n";
	   strAbout+=">\t: 下一月\n";
	   strAbout+="<<\t: 下一年\n";
	   alert(strAbout);
  }
 /****************** showByName Calendar *********************/
  this.showByName=function(targetObjectName,inputtype,inputif,inputifs,sourceObject){
  	 if (inputtype=='date'){	
  	 	WdatePicker({el:targetObjectName,dateFmt:inputtype});
  	 }else if(inputtype=='datetime'){
  		WdatePicker({el:targetObjectName,dateFmt:'yyyy-MM-dd HH:mm:ss'});
     }	
  	   	 
  }
 this.showByInputId=function(targetObjectId,formatString,customed){
  	if(customed){
  		WdatePicker({el:targetObjectId,dateFmt:formatString});
  	}
  	else {
  	 if (formatString=='date'){	
  	 	 WdatePicker({el:targetObjectId});
  	 }else if(formatString=='datetime'){
  		WdatePicker({el:targetObjectId,dateFmt:'yyyy-MM-dd HH:mm:ss'});
     }	
  	}
  }  
  calendar.setup();
 }


