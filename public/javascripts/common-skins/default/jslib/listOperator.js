//<script type="text/javascript"> 
/*
	var f = document.getElementById("f"); 
	
	//获得select列表项数目 
	document.write(f.s.options.length); 
	document.write(f.s.length); 
	
	//当前选中项的下标(从0 开始)（有两种方法） 
	//如果选择了多项，则返回第一个选中项的下标 
	document.write(f.s.options.selectedIndex); 
	document.write(f.s.selectedIndex); 
	
	//检测某一项是否被选中 
	document.write(f.s.options[0].selected); 
	
	//获得某一项的值和文字 
	document.write(f.s.options[0].value); 
	document.write(f.s.options[1].text); 
	
	//删除某一项 
	f.s.options[1] = null; 
	
	//追加一项 
	f.s.options[f.s.options.length] = new Option("追加的text", "追加的value"); 
	
	//更改一项 
	f.s.options[1] = new Option("更改的text", "更改的value"); 
	//也可以直接设置该项的 text 和 value 
*/
//</script> 


//全选列表中的项 
function SelectAllOption(list) 
{ 
	for (var i=0; i<list.options.length; i++) 
	{ 
		list.options[i].selected = true; 
	} 
} 


//反选列表中的项 
function DeSelectOptions(list) 
{ 
	for (var i=0; i<list.options.length; i++) 
	{ 
		list.options[i].selected = !list.options[i].selected; 
	} 
} 


//返回列表中选择项数目 
function GetSelectedOptionsCnt(list) 
{ 
	var cnt = 0; 
	var i = 0; 
	for (i=0; i<list.options.length; i++) 
	{ 
		if (list.options[i].selected) 
		{ 
			cnt++; 
		} 
	} 
	return cnt; 
} 


//清空列表 
function ClearList(list) 
{ 
	while (list.options.length > 0) 
	{ 
		list.options[0] = null; 
	} 
} 


//删除列表选中项 
//返回删除项的数量 
function DelSelectedOptions(list) 
{ 
	var i = 0; 
	var deletedCnt = 0; 
	while (i < list.options.length) 
	{ 
		if (list.options[i].selected) 
		{ 
			list.options[i] = null; 
			deletedCnt++; 
		}
		else 
		{ 
			i++; 
		} 
	} 
	
	return deletedCnt; 
} 
//此函数查找相应的项是否存在 
//repeatCheck是否进行重复性检查 
//若为"v"，按值进行重复值检查 
//若为"t"，按文字进行重复值检查 
//若为"vt"，按值和文字进行重复值检查 
//其它值，不进行重复性检查，返回false 
function OptionExists(list, optText, optValue, repeatCheck) 
{ 
	var i = 0; 
	var find = false; 
	
	if (repeatCheck == "v") 
	{ 
		//按值进行重复值检查 
		for (i=0; i<list.options.length; i++) 
		{ 
			if (list.options[i].value == optValue) 
			{ 
				find = true; 
				break; 
			} 
		} 
	} 
	else if (repeatCheck == "t") 
	{ 
		//按文字进行重复检查 
		for (i=0; i<list.options.length; i++) 
		{ 
			if (list.options[i].text == optText) 
			{ 
				find = true; 
				break; 
			} 
		} 
	} 
	else if (repeatCheck == "vt") 
	{ 
		//按值和文字进行重复检查 
		for (i=0; i<list.options.length; i++) 
		{ 
			if ((list.options[i].value == optValue) && (list.options[i].text == optText)) 
			{ 
				find = true; 
				break; 
			} 
		} 
	} 
	return find; 
} 


//向列表中追加一个项 
//list 是要追加的列表 
//optText 和 optValue 分别表示项的文字和值 
//repeatCheck 是否进行重复性检查，参见 OptionExists 
//添加成功返回 true，失败返回 false 
function AppendOption(list, optText, optValue, repeatCheck) 
{ 
	if (!OptionExists(list, optText, optValue, repeatCheck)) 
	{ 
		list.options[list.options.length] = new Option(optText, optValue); 
		//alert(list.options[list.options.length-1].value);
		list.options[list.options.length-1].selected="true";
		return true; 
	} 
	else 
	{ 
		return false; 
	} 
} 


//插入项 
//index 插入位置，当插入位置 >= 列表现有项数量时，其作用相当于不进行重复检查的追加项 
//optText 和 optValue 分别表示项的文字和值 
function InsertOption(list, index, optText, optValue) 
{ 
	var i = 0; 
	for (i=list.options.length; i>index; i--) 
	{ 
		list.options[i] = new Option(list.options[i-1].text, list.options[i-1].value); 
	} 
	
	list.options[index] = new Option(optText, optValue); 
} 
//将一个列表中的项导到另一个列表中 
//repeatCheck是否进行重复性检查，参见OptionExists 
//deleteSource项导到目标后，是否删除源列表中的项 
//返回影响的项数量 
function ListToList(sList, dList, repeatCheck, deleteSource) 
{ 
	//所影响的行数 
	var lines = 0; 
	var i = 0; 
	while (i<sList.options.length) 
	{ 
		if (sList.options[i].selected && AppendOption(dList, sList.options[i].text, sList.options[i].value, repeatCheck)) 
		{ 
			//添加成功 
			lines++; 
			if (deleteSource) 
			{ 
				//删除源列表中的项 
				sList.options[i] = null; 
			} 
			else 
			{ 
				i++; 
			} 
		} 
		else 
		{ 
			i++; 
		} 
	} 
	return lines; 
} 


//列表中选中项上移 
function MoveSelectedOptionsUp(list) 
{ 
	var i = 0; 
	var value = ""; 
	var text = ""; 
	for (i=0; i<(list.options.length-1); i++) 
	{ 
		if (!list.options[i].selected && list.options[i+1].selected) 
		{ 
			value = list.options[i].value; 
			text = list.options[i].text; 
			list.options[i] = new Option(list.options[i+1].text, list.options[i+1].value); 
			list.options[i].selected = true; 
			list.options[i+1] = new Option(text, value); 
		} 
	} 
} 


//列表中选中项下移 
function MoveSelectedOptionsDown(list) 
{ 
	var i = 0; 
	var value = ""; 
	var text = ""; 
	for (i=list.options.length-1; i>0; i--) 
	{ 
		if (!list.options[i].selected && list.options[i-1].selected) 
		{ 
			value = list.options[i].value; 
			text = list.options[i].text; 
			list.options[i] = new Option(list.options[i-1].text, list.options[i-1].value); 
			list.options[i].selected = true; 
			list.options[i-1] = new Option(text, value); 
		} 
	} 
} 

