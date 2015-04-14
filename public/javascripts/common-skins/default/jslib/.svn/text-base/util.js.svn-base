/***********************************************************
*函数名:selectAll
*参数:form名,checkbox名,是否选中
*功能:该函数用于将指定from中的指定checkbox进行全选和取消全选
***********************************************************/
function selectAll(formName,chkName,chked)
{
	var f = eval("document."+formName+"."+chkName);
	 //判断checkbox的长度如果是1不进行for循环直接处理
	if(f.length==undefined)
	{
			if(f!=undefined) f.checked=chked;
	}
	else
	{
		 for (i=0;i<f.length;i++) f[i].checked =chked;
	} 
}

/***********************************************************
*函数名:checkRange
*参数:form名,input名,最大长度,提示替换信息
*功能:该函数用于将指定from中的指定input进行不为空和最大长度判断
***********************************************************/
function checkRange(formName,inputName,maxLen,msg)
{
	var v = eval("document."+formName+"."+inputName);
	if(v==undefined) 
	{
		alert("未定义"+msg);
		return false;
	}
	else if(v.value.length==0)
	{
		alert(msg+"不能为空");
		return false;
	}
	else
	{	
		if(maxLen<0)
		{
			//maxLen小于0则不判断
			return true;
		}
		else if(v.value.length>maxLen)
		{
			alert(msg+"长度必须小于"+maxLen+"个字符");
			return false;
		}
	}
	return true;
}
/***********************************************************
*函数名:canModify
*参数:form名,checkBox名,提示替换信息
*功能:该函数用于判断指定from中的指定checkBox是否只选中了一个
***********************************************************/
function canModify(formName,checkBoxName,msg)
{	
	var v = eval("document."+formName+"."+checkBoxName);

	if(v==undefined)
	{
		alert("没有可修改的"+msg);
		return false;
	}
	else if(v.checked)	
	{	
		//只有一个checkbox的时候
		return true;
	}
	else
	{	
		//有多个checkbox的时候
		var count=0;
		for(i=0;i<v.length;i++)
		{
			if(v[i].checked) count++;
		}
		
		if(count==0)
		{
			alert("请选中一个要修改的"+msg);
			return false;
		}
		else if(count>1)
		{
			alert("每次只能修改一个"+msg);
			return false;
		}
		else
		{
			return true;
		}
	}
}

/***********************************************************
*函数名:canDelete
*参数:form名,checkBox名,提示替换信息
*功能:该函数用于判断指定from中的指定checkBox是否选中了
***********************************************************/
function canDelete(formName,checkBoxName,msg)
{	
	var v = eval("document."+formName+"."+checkBoxName);

	if(v==undefined)
	{
		alert("没有可删除的"+msg);
		return false;
	}
	else if(v.checked)	
	{	
		//只有一个checkbox的时候
		return true;
	}
	else
	{	
		//有多个checkbox的时候
		var count=0;
		for(i=0;i<v.length;i++)
		{
			if(v[i].checked) count++;
		}
		
		if(count==0)
		{
			alert("请选中要删除的"+msg);
			return false;
		}
		else
		{
			return true;
		}
	}
}

/***********************************************************
*函数名:showNeTree
*参数:web应用的rooturl，输入框名,网元类型,是否所有的节点都有checkbox)
*功能:该函数用于打开网元树选择窗口
***********************************************************/
function showNeTree(rootUrl,objName,neType,fullTree)
{
	if(fullTree == undefined) fullTree = false;
	url = rootUrl+"/pgroup/neTree.jsp?obj_name="+objName+"&neType="+neType+"&fullTree="+fullTree;
	window.showModalDialog(url,window,"dialogWidth:350px;help=no;");
}
/***********************************************************
*函数名:showNeGroupTree
*参数:web应用的rooturl，输入框名，网元类型
*功能:该函数用于打开网元树选择窗口
***********************************************************/
function showNeGroupTree(rootUrl,objName,neType)
{	
	url = rootUrl+"/pgroup/neGroupTree.jsp?obj_name="+objName+"&neType="+neType;
	window.showModalDialog(url,window,"dialogWidth:350px");
}

/***********************************************************
*函数名:showParTree
*参数:web应用的rooturl，网元类型，输入框名
*功能:该函数用于打开参数树选择窗口
***********************************************************/
function showParTree(rootUrl,neType,objName)
{
	url = rootUrl+"/pgroup/pTree.jsp?obj_name="+objName+"&neType="+neType;
	window.showModalDialog(url,window,"dialogWidth:350px");
}