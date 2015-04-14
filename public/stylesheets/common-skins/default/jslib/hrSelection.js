/**
 * fxtree树
 * @param itemName:人员选择标签的name属性值：如"creator"   <inpur type='text' name='creator' ...>
 * @param url：格式    ......?category=***&model=****
 * @param winType: 0 代表radio； 1 代表checkbox
 * @return
 */
function selectRes(itemName,url,winType){
//	alert("进入js:"+itemName+'|'+url);
	url=url+"&itemName="+itemName+"&winType="+winType;
	url=encodeURI(url);
	window.showModalDialog(url,window,"dialogWidth=350px;dialogHeight=400px;status:yes;resizable:yes");
	//window.open(url);
}

/**
 * 
 *选择节点后给标签赋值
 * @param itemName:人员选择标签的name属性值 :如"creator"   <inpur type='text' name='creator' ...>
 * @param key：选择后得到的人员id   
 * @param value：选择后得到的人员name
 * @param winType: 0 代表radio； 1 代表checkbox
 * @return
 */
function getSelectValues(itemName,key,value,winType){
	//alert("赋值"+key+"|"+value);
	 var id;
//	 alert(winType);
	if(winType==1){
		var ks = new Array();
		var keyValues=key.split(",");
		for(var i=0;i<keyValues.length;i++){
			if(keyValues[i].split("-").length>1)
				ks[ks.length]=keyValues[i].split("-")[1];
			else
				ks[ks.length]=keyValues[i];
		}
		id=ks.toString();
		id=","+id+",";
	}else
        if(key.split("-").length>1)
        	id=key.split("-")[1];
//	alert(id);
	if(document.getElementsByName(itemName+"Id")[0]){
		//alert("ID");
	    document.getElementsByName(itemName+"Id")[0].value=id;
	}else if(document.getElementsByName(itemName+"id")[0]){
		//alert("id");
		document.getElementsByName(itemName+"id")[0].value=id;
	}
	document.getElementsByName(itemName)[0].value=value;
}
 
 /**
  * 
  *选择节点后给标签赋值（带电话号码）,电话号码用括号包括
  * @param itemName:人员选择标签的name属性值 :如"creator"   <inpur type='text' name='creator' ...>
  * @param key：选择后得到的人员id   
  * @param value：选择后得到的人员name
  * @param winType: 0 代表radio； 1 代表checkbox
  * @return
  */
 function getSelectValuesWithMobile(itemName,key,value,winType){
 	//alert("赋值"+key+"|"+value);
 	 var id;
// 	 alert(winType);
 	if(winType==1){
 		//处理key
 		var ks = new Array();
 		var keyValues=key.split(",");
 		for(var i=0;i<keyValues.length;i++){
 			if(keyValues[i].split("-").length>1)
 				ks[ks.length]=keyValues[i].split("-")[1];
 			else
 				ks[ks.length]=keyValues[i];
 		}
 		id=ks.toString();
// 		id=","+id+",";
 		//处理value
 		var vs=new Array();
 		var values=value.split(",");
 		for(var j=0;j<values.length;j++){
 			if(values[j].split("(").length>1)
 				vs[vs.length]=values[j].split("(")[1].substring(0,values[j].split("(")[1].length-1);
 			else
 				vs[vs.length]=values[j];
 		}
 		value=vs.toString();
 		
 	}else{
         if(key.split("-").length>1)
         	id=key.split("-")[1];
         if(value.split("(").length>1)
        	 value=value.split("(")[1].substring(0,value.split("(")[1].length-1);
 	}
// 	alert(id);
 	if(document.getElementsByName(itemName+"Id")[0]){
 		//alert("ID");
 	    document.getElementsByName(itemName+"Id")[0].value=id;
 	}else if(document.getElementsByName(itemName+"id")[0]){
 		//alert("id");
 		document.getElementsByName(itemName+"id")[0].value=id;
 	}
 	document.getElementsByName(itemName)[0].value=value;
 }
 /**
  * 
  * 点击节点时的动作
  * @param key : 节点key值
  * @return
  */
 function showDetail(key){
//	 alert(key);
 }