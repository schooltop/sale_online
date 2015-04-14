
	//点击调度信息按钮时调用
	function showWindow2(){
		lhgdialog.opendlg("样本选择", "/wlfx/jsp/task/addInvokeTime.jsp?showTimeText=_invockTime&submitTimeText=invockTime&taskCycleName=taskCycleName", 600, 300, true);
	}

	function tmClick(){
		
		
		
		var time = event.srcElement.value;

		if($("invockTime").value!=""){
			var arr = $("invockTime").value.split(" ");
			arr[1] = arr[1].replace(/(\d+)(\/\d+)?/, "$1/"+time);
			$("invockTime").value = arr.join(" ");
			
			if(time=="5")
			{
				$("taskCycleName").value = $("taskCycleName").value + "每5分钟触发";
			}else if(time=="15")
			{
				$("taskCycleName").value = $("taskCycleName").value + "每15分钟触发";
			}else if(time=="30")
			{
				$("taskCycleName").value = $("taskCycleName").value + "每30分钟触发";
			}
		}
	}