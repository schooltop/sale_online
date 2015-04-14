String.prototype.trim = function(){
	return this.replace(/(^\s+)|(\s+$)|(^��+)|(��+$)/g, "");
};
/**
 * 为Loushang的数据字典提供（已废弃）
 **/
function getLinkageDateUrl(dictClass,parentClass,nameStr,type){
	var value="";
	if(nameStr!=null&&""!=nameStr.trim()){
	nameStr="INS_"+nameStr;
	}
	if(""!=nameStr.trim()&&document.all(nameStr)!=null&&typeof(document.all(nameStr))!="undefined")
			value=document.all(nameStr).value;
		else
			value="";
	var processId=document.all("processId").value;
	var activityId=document.all("activityId").value;
	var actDefId=document.all("curActDefId").value;
	var processDefId=document.all("curFlowId").value;
	return "linkageData.ilf?type="+type+"&dictClass="+dictClass+"&parentClass="+parentClass+"&name="+nameStr+"&value="+value;
}
/**
 * 为Loushang的设置短信提醒提供（已废弃）
*/
function setSmsValue(value){
//	var object=document.all(objName);
//	var smsValue="";
//	if(objName!=""&&object!=null&&typeof(object)!="undefined")
//	{
//		smsValue=object.value;
//	}
	var tarObj=document.all("INS_SMS");
	if(tarObj!=null&&typeof(tarObj)!="undefined"){
	tarObj.value=value;
	}
	
}
/**
 * ?????????????????"??"???
 * ????????????????????????????
 * code by wangsht
 */
function chCounRead()
{
	var dsvalue;
	dsvalue=document.all("INS_CITY").value;
	if (dsvalue=="6")
	{
		document.all("displayt_Edit_COUNTRY").style.display="none";
		document.all("INS_COUNTRYSIDE").readOnly=true;
		document.all("INS_CELLS").readOnly=true;
	}
	else
	{
		document.all("displayt_Edit_COUNTRY").style.display="";
		document.all("INS_COUNTRYSIDE").readOnly=false;
		document.all("INS_CELLS").readOnly=false;
	}

}
/**
 * 打开GIS地图使用
 */
function getLongLatUrl(){
		var sFeatures = "resizable:true;dialogHeight:"+(screen.height * 0.9)+"px;dialogWidth:"+(screen.width-12)+"px;";
		var windowObject = window.showModalDialog('/webgis/frames.jsp?openModel=modelDialog','Gismap',sFeatures);
		if(windowObject!=null&&typeof(windowObject)!="undefined"){
		document.getElementById("siteLong").value=windowObject[0];
		document.getElementById("siteLat").value=windowObject[1];
		}
}
/**
 * 为Loushang的默认人提供（已废弃）
 */
function getDefaultmanUrl(isCheckBox){
	//?????????????????????
	var objects = document.getElementsByTagName("select");
	var object;
	for(var i =0;i<objects.length;i++){
		var obj=objects[i];
		if(obj.name.indexOf("Ins_DEPEND")>=0)
		{
			object=obj;
			break;
		}
	}
	var configtype=object.name.substring(11,object.name.length);
	var depend=object.options[object.selectedIndex].value;
	return "organizeAction.ilf?isCheckBox="+isCheckBox+"&depend="+depend+"&configtype="+configtype;
}

/*
 * 
 * 如果存在多种处理方式，在点击提交按钮时触发。
 */
function submitProcess(formName,radioName){
	
	var formObj=document.getElementsByName(formName);
	//check vjs.
	if(!formObj[0].serverSubmit()){
		return;
	}
	//如果radioName不为空，则设置action
	if(radioName!=null&&radioName!=''){
		var radios=document.getElementsByName(radioName);
		if(radios.length<=0){
			changeActionUrl(formName,radioName);
		}else{
		for(var i =0;i<radios.length;i++){
			var radio=radios[i];
			if(radio.checked){
				changeActionUrl(formName,radio.method);
				break;
			}
		}
		}
	}
	
	
	var objects=document.getElementsByTagName("div");
	//alert("aa"+objects.length);
	for(var i =0;i<objects.length;i++){
		var obj=objects[i];
		if(obj.id.indexOf("process_")>=0&&obj.style.display=="none")
		//if(obj.style.display=="none")
		{
			//alert(obj.id+":"+obj.style.display);
			obj.innerHTML="";
			//alert(obj.id+":"+obj.innerHTML);
		}
	}
	formObj[0].refresh();

	//formObj[0].handleSubmit();
	if(disabledallButton(formObj[0])){
		formObj[0].submit();
	}
}
/**
 * 禁用页面中所有的按钮
 * 条件：页面提交用的是hanlderSubmit()
 * code by wangsht
 */
function disabledallButton(forms){
	if(forms.validate())
	{
		//var buttonList = new Array();
		var objList = document.getElementsByTagName("input");
		for(var i=0;i<objList.length;i++){
			if(objList[i].type && objList[i].type == 'button'){
				//buttonList.push(objList[i]);
				objList[i].disabled=true;
			}
		}
		return true;
	}else{
	return false;
	}
}
/*
 * 
 * 如果存在多种处理方式，在点击提交按钮时触发。进行vjs的教研.
 */
function submitProcessWithoutVjs(formName,radioName){

	//如果radioName不为空，则设置action
	if(radioName!=null&&radioName!=''){
		var radios=document.getElementsByName(radioName);
		if(radios.length<=0){
			changeActionUrl(formName,radioName);
		}else{
		for(var i =0;i<radios.length;i++){
			var radio=radios[i];
			if(radio.checked){
				changeActionUrl(formName,radio.method);
				break;
			}
		}
		}
	}
	
	var formObj=document.getElementsByName(formName);
	
	var objects=document.getElementsByTagName("div");
	for(var i =0;i<objects.length;i++){
		var obj=objects[i];
		if(obj.id.indexOf("process_")>=0&&obj.style.display=="none")
		//if(obj.style.display=="none")
		{
			//alert(obj.id+":"+obj.style.display);
			obj.innerHTML="";
		}
	}

	formObj[0].submit();
}
/**
 * 改变某个表单的action，修改"!"后面的method方法
 */
function changeActionUrl(formName,optionName){
	var formObj=document.getElementsByName(formName);
	//alert(formObj[0].action);
	var action=formObj[0].action;
	if(action.indexOf("!")>=0&&action.indexOf(".ilf")>=0){
		var startaction=action.substring(0,action.indexOf("!"));
		var endaction=action.substring(action.indexOf(".ilf"));
		formObj[0].action=startaction+"!"+optionName+endaction;
		//formObj.handleSubmit();
	}
}

/**
 * 改变某个表单的action，修改"!"后面的method方法  ,添加optstr（环节名称）,modi（//是否为涉及网元的修改状态）参数
 */
function changeActionUrl2(formName,optionName,optstr,modi){
	var formObj=document.getElementsByName(formName);
	//alert(formObj[0].action);
	var action=formObj[0].action;
	if(action.indexOf("!")>=0&&action.indexOf(".ilf")>=0){
		var startaction=action.substring(0,action.indexOf("!"));
		var endaction=action.substring(action.indexOf(".ilf"));
		formObj[0].action=encodeURI(startaction+"!"+optionName+endaction+"optname="+optstr+"&modi="+modi);
		//alert(formObj[0].action);
		//formObj.handleSubmit();
	}
}
/**
 * 选择组织结构－公司部门的树图
 * checkType 0|1，0为单选，1为多选；shortName：部门有的情况需要获取的是简短的名称，如“网管中心”，默认为false
 */
function selectOrg(widgetName,checkType,organWidget, shortName){
	if(typeof shortName == "undefined") shortName = false;
  var organId="";
   if(organWidget&&organWidget!=''){
	   var organObj=document.getElementsByName(organWidget);
	   if(organObj.length==0){
	   	organId = organWidget;
	   }else{
	   	organId=organObj[0].value;
	   }
   }else{
   	organId="";
   }
  //var url="wf_struhelp.cmd?method=getSelectRoot&amp;organType=1,2&amp;isCheckBox="+checkType+"&amp;isIncludeSelf=1&amp;isTree=1&amp;showOrganType=1,2";
  var url="wf_struhelp.cmd?method=getSelectRoot&organType=2&isCheckBox="+checkType+"&isIncludeSelf=1&isTree=1&showOrganType=1,2&organId="+organId;
  //url中organType=2表示只选择部门，organType=1表示只能选择公司，organType=8表示只能选择人
  var obj = showModalDialog(url,window,'dialogWidth:500px;dialogHeight:600px;status:no;scroll:yes');
  var names,ids;
  if(obj!=null){
  		var widget = document.all(widgetName);
	  if(widget.tagName == 'SELECT'){//SELECT控件看到的是名称，实际上是ID
	  		var nameWidget = document.all(widgetName.substring(0, widgetName.length - 2));
  			nameWidget.value = "";
	  		widget.options.length = 0;
	  		for (var i = 0; i < obj.length; i++) {
				var option = widget.options.length;
				widget.options[option] = new Option(obj[i]["root-text"]+"-"+obj[i]["display-str"], obj[i]["primary-value"]);
				widget.options[option].selected = true;
				if(widget.multiple){
					//nameWidget.value += "," + obj[i]["root-text"]+"-"+obj[i]["display-str"];
					nameWidget.value += ","+obj[i]["display-str"];
				}else{
					//nameWidget.value = "," + obj[i]["root-text"]+"-"+ obj[i]["display-str"];
					nameWidget.value = ","+ obj[i]["display-str"];
				}
			}
			if(nameWidget.value.length > 0)
				nameWidget.value = nameWidget.value.substring(1);
	   }else{
	   		var widgetId = document.all(widgetName + "Id");
		   for(var i= 0 ; i<obj.length ;i++){
		       if(i==0){
		       		if(obj[i]["root-text"] && !shortName){
		       			//names = obj[i]["root-text"]+"-"+obj[i]["display-str"];
		       			names = obj[i]["display-str"];
		       		}else{
		       			names = obj[i]["display-str"];
		       		}
		            ids=obj[i]["primary-value"];
		            continue;
		       }
		       if(shortName){
		       	names+=","+obj[i]["display-str"];
		       }else{
		       //	names+=","+obj[i]["root-text"]+"-"+obj[i]["display-str"];
		       	names+=","+obj[i]["display-str"];
		       }
		       ids+=","+obj[i]["primary-value"];
		   }
		   //如果未定义则清除数据
		   if(typeof(names)=='undefined')names=widget.value;
		   if(typeof(ids)=='undefined')ids=widgetId.value;
		   //设置ID,多选才能追加
		   if(widgetId.value!=''&&typeof(obj)=='object'&&checkType=='1')
		   {
		   		//widgetId.value=widgetId.value+","+ids;
		   		widgetId.value=ids;
		   }
		   else if(typeof(obj)=='string')
		   		widgetId.value="";
		   else 
		   		widgetId.value=ids;
		   //设置Name
		   if(widget.value!=''&&typeof(obj)=='object'&&checkType=='1')
		   {
		   		//widget.value=widget.value+","+names;
		   		widget.value=names;
		   }
		   else if(typeof(obj)=='string')
		   		widget.value="";
		   else
		   		widget.value=names;
		   		
		   if(widgetId.onchange)
    			widgetId.onchange();
	   }
  }
}
/**
 * 选择人力资源的树图
 * widgetName:控件名
 * checkType 0|1，0为单选，1为多选
 * organName:公司控件名，值为公司id
 */
function selectRes(widgetName,checkType,organWidget){
   var organId="";
   if(organWidget&&organWidget!=''){
	   var organObj=document.getElementsByName(organWidget);
	   if(organObj.length==0){
	   	organId = organWidget;
	   }else{
	   	organId=organObj[0].value;
   		}
   }else{
   		organId="";
   }
   //取得已经选择的值，进行把人员选中的在人员列表中选择.mobidy by gl on 2008-01-24
   if(typeof(document.all(widgetName))=='undefined' || typeof(document.all(widgetName+"Id"))=='undefined'){
   	alert("页面内容不全，请联系管理员");
   }
   //如果是下拉列表的人员，需要读取下拉列表的值进行记录.
   var oldIds = "";
   var oldNms = "";
   if(document.all(widgetName).tagName == 'SELECT'){
	    var widget = document.all(widgetName);
   		var oLen = widget.options.length;
   		for(var ind=0;ind<oLen;ind++){
   			oldIds += widget.options[ind].value+",";
   			oldNms += widget.options[ind].text+",";
   		}
   		
   }else{
   		oldIds = document.all(widgetName+"Id").value==""?"":document.all(widgetName+"Id").value.trim();
  	 	oldNms = document.all(widgetName).value==""?"":document.all(widgetName).value.trim();
   }
//   alert(organId);
   //var url="wf_struhelp.cmd?method=getSelectRoot&amp;organType=8&amp;isCheckBox="+checkType+"&amp;isIncludeSelf=1&amp;isTree=1&amp;rootId=1";
   var url=encodeURI("wf_struhelp.cmd?method=getSelectRoot&organType=8&isCheckBox="+checkType+"&isIncludeSelf=0&isTree=1&rootId=1&organId="+organId+"&oldIds="+oldIds+"&oldNms="+oldNms);
   var obj = showModalDialog(url,window,'dialogWidth:500px;dialogHeight:600px;status:no;scroll:yes');
   var names,ids;
  
   if(obj!=null){
   	var widget = document.all(widgetName);
   	if(widget.tagName == 'SELECT'){//SELECT控件看到的是名称，实际上是ID
			var nameWidget = document.all(widgetName.substring(0, widgetName.length - 2));
  			nameWidget.value = "";
	  		widget.options.length = 0;
	  		for (var i = 0; i < obj.length; i++) {
				var option = widget.options.length;
				widget.options[option] = new Option(obj[i]["display-str"], obj[i]["primary-value"]);
				widget.options[option].selected = true;
				if(widget.multiple){
					nameWidget.value += "," + obj[i]["display-str"];
				}else{
					nameWidget.value = "," + obj[i]["display-str"];
				}
			}
			if(nameWidget.value.length > 0)
				nameWidget.value = nameWidget.value.substring(1);
			return;
	   }else{
	   for(var i= 0 ; i<obj.length ;i++)
	   {
	       if(i==0){
	            names = obj[i]["display-str"];
	            ids=obj[i]["primary-value"];
	            continue;
	       }
	       names+=","+obj[i]["display-str"];
	       ids+=","+obj[i]["primary-value"];
	   }
	   }
   }
  //如果未定义则清除数据
   if(typeof(names)=='undefined')names=document.all(widgetName).value;
   if(document.all(widgetName+"Id")){
	   if(typeof(ids)=='undefined')
	   		ids=document.all(widgetName+"Id").value;
	   //设置ID
	   if(document.all(widgetName+"Id").value!=''&&typeof(obj)=='object'&&obj.length>0&&checkType=='1')
	   		//document.all(widgetName+"Id").value=document.all(widgetName+"Id").value+","+ids;
	   		document.all(widgetName+"Id").value=ids;
	   else if(typeof(obj)=='string')
	   		document.all(widgetName+"Id").value="";
	   else
	   		document.all(widgetName+"Id").value=ids;
   }
   //设置Name
   if(document.all(widgetName).value!=''&&typeof(obj)=='object'&&obj.length>0&&checkType=='1')
   		//document.all(widgetName).value=document.all(widgetName).value+","+names;
   		document.all(widgetName).value=names;
   else if(typeof(obj)=='string')
   		document.all(widgetName).value="";
   else
   		document.all(widgetName).value=names;
		
   if(document.all(widgetName+"Id")&&document.all(widgetName+"Id").onchange)
    document.all(widgetName+"Id").onchange();
}
/**
 * 选择人力资源的树图,包含公司。
 * widgetName:控件名
 * checkType 0|1，0为单选，1为多选
 * organName:公司控件名，值为公司id
 * containDept:选中的数据中如果包含部门，也需要将部门填充到目标控件；true：填充；false：不填充
 */
function selectDeptRes(widgetName,checkType,organWidget,containDept){
   var organId="";
   if(organWidget&&organWidget!=''){
	   var organObj=document.getElementsByName(organWidget);
	   if(organObj.length==0){
	   	organId = organWidget;
	   }else{
	   	organId=organObj[0].value;
   		}
   }else{
   		organId="";
   }
   //var url="wf_struhelp.cmd?method=getSelectRoot&amp;organType=8&amp;isCheckBox="+checkType+"&amp;isIncludeSelf=1&amp;isTree=1&amp;rootId=1";
   var url="wf_struhelp.cmd?method=getSelectRoot&organType=2,8&isCheckBox="+checkType+"&isIncludeSelf=1&isTree=1&rootId=1&organId="+organId;
   var obj = showModalDialog(url,window,'dialogWidth:500px;dialogHeight:600px;status:no;scroll:yes');
   var names="",ids="";
   if(obj!=null){
	   for(var i= 0 ; i<obj.length ;i++) {
	       if(obj[i]["primary-value"].charAt(0)!='U'){
		       names+=","+obj[i]["display-str"];
		       ids+=","+obj[i]["primary-value"];
	  	   }else{
		  	   if(containDept){
		  	   	   names+=","+obj[i]["root-text"]+"-"+obj[i]["display-str"];
			       ids+=","+obj[i]["primary-value"];
		  	   }
	  	   }
	   }
	   if(names!="")names=names.substring(1);
	   if(ids!="")ids=ids.substring(1);
   }
  //如果未定义则清除数据
   if(typeof(names)=='undefined')names=document.all(widgetName).value;
   if(typeof(ids)=='undefined')ids=document.all(widgetName+"Id").value;
   //设置ID
   if(document.all(widgetName+"Id").value!=''&&typeof(obj)=='object'&&checkType=='1'){
   		document.all(widgetName+"Id").value=document.all(widgetName+"Id").value+","+ids;
   }else if(typeof(obj)=='string')
   		document.all(widgetName+"Id").value="";
   else
   		document.all(widgetName+"Id").value=ids;
   //设置Name
   if(document.all(widgetName).value!=''&&typeof(obj)=='object'&&checkType=='1'){
   		document.all(widgetName).value=document.all(widgetName).value+","+names;
   }
   else if(typeof(obj)=='string')
   		document.all(widgetName).value="";
   else
   		document.all(widgetName).value=names
   if(document.all(widgetName+"Id").onchange)
    document.all(widgetName+"Id").onchange();
}
/**
 * 选择组织结构－公司的树图
 * widgetName:控件名
 * checkType 0|1，0为单选，1为多选
 * organName:公司控件名，值为公司id
 */
function selectCompany(widgetName,checkType,organWidget){
   var organId="";
   if(organWidget&&organWidget!=''){
	   var organObj=document.getElementsByName(organWidget);
	   if(organObj.length==0){
	   	organId = organWidget;
	   }else{
	   	organId=organObj[0].value;
	   }
   }else{
   	organId="";
   }
   //var url="wf_struhelp.cmd?method=getSelectRoot&amp;organType=8&amp;isCheckBox="+checkType+"&amp;isIncludeSelf=1&amp;isTree=1&amp;rootId=1";
   var url="wf_struhelp.cmd?method=getAllComs&organType=1&isCheckBox="+checkType+"&showOrganType=1&organId="+organId;
   var obj = showModalDialog(url,window,'dialogWidth:500px;dialogHeight:600px;status:no;scroll:yes');
   var names,ids;
   if(obj!=null){
   for(var i= 0 ; i<obj.length ;i++)
   {
       if(i==0){
            names = obj[i]["display-str"];
            ids=obj[i]["primary-value"];
            continue;
       }
       names+=","+obj[i]["display-str"];
       ids+=","+obj[i]["primary-value"];
   }
   }
  //如果未定义则清除数据
   if(typeof(names)=='undefined')names=document.all(widgetName).value;
   if(typeof(ids)=='undefined')ids=document.all(widgetName+"Id").value;
   //设置id
     //add begin code by wangsht  at 2008-7-22
   //增加当出现重复选择时，去掉重复的选项
      var newids="",newnames="";//定义新的选择数据变量
   if(document.all(widgetName+"Id").value!=''&&typeof(obj)=='object'&&checkType=='1' && ids!='')
   		{
   			var comNames,comIds;
   			comNames=document.all(widgetName).value;
   			comIds=document.all(widgetName+"Id").value;
   			var comIdsArr=comIds.split(",");
   			var comNamesArr=comNames.split(",");
   			var comObj={};
   			for(var m=0;m<comIdsArr.length;m++)
   			{
   				var colm1=comNamesArr[m];
   				var colm2=comIdsArr[m];
   				comObj[colm1]={};
   				comObj[colm1][colm2]=true;
   			}
   			var idsArr=ids.split(",");
   			var namesArr=names.split(",");
   			
   			for(var n=0;n<idsArr.length;n++)
   			{
   				var colm3=namesArr[n];
   				var colm4=idsArr[n];
   				if (typeof(comObj[colm3])!="undefined" && typeof(comObj[colm3][colm4])!="undefined")
   				{
   					if(comObj[colm3][colm4]!=true)
						{
							if(newids=='' || newids==null)
   							{
   								newids=idsArr[n];
   								newnames=namesArr[n];
   							}
   							else
   							{
   								newids=newids+","+idsArr[n];
   								newnames=newnames+","+namesArr[n];
   							}
						}
   				}
   				else
   				{
   					if(newids=='' || newids==null)
   					{
   						newids=idsArr[n];
   						newnames=namesArr[n];
   					}
   					else
   					{
   						newids=newids+","+idsArr[n];
   						newnames=newnames+","+namesArr[n];
   					}
   				}
   			}
   		}
   		else
   		{
   			newids=ids;
   			newnames=names;
   		}
   //add end
   if(document.all(widgetName+"Id").value!=''&&typeof(obj)=='object'&&checkType=='1')
   		
   		{
   			//modify by wangsht at 2008-7-22
   			//增加当输入为空时的判断
   			if(newids=='')
   			{
   				document.all(widgetName+"Id").value=document.all(widgetName+"Id").value
   			}else
   			{
   				document.all(widgetName+"Id").value=document.all(widgetName+"Id").value+","+newids;
   			}
   			//modify end
   		}
   else if(typeof(obj)=='string')
   		document.all(widgetName+"Id").value="";
   else
   		document.all(widgetName+"Id").value=newids;
    //设置name
   if(document.all(widgetName).value!=''&&typeof(obj)=='object'&&checkType=='1')
   {
   		//modify by wangsht at 2008-7-22
   		//增加当输入为空时的判断
   		if(newnames=='')
   		{
   			document.all(widgetName).value=document.all(widgetName).value;
   		}
   		else
   		{
   		document.all(widgetName).value=document.all(widgetName).value+","+newnames;
   		}
   		//modify end
   }
   else if(typeof(obj)=='string')
   		document.all(widgetName).value="";
   else
   		document.all(widgetName).value=names;
   if(document.all(widgetName+"Id").onchange)
    document.all(widgetName+"Id").onchange();
}
/*
 * 显示/隐藏某项数据
 * onClick="zoomChange('container');"
 */
function zoomChange(content){
	content = document.getElementById(content);
	if(content!=null&&typeof(content)!='undefined'){
	if(content.style.display == 'none'){
		content.style.display='inline';
	} else {
		content.style.display='none';
	}
	}
}
/**
 * 隐藏某个层，参数可以用逗号分开。如div1,div2
 */
function hiddenDiv(divNames){
	var contents=divNames.split(',');
	for(var i= 0 ; i<contents.length ;i++){
		content = document.getElementById(contents[i]);
		if(content!=null&&typeof(content)!='undefined'){
		content.style.display='none';
		}
	}
}
/**
 * 显示某个层，参数可以用逗号分开。如div1,div2
 */
function showDiv(divNames){
	var contents=divNames.split(',');
	for(var i= 0 ; i<contents.length ;i++){
		content = document.getElementById(contents[i]);
	if(content!=null&&typeof(content)!='undefined'){
		content.style.display='inline';
		}
	}
}
/**
 * 隐藏某tr，参数可以用逗号分开。如tr1,tr2
 */
function hiddenTr(trIds){
	var contents=trIds.split(',');
	for(var i= 0 ; i<contents.length ;i++){
		content = document.getElementById(contents[i]);
		if(content!=null&&typeof(content)!='undefined'){
		content.style.display='none';
		}
	}
}
/**
 * 显示某tr，参数可以用逗号分开。如tr1,tr2
 */
function showTr(trIds){
	var contents=trIds.split(',');
	for(var i= 0 ; i<contents.length ;i++){
		content = document.getElementById(contents[i]);
		if(content!=null&&typeof(content)!='undefined'){
		content.style.display='inline';
		}
	}
}
/**
 * 禁用按钮
 */
function disabledButton(obj){
	obj.disabled=true;
}
/**
 * 处理textarea
 */
function handleTextarea(){
	var objects=document.getElementsByTagName("textarea");
	for(var i =0;i<objects.length;i++){
		var obj=objects[i];
		var str=obj.value;
		if(str!=null&&str!=''){
		str=replaceByExp(str);
		obj.value=str;
		}
	}
}
/**
 * 替换特殊字符
 */
function replaceByExp(objvalue){
   var r;                    // 声明变量。
   r = objvalue.replace(/&/g, "&amp;");    // 用 "&amp;" 替换 "&"。
   r = r.replace(/'/g, "&#39;");    // 用 "&#39;" 替换 "'"。
   r = r.replace(/"/g, "&#34;");    // 用 "&#34;" 替换 """。
   r = r.replace(/</g, "&lt;");    // 用 "&lt;" 替换 "<"。
   r = r.replace(/>/g, "&gt;");    // 用 "&gt;" 替换 ">"。
   r = r.replace(/\n/g, "<br>");    // 用 "<br>" 替换 "\n"。
   r = r.replace(/ /g, "&nbsp;");    // 用 "<br>" 替换 " "。
   return r;                   // 返回替换后的字符串。
}
/**
 * 替换url特殊字符
 */
function replaceUrlSpecByRex(objvalue){
		var r;                    // 声明变量。
		r = objvalue.replace(/%/g, "%25");  
		r = r.replace(/&/g, "%26");    //  
	  	//r = r.replace(/\//g, "%2F");    // 用 "%2F" 替换 "/"。
	  	//r = r.replace(/+/g, "%2B");    // 用 "%2F" 替换 "/"。
	  	r = r.replace(/#/g, "%23");    //  
	  	r = r.replace(/\?/g, "%3F");    // 
	   	r = r.replace(/ /g, "%20");
	   	r = r.replace(/=/g, "%3D");
   		return r;                   // 返回替换后的字符串。
}
	
/**
 * 代码说明：formobj为表单名，checknames为复选框，butobj为全选按钮
 * 全选按钮为button时执行 
 */
 function selectAll(formobj,butobj,checkname)  
   { 
		for (var i=0;i<eval("document."+formobj+"."+checkname).length;i++) { 
		var temp=eval("document."+formobj+"."+checkname)[i]; 
		temp.checked=!temp.checked; 
		} 
	   if (eval("document."+formobj+"."+butobj).value=="全部选择") 
	   { 
	     eval("document."+formobj+"."+butobj).value="取消全选"; 
	   } 
	   else 
	   { 
	     eval("document."+formobj+"."+butobj).value="全部选择"; 
	   } 
} 
/**
 * 全选按钮为checkbox时执行 
 */
function selectAllC(formobj,butobj,checkname)  
{ 
		if(typeof(eval("document."+formobj+"."+checkname))!="undefined"){   	
			if (typeof(eval("document."+formobj+"."+checkname).length)!="undefined")
			{
				for (var i=0;i<eval("document."+formobj+"."+checkname).length;i++) { 
				var temp=eval("document."+formobj+"."+checkname)[i]; 
				temp.checked=!temp.checked; 
				} 
			}
			else
			{
				var temp=eval("document."+formobj+"."+checkname); 
				temp.checked=!temp.checked; 	
			}
		}
	   if (eval("window."+butobj).innerText=="全部选择") 
	   { 
	     eval("window."+butobj).innerText="取消全选"; 
	   } 
	   else 
	   { 
	     eval("window."+butobj).innerText="全部选择"; 
	   } 
} 
/**
 * 全选按钮为checkbox时执行 
 */
function selectAllByCbox(checkname)  
   { 	
   		var objs=document.getElementsByName(checkname);
   		if(objs){
   			if(objs.length){
			for (var i=0;i<objs.length;i++) { 
				var obj=objs[i]; 
					obj.checked=!obj.checked; 
				}
   			}else{
   				objs.checked=!objs.checked;
   			}
   		}
//	   if (eval("window."+butobj).innerText=="全部选择") 
//	   { 
//	     eval("window."+butobj).innerText="取消全选"; 
//	   } 
//	   else 
//	   { 
//	     eval("window."+butobj).innerText="全部选择"; 
//	   } 
} 
/**
 * 验证checkbox必须选择一个
 */
function validateCbox(checkname)  
   { 	
   		var i=0;
   		var count=0;
   		var objs=document.getElementsByName(checkname);
   		if(objs){
   			if(objs.length){
			for (var i=0;i<objs.length;i++) { 
				var obj=objs[i]; 
				if(obj.checked){
					count=1;
					break;
				}
			}
   			}else{
   				if(objs.checked)
					count=1;
			}
   		}else{
   				return false;
   			 }
   		if(count==0){
   			alert("请选择后再操作!");
   			return false;
   		}
   		return true;
   	}
/**
 * 设置单个对象的默认时间
 * beobj:为开始时间对象名
 * types:为当前默认时间选择类型，1为当前时间，2为按后面两个条件计算后的时间
 * addtype:日期相加类型（1为秒；2为分；3为小时；4为天；5为月；6为年；7为季度）
 * addnum:日期相加的数量
 * 返回日期格式为：yyyy-mm-dd hh:mm:ss
 */

function setMrsigndate(beobj,types,addtype,addnum)
{
var dt=new Date();
var begintime,begintime1,endtime1;
var months;
months=dt.getMonth()+1;
begintime=dt.getFullYear()+"-"+months+"-"+dt.getDate()+" "+dt.getHours()+":"+dt.getMinutes()+":"+dt.getSeconds();
begintime1=dt.getFullYear()+"/"+months+"/"+dt.getDate()+" "+dt.getHours()+":"+dt.getMinutes()+":"+dt.getSeconds();
if(document.all(beobj).value=="" )
{
	if(types=="1")
	{
	document.all(beobj).value=begintime;
	}
	else
	{
		endtime1=addDate(addtype,addnum,begintime1);
		document.all(beobj).value=endtime1;
	}
}
}
/**
 * 设置默认时间
 * beobj:为开始时间对象名
 * entobj:为结束时间对象名
 * addtype:日期相加类型（1为秒；2为分；3为小时；4为天；5为月；6为年；7为季度）
 * addnum:日期相加的数量
 * 返回日期格式为：yyyy-mm-dd hh:mm:ss
 */

function setMrdate(beobj,entobj,addtype,addnum)
{
var dt=new Date();
var begintime,begintime1,endtime1;
var months;
months=dt.getMonth()+1;
begintime=dt.getFullYear()+"-"+months+"-"+dt.getDate()+" "+dt.getHours()+":"+dt.getMinutes()+":"+dt.getSeconds();
begintime1=dt.getFullYear()+"/"+months+"/"+dt.getDate()+" "+dt.getHours()+":"+dt.getMinutes()+":"+dt.getSeconds();
if(document.all(beobj).value=="")
{
	document.all(beobj).value=begintime;
}
endtime1=addDate(addtype,addnum,begintime1);
if(document.all(entobj).value=="")
{
	document.all(entobj).value=endtime1;
}
}
/**
 * 设置默认日期
 * beobj:为开始时间对象名
 * entobj:为结束时间对象名
 * addtype:日期相加类型（1为秒；2为分；3为小时；4为天；5为月；6为年；7为季度）
 * addnum:日期相加的数量
 * 返回日期格式为：yyyy-mm-dd
 */

function setMrdated(beobj,entobj,addtype,addnum)
{
var dt=new Date();
var begintime,begintime1,endtime1;
var months;
months=dt.getMonth()+1;
if(months<10)
	months="0"+months;
var days=dt.getDate()
if(days<10)
	days="0"+days;
begintime=dt.getFullYear()+"-"+months+"-"+days;
begintime1=dt.getFullYear()+"/"+months+"/"+days;
if(document.all(beobj).value=="")
{
	document.all(beobj).value=begintime;
}
endtime1=addDated(addtype,addnum,begintime1);
if(document.all(entobj).value=="")
{
	document.all(entobj).value=endtime1;
}
}
/**
 * 日期相加方法
 * type:日期相加类型（1为秒；2为分；3为小时；4为天；5为月；6为年；7为季度）
 * Numtype:日期相加的数量
 * dtDate:日期相加的源时间，格式为:yyyy/mm/dd hh:mm:ss,例如：2004/12/1 00:00:00
 * 返回日期格式为：yyyy-mm-dd hh:mm:ss
 */
function addDate(type,NumDay,dtDate){
 var date = new Date(dtDate)
 type = parseInt(type) //类型 
 lIntval = parseInt(NumDay)//间隔
  switch(type){
   case 6 ://年
  date.setYear(date.getYear() + lIntval)
  break;
 case 7 ://季度
  date.setMonth(date.getMonth() + (lIntval * 3) )
  break;
 case 5 ://月
  date.setMonth(date.getMonth() + lIntval)
  break;
 case 4 ://天
  date.setDate(date.getDate() + lIntval)
  break
 case 3 ://时
  date.setHours(date.getHours() + lIntval)
  break
 case 2 ://分
  date.setMinutes(date.getMinutes() + lIntval)
  break
 case 1 ://秒
  date.setSeconds(date.getSeconds() + lIntval)
  break;
 default:
    
  } 
  var monthss;
monthss=date.getMonth()+1;
if(monthss<10)
	monthss="0"+monthss;
var dayss=date.getDate()
if(dayss<10)
	dayss="0"+dayss;
 return date.getYear() +'-' +  monthss + '-' +dayss+ ' '+ date.getHours()+':'+date.getMinutes()+':'+date.getSeconds()
  }
  
  /**
 * 日期相加方法
 * type:日期相加类型（1为秒；2为分；3为小时；4为天；5为月；6为年；7为季度）
 * Numtype:日期相加的数量
 * dtDate:日期相加的源时间，格式为:yyyy/mm/dd hh:mm:ss,例如：2004/12/1 00:00:00
 * 返回日期格式为：yyyy-mm-dd
 */
function addDated(type,NumDay,dtDate){
 var date = new Date(dtDate)
 type = parseInt(type) //类型 
 lIntval = parseInt(NumDay)//间隔
  switch(type){
   case 6 ://年
  date.setYear(date.getYear() + lIntval)
  break;
 case 7 ://季度
  date.setMonth(date.getMonth() + (lIntval * 3) )
  break;
 case 5 ://月
  date.setMonth(date.getMonth() + lIntval)
  break;
 case 4 ://天
  date.setDate(date.getDate() + lIntval)
  break
 case 3 ://时
  date.setHours(date.getHours() + lIntval)
  break
 case 2 ://分
  date.setMinutes(date.getMinutes() + lIntval)
  break
 case 1 ://秒
  date.setSeconds(date.getSeconds() + lIntval)
  break;
 default:
    
  } 
    var monthss;
monthss=date.getMonth()+1;
if(monthss<10)
	monthss="0"+monthss;
var dayss=date.getDate()
if(dayss<10)
	dayss="0"+dayss;
 return date.getYear() +'-' +  monthss + '-' +dayss
  }
 /**
   * 设置默认值
   */
function setSelectValue(widget,value){
    //设置默认值
    var selObj=document.getElementById(widget);
    selObj.value=value;
	var targetObj=document.getElementById("rightSelects");
	var values=value.split(",");
	for (var i=0;i<values.length;i++) {
		targetObj.options.add(new Option(values[i],values[i]),i);
		targetObj.options[i].selected=true;
	}
}
/**
 * add by wangsht
 * 判断文本域或文本框的长度
 * controlId:控件名称
 * stringLen:控件输入的最大字节数
 */
function isLenCheck (controlId,stringLen)
{
	var cvalue=getStrActualLen(document.getElementById(controlId).value);
	if (cvalue>stringLen)
	{
	alert("长度超过限制"+stringLen+"个字符！");
	document.getElementById(controlId).focus();
	return false;
	}
}
/**
 * add by wangsht
 * 获取给字符串的长度，其中，如果是汉字时，则为两个字节
 */
function getStrActualLen(sChars){
    return sChars.replace(/[^\x00-\xff]/g,"xxx").length;
}
/**
 * 判断两个yyyy-mm-dd hh:mm:ss时间的大小
 */
function comptime(beginTime,endTime,bename,endname){ 
var beginTimes=beginTime.substring(0,10).split('-');
var endTimes=endTime.substring(0,10).split('-');

beginTime=beginTimes[1]+'-'+beginTimes[2]+'-'+beginTimes[0]+' '+beginTime.substring(10,19);
endTime=endTimes[1]+'-'+endTimes[2]+'-'+endTimes[0]+' '+endTime.substring(10,19);
//alert(beginTime);
//alert(Date.parse(endTime));
//alert(Date.parse(beginTime)); 
var a =(Date.parse(endTime)-Date.parse(beginTime))/3600/1000;
if(a<0){
alert(endname+"不能小于等于"+bename+"！");
return false;
}else if (a>=0){
	return true;
}else{
alert(endname+"或者"+bename+"输入日期格式不对，请重新输入！");
return false;
}
}
/**
 * 判断两个yyyy-mm-dd的大小
 */
function compare_time(beginDate,endDate,bename,endname) {
   var arr=beginDate.split("-");
   var starttime=new Date(arr[0],arr[1],arr[2]);
   var starttimes=starttime.getTime(); 
   var arrs=endDate.split("-"); 
   var endtime=new Date(arrs[0],arrs[1],arrs[2]);
   var endtimes=endtime.getTime();
   if(starttimes>endtimes)//开始大于结束
   {
     alert(endname+"不能小于等于"+bename+"！");
     return false;
   } 
   else{ 
    return true; 
   }
} 

