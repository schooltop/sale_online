


/**
 * xuanze bumen keyi yongyu xuanze juti de lianxi ren 
 */
function selectCont(widgetName,checkType,userid,organWidget, shortName){
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
  var url="contact_help.cmd?method=getSelectRoot&organType=2&isCheckBox="+checkType+"&isIncludeSelf=1&isTree=1&showOrganType=1,2&organId="+organId+"&userid="+userid;
  //url???organType=2????????????????????????organType=1???????????????????????????organType=8?????????????????????
  var obj = showModalDialog(url,window,'dialogWidth:500px;dialogHeight:600px;status:no;scroll:yes');
  var names,ids;
  if(obj!=null){
  		var widget = document.all(widgetName);
  		//alert(widget.tagName);
	  if(widget.tagName == 'SELECT'){//SELECT???????????????????????????????????????ID
	  		var nameWidget = document.all(widgetName.substring(0, widgetName.length - 2));
  			nameWidget.value = "";
	  		widget.options.length = 0;
	  		document.all(widgetName).value="";
	   		document.all(widgetName + "Id").value="";
	  		for (var i = 0; i < obj.length; i++) {
				var option = widget.options.length;
				widget.options[option] = new Option(obj[i]["root-text"]+"-"+obj[i]["display-str"].split("_")[0], obj[i]["primary-value"]);
				widget.options[option].selected = true;
				if(widget.multiple){
					nameWidget.value += "," + obj[i]["root-text"]+"-"+obj[i]["display-str"].split("_")[0];
				}else{
					nameWidget.value = "," + obj[i]["root-text"]+"-"+ obj[i]["display-str"].split("_")[0];
				}
				
			}
			if(nameWidget.value.length > 0)
				nameWidget.value = nameWidget.value.substring(1);
	   }else{
	   		var widgetId = document.all(widgetName + "Id");
	   		document.all(widgetName).value="";
	   		document.all(widgetName + "Id").value="";
		   for(var i= 0 ; i<obj.length ;i++){
		   	
		       if(i==0){
		       		if(obj[i]["root-text"] && !shortName){
		       			names = obj[i]["root-text"]+"-"+obj[i]["display-str"].split("_")[0];
		       		}else{
		       			names = obj[i]["display-str"].split("_")[0];
		       		}
		            ids=obj[i]["primary-value"];
		            continue;
		       }
		       //if(shortName){
		       	names+=","+obj[i]["display-str"].split("_")[0];
		       	//alert(names);
		      // }else{
		       //	names+=","+obj[i]["root-text"]+"-"+obj[i]["display-str"];
		      // }
		       ids+=","+obj[i]["primary-value"];
		   }
		   //??????????????????????????????
		   if(typeof(names)=='undefined')names=widget.value;
		   if(typeof(ids)=='undefined')ids=widgetId.value;
		   //??????ID,??????????????????
		   if(widgetId.value!=''&&typeof(obj)=='object'&&checkType=='1')
		   		widgetId.value=ids;
		   else if(typeof(obj)=='string')
		   		widgetId.value="";
		   else 
		   		widgetId.value=ids;
		   //??????Name
		   if(widget.value!=''&&typeof(obj)=='object'&&checkType=='1')
		   		widget.value=names;
		   else if(typeof(obj)=='string')
		   		widget.value="";
		   else
		   		widget.value=names;
		   //???????
		   //var ss = widget.value..split("_");
		   //widget.value= ss[0];
		   if(widgetId.onchange)
    			widgetId.onchange();
	   }
  }
}




function selectGroup(widgetName,checkType,userid,organWidget){
	
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
   var url="contact_help.cmd?method=getAllComs&organType=1&isCheckBox="+checkType+"&showOrganType=1&organId="+organId+"&userid="+userid;
   var obj = showModalDialog(url,window,'dialogWidth:500px;dialogHeight:600px;status:no;scroll:yes');
   var names,ids;
   if(obj!=null){
   	document.all(widgetName).value="";
   	document.all(widgetName + "Id").value="";
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
  //??????????????????????????????
   if(typeof(names)=='undefined')names=document.all(widgetName).value;
   if(typeof(ids)=='undefined')ids=document.all(widgetName+"Id").value;
   //??????id
     //add begin code by wangsht  at 2008-7-22
   //??????????????????????????????????????????????????????
      var newids="",newnames="";//??????????????????????????????
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
   								newids=newids;
   								newnames=newnames;
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
   			//?????????????????????????????????
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
    //??????name
   if(document.all(widgetName).value!=''&&typeof(obj)=='object'&&checkType=='1')
   {
   		//modify by wangsht at 2008-7-22
   		//?????????????????????????????????
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