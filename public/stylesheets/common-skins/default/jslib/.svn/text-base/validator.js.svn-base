var PatternsDict = new Object();
　PatternsDict.charType = /^(.*\s*)*$/;
　PatternsDict.varcharType = /^(.*\s*)*$/;
  PatternsDict.integerType = /^\d+$/;
  PatternsDict.dateType = /^\d{4}-\d{1,2}-\d{1,2}$/;
  PatternsDict.datetimeType = /^\d{4}-\d{1,2}-\d{1,2}\s\d{1,2}:\d{1,2}:\d{1,2}$/;

　function validateForm(theForm){// 若验证通过则返回true
　 var Arr = theForm.elements; // 将表单中的所有元素放入数组
　 for(var i = 0; i < Arr.length; i++)
　  with(Arr[i]){              // 对于表单中的每一个元素...
　   var nullable = Arr[i].validatorNullable;
     var validator = Arr[i].validator; // 获取其validator属性
     var msg='';
     if (validator=='integerType') msg='必须是正整数';
     if (validator=='charType') msg='必须是字符串';
     if (validator=='varcharType') msg='必须是字符串';
     if (validator=='dateType') msg='必须是日期格式,如\"2004-10-01\"';
     if (validator=='datetimeType') msg='必须是日期时间格式,如\"2004-10-01 10:00:00\"';
     var label=Arr[i].validatorLabel;
　   if(!validator) continue;            // 如果该属性不存在,忽略当前元素
     if (nullable=='false'){
        if (value=='') {
          Arr[i].focus();
          alert(label+'不能为空!');
          return false;
     }}
     else if (value==''){continue};

　   var thePat = PatternsDict[validator];   // 选择验证用的正则表达式
　   var gotIt = thePat.exec(value); // 用正则表达式验证elArr[i]的值
　   if(!gotIt){
          Arr[i].focus();
　    alert(validatorLabel+msg); 
	return false;
     }
　  } return true;
　 }