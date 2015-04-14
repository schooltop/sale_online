/**
 * 在两个多选框之间进行数据移动。
 **/
 /*
  * 移动src控件中的数据到tgt控件中
  * 1.	src:		源控件，从该控件中提取数据；
  * 2.	tgt:		目标控件，插入数据到该控件中；
  * 3.	all:		true->将控件中的数据全部移动;false->只移动选中的数据;
  * 4.	copy:		true->保留源控件的数据;false->删除源控件的数据;
  * 4.	callback:	回调函数，在移动数据后可能还需要进行一些其他的工作，可以传递一个函数进行处理。
  * 				参数和本函数基本相同，不同之处在于callback参数该成了options（移动的数据项数组）。
  */
function moveSelected(src, tgt, all, copy, callback) {
	if(src&&tgt){
		var options=new Array();
		if(all){
			for(var i=src.length-1;i>=0;i--){
				options[options.length]=moveOption(src,i,tgt,copy);
			}
		}else{
			for(var i=src.length-1;i>=0;i--){
				if(src.options[i].selected){
					options[options.length]=moveOption(src,i,tgt,copy);
				}
			}
		}
		if(callback){
			callback(src,tgt,all,copy,options);
		}
	}else{
		window.alert("please check "+src+" or "+tgt);
	}
}
/*
 * move option(srcIndex of src) from src to tgt, and return option.
 */
function moveOption(src,srcIndex,tgt,copy){
	var srcOption=src.options[srcIndex];
	//don't put srcOption into tgt.options.
	var option=new Option(srcOption.text,srcOption.value);
	tgt.options[tgt.length]=option;
	if(!copy)
		src.options[srcIndex] = null;
	return option;
}