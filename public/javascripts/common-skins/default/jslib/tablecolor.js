/********************************************************************
 *功能：将一个table的样式进行更改。
 *      1:将table的class改为tableClass
 *      2:将第一行题头的class改为titleClass
 *      3:其他行以n递增,将其class交替设置为rowClassOne和rowClassTwo
 *注意：如果titleClass为空，则表示该表格没有题头，所有行以n递增，
 *      交替使用rowClassOne和rowClassTwo
 *******************************************************************/
function renderTable(tableId,tableClass,titleClass,rowClassOne,rowClassTwo,n)
{
	var table = eval("window." + tableId);
	
	if(!table)
		return false;
		
	var rowNum=table.rows.length;
	if(rowNum<=0)
		return false;
		
	if(tableClass!=null && tableClass!="")
		table.className = tableClass;
	
	//有titleClass则从第1行开始交替显示颜色,否则从第0行开始	
	var from=0;
	if(titleClass!=null && titleClass!="")
	{
		from=1;	
		table.rows[0].className = titleClass;
	}
	for(var i=0;i<=rowNum;i=i+n)
	{
		var rowClass;
		if((i/n)%2==0)
		{
			rowClass = rowClassOne;
		}else{
			rowClass = rowClassTwo;
		}
		
		if(rowClass!=null && rowClass!="")
		{
			for(var j=from;j<(n+from);j++)
			{	
				if((i+j)<rowNum)
					table.rows[i+j].className = rowClass;
			}	
		}
	}
	return true;
}


