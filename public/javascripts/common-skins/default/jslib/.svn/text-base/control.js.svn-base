    function cancel(){
        if(window.opener){
            window.opener.document.forms[0].all.topbar1.style.display="";
        }
      window.close();
    }

    function showDeptUserDiv(objName,inputType,ctrlType,regionSign,deptSign,cancel_dept){
        //alert(ctrlType);
        if(ctrlType=="check"){
            if(regionSign!="undefined"&& deptSign!="undefined"&& regionSign==false && deptSign==false){
                window.showModalDialog("userDeptList_check.jsp?obj_name="+objName+"&input_type="+inputType+"&user=true",window,"dialogWidth:360px;dialogHeight:500px;status:no;scrollBars:no;Resizeable:yes");
            }else {
                window.showModalDialog("deptList.jsp?obj_name="+objName+"&input_type="+inputType+"&sign="+ctrlType+"&region="+regionSign+"&dept="+deptSign,window,"dialogWidth:360px;dialogHeight:500px;status:no;scrollBars:no;Resizeable:yes");
            }
        } else if(ctrlType=="next_check"){
            if(regionSign!="undefined"&& deptSign!="undefined"&& regionSign==false && deptSign==false){
                window.showModalDialog("userDeptList_next_check.jsp?obj_name="+objName+"&input_type="+inputType+"&user=true",window,"dialogWidth:360px;dialogHeight:500px;status:no;scrollBars:no;Resizeable:yes");
            }else {
                window.showModalDialog("deptList.jsp?obj_name="+objName+"&input_type="+inputType+"&sign="+ctrlType+"&region="+regionSign+"&dept="+deptSign,window,"dialogWidth:360px;dialogHeight:500px;status:no;scrollBars:no;Resizeable:yes");
            }
        } else {
            if(regionSign!="undefined"&& deptSign!="undefined"&& regionSign==false && deptSign==false){
                //alert(objName);   accept_man
                //alert(inputType);
                window.showModalDialog("userDeptList.jsp?obj_name="+objName+"&input_type="+inputType+"&user=true",window,"dialogWidth:360px;dialogHeight:500px;status:no;scrollBars:no;Resizeable:yes");
            }else {
    //            window.showModalDialog("deptList.jsp?obj_name="+objName+"&input_type="+inputType+"&sign="+ctrlType+"&region="+regionSign+"&dept="+deptSign+"&canceldept="+cancel_dept,window,"dialogWidth:360px;dialogHeight:500px;status:no;scrollBars:no;Resizeable:yes");
                window.showModalDialog("deptList.jsp?obj_name="+objName+"&input_type="+inputType+"&sign="+ctrlType+"&region="+regionSign+"&dept="+deptSign,window,"dialogWidth:360px;dialogHeight:500px;status:no;scrollBars:no;Resizeable:yes");
            }
        }
    }

  function validate(){
    if ((document.forms[0].ispass) && (actionid==5) && (formtype!=1)){
        if ((timelmt!="")){
            if ((timelmt<document.forms[0].now_time.value) && document.forms[0].ispass.checked){
                alert("ï¿½ï¿½ï¿½ï¿½Òªï¿½ï¿½ï¿½ï¿½ï¿½Ê±ï¿½ï¿½ï¿½Ñ¾ï¿½Ð¡ï¿½Úµï¿½Ç°Ê±ï¿½ä£?ï¿½ï¿½ï¿½Ë»Ø¸ï¿½ï¿½Éµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Â·ï¿½ï¿½ï¿½ï¿½ï¿½");
                document.forms[0].ispass.focus();
                return false;
            }
        }
    }
    if((formtype==1)&&(actionid==13)){
        if (document.forms[0].task_end_time) {
            if(document.forms[0].task_end_time.value!=""){
                if(document.forms[0].task_end_time.value>document.forms[0].now_time.value){
                    alert("ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ê±ï¿½ï¿½ï¿½ï¿½ï¿½Ð¡ï¿½Úµï¿½ï¿½Úµï¿½Ç°Ê±ï¿½ï¿½!");
                    document.forms[0].task_end_time.focus();
                    return false;
                } else if (document.forms[0].task_end_time.value<=starttime) {
                    alert("ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ê±ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ú¹ï¿½ï¿½Ï·ï¿½ï¿½ï¿½Ê±ï¿½ï¿?!");
                    document.forms[0].task_end_time.focus();
                    return false;
                }
            }
        }
    } else if (actionid==13) {
        if (document.forms[0].task_end_time) {
            if(document.forms[0].task_end_time.value!=""){
                if(document.forms[0].task_end_time.value>document.forms[0].now_time.value){
                    alert("ï¿½ï¿½ï¿½Ê±ï¿½ï¿½ï¿½ï¿½ï¿½Ð¡ï¿½Úµï¿½ï¿½Úµï¿½Ç°Ê±ï¿½ï¿½!");
                    document.forms[0].task_end_time.focus();
                    return false;
                } else if (document.forms[0].task_end_time.value<=starttime) {
                    alert("ï¿½ï¿½ï¿½Ê±ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ú¿ï¿½Ê¼Ê±ï¿½ï¿?!");
                    document.forms[0].task_end_time.focus();
                    return false;
                }
            } else {
                alert("ï¿½ï¿½ï¿½ï¿½Ð´ï¿½ï¿½ï¿½Ê±ï¿½ï¿?");
                document.forms[0].task_end_time.focus();
                return false;
            }
        }
    }
    if((formtype==1)&&(actionid==20)&&(document.forms[0].satisfaction.value<="3")){
        if (document.forms[0].task_end_time) {
            if(document.forms[0].task_end_time.value==""){
                alert("ï¿½ï¿½ï¿½ï¿½Ð´ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ê±ï¿½ï¿?");
                document.forms[0].task_end_time.focus();
                return false;
            } else {
                if(document.forms[0].task_end_time.value>document.forms[0].now_time.value){
                    alert("ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ê±ï¿½ï¿½ï¿½ï¿½ï¿½Ð¡ï¿½Úµï¿½ï¿½Úµï¿½Ç°Ê±ï¿½ï¿½!");
                    document.forms[0].task_end_time.focus();
                    return false;
                } else if (document.forms[0].task_end_time.value<=starttime) {
                    alert("ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ê±ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ú¹ï¿½ï¿½Ï·ï¿½ï¿½ï¿½Ê±ï¿½ï¿?!");
                    document.forms[0].task_end_time.focus();
                    return false;
                }
            }
        }
    } else if ((actionid==20)&&(document.forms[0].satisfaction.value<="3")) {
        if (document.forms[0].task_end_time) {
            if(document.forms[0].task_end_time.value==""){
                alert("ï¿½ï¿½ï¿½ï¿½Ð´ï¿½ï¿½ï¿½Ê±ï¿½ï¿?");
                document.forms[0].task_end_time.focus();
                return false;
            } else {
                if(document.forms[0].task_end_time.value>document.forms[0].now_time.value){
                    alert("ï¿½ï¿½ï¿½Ê±ï¿½ï¿½ï¿½ï¿½ï¿½Ð¡ï¿½Úµï¿½ï¿½Úµï¿½Ç°Ê±ï¿½ï¿½!");
                    document.forms[0].task_end_time.focus();
                    return false;
                } else if (document.forms[0].task_end_time.value<=starttime) {
                    alert("ï¿½ï¿½ï¿½Ê±ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ú¿ï¿½Ê¼Ê±ï¿½ï¿?!");
                    document.forms[0].task_end_time.focus();
                    return false;
                }
            }
        }
    }

    if(actionid==31){
      if(document.forms[0].modi_info.value==""){
        alert("ï¿½ï¿½ï¿½ï¿½Ð´ï¿½Þ¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿?");
        document.forms[0].modi_info.focus();
        return false;
      }
      if(document.forms[0].modi_order.value==""){
        alert("ï¿½ï¿½ï¿½ï¿½Ð´ï¿½Þ¸ï¿½Ö¸ï¿½ï¿½");
        document.forms[0].modi_order.focus();
        return false;
      }
      if(document.forms[0].modi_log.value==""){
        alert("ï¿½ï¿½ï¿½ï¿½Ð´LOGï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿?");
        document.forms[0].modi_log.focus();
        return false;
      }
    }
    if(document.forms[0].accept_obj){
      if(document.forms[0].accept_obj.value==""){
         alert("ï¿½ï¿½Ñ¡ï¿½ï¿½"+proctypename+"ï¿½ï¿½ï¿½ï¿½");
         document.forms[0].accept_obj.onclick();
         return false;
      }
    }
    if(document.forms[0].finish_time){
        if(document.forms[0].finish_time.value==""){
            alert("ï¿½ï¿½ï¿½ï¿½Ð´ï¿½ï¿½ï¿½Ê±ï¿½ï¿?");
            document.forms[0].finish_time.onclick();
            return false;
        }
    }
    if(document.forms[0].proc_result){
        if(document.forms[0].proc_result.value==""){
            alert("ï¿½ï¿½ï¿½ï¿½Ð´ï¿½ï¿½ï¿½ï¿½/ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½");
            document.forms[0].proc_result.focus();
            return false;
        }
    }
    if(document.forms[0].memo){
        if(document.forms[0].memo.value==""){
        	if((actionid==20)&&(document.forms[0].satisfaction.value<="3")){
        	}else{
	            alert("ï¿½ï¿½ï¿½ï¿½Ð´Ëµï¿½ï¿½");
	            document.forms[0].memo.focus();
	            return false;
            }
        }
    }
    if (document.forms[0].ispass){
        if((actionid>50) && document.forms[0].ispass.checked && document.forms[0].check_obj){
          if(document.forms[0].check_obj.value==""){
             alert("ï¿½ï¿½Ñ¡ï¿½ï¿½ï¿½ï¿½Ë¶ï¿½ï¿½ï¿?");
             document.forms[0].check_obj.onclick();
             return false;
          }
        }
    }
    return true;
  }
  function saveProc(){
     document.forms[0].action=rootpath+"/procform.do?form_index="+formindex+"&form_flow_id="+formflowid+"&curr_proc_flow="+currprocflow+"&action="+actionid;
     document.forms[0].submit();
  }

  function showTimeWin(objName){
     window.showModalDialog(rootpath+"/ticketing/timeSelect.jsp?obj_name="+objName,window,"dialogWidth:300px;dialogHeight:270px;status:no;scrollBars:no;Resizeable:yes");
  }
  function init(){

    if(document.forms[0].all.accept_man_id){

        var temObj = document.forms[0].all.accept_man_id;
        var temOption = temObj.options[temObj.selectedIndex];
        //alert(temOption.address);
        document.forms[0].all.accept_man.value= temOption.text;
        document.forms[0].all.accept_man_address.value = temOption.address;
    }
  }
    function selectRegionRoleMembers(root_url,roles,inputType,objName,regions,deptId){
        if (regions) {
            //var returnValue = window.showModalDialog(root_url+"/common/include/orgSelectorTree.jsp?action=regionRoleMembersSelector&regionId=" + regions + "&roleId="+roles + "&selectType="+inputType,null,"dialogWidth:350px");
            var returnValue = window.showModalDialog(root_url+"/common/include/orgSelectorTabTree.jsp?regionId="+regions+"&deptIds="+deptId+"&selectType="+inputType +"&tabsDisplay=200",null,"dialogWidth:350px");
            if(returnValue!=null){
                var name = "";
                for(var i=1;i<returnValue.length;i++){
                    name += ","+returnValue[i].name ;
                }
                var obj = document.all[objName];
                if(name.length>0) name=name.substring(1);
                //alert(name);
                obj.value = name;
                var userstr = "";
                //var deptstr = "";
                //var regionstr = "";
                for(var i=1;i<returnValue.length;i++){
                    userstr += ","+returnValue[i].id ;
                    //deptstr += ","+returnValue[i].parentId ;
                    //regionstr += ","+returnValue[i].regionId ;
                }
                //alert(userstr);
                if(userstr.length>0) userstr=userstr.substring(1);
                //if(regionstr.length>0) regionstr=regionstr.substring(1);
                //obj = document.all[objName+"_region"];
                //obj.value = regionstr;
                obj = document.all[objName+"id"];
                obj.value = userstr;
                //obj = document.all[objName+"_dept"];
                //obj.value = deptstr;
                obj = document.all[objName+"_type"];
                obj.value = "4";
            }
        } else {
            //var returnValue = window.showModalDialog(root_url+"/common/include/orgSelectorTree.jsp?action=regionRoleMembersSelector&regionId=&roleId="+roles + "&selectType="+inputType,null,"dialogWidth:350px");
            var returnValue = window.showModalDialog(root_url+"/common/include/orgSelectorTabTree.jsp?deptIds="+deptId+"&selectType="+inputType +"&tabsDisplay=222",null,"dialogWidth:350px");
            if(returnValue!=null){
                var name = "";
                for(var i=1;i<returnValue.length;i++){
                    name += ","+returnValue[i].name ;
                }
                var obj = document.all[objName];
                if(name.length>0) name=name.substring(1);
                //alert(name);
                obj.value = name;
                var userstr = "";
                //var deptstr = "";
                //var regionstr = "";
                for(var i=1;i<returnValue.length;i++){
                    userstr += ","+returnValue[i].id ;
                    //deptstr += ","+returnValue[i].parentId ;
                    //regionstr += ","+returnValue[i].regionId ;
                }
                //alert(userstr);
                if(userstr.length>0) userstr=userstr.substring(1);
                //if(deptstr.length>0) deptstr=deptstr.substring(1);
                //if(regionstr.length>0) regionstr=regionstr.substring(1);
                //obj = document.all[objName+"_region"];
                //obj.value = regionstr;
                obj = document.all[objName+"id"];
                obj.value = userstr;
                //obj = document.all[objName+"_dept"];
                //obj.value = deptstr;
                obj = document.all[objName+"_type"];
                obj.value = "4";
            }
        }
    }
    
//*****************************************************************
// è¯¥æ?¹æ?????è°???¨äºº???èµ?æº?????????¥å??.
// ??????:
//		root_url:web???å¢??????¹ç??å½?
//		inputType:è¾???¥ç±»???ï¼?0ï¼?normalï¼?1ï¼?checkboxï¼?2ï¼?radio
//		objName:æº???§ä»¶??????ç§?
//		sign:
//		deptSign:
// æ³¨æ??ï¼?
//		tabsDisplay=0100?????¼ä»£è¡?ï¼???°å???????¨é?¨ã??äººå???????¨é?¨å??äººå??ï¼??????©è????´ï??
//		returnValueï¼?è¯¥æ?°å?¼æ??è°???¨æ????¡å??è¿?????????°ç??ç»????ï¼?å¦?????????????ä¸????å°????ä»?1å¼?å§?ï¼?
//					å¦???????å¤????ä¸????å°????ä»?0å¼?å§?
//		??©ç?¨è???????¼ç???????°æ????¶ï??æ³¨æ????°ç??ä¸??????¼è?????orgModels.jsä¸????å¯¹è±¡ä¸???´ã??
//
//******************************************************************
function showOrgTabTree(root_url,inputType,objName,sign,deptSign){
    var ifClear;
    if (deptSign!="undefined" && deptSign==1) {
        var returnValue = window.showModalDialog(root_url+"/common/include/orgSelectorTabTree.jsp?selectType="+inputType +"&objName="+objName+"&tabsDisplay=0100&deptType=logic",null,"dialogWidth:350px");
		//if(typeof(returnValue)!="object[]")
		ifClear=returnValue;
        if(returnValue!=null&&typeof(returnValue)!="string"){
            var name = "";
            for(var i=1;i<returnValue.length;i++){
                name += ","+returnValue[i].name ;
            }
            var obj = document.all[objName];
            if(name.length>0) name=name.substring(1);
            //alert(name);
            obj.value = name;
            //var str = "";
            var regionstr = "";
            var userstr = "";
            var deptstr = "";
            for(var i=1;i<returnValue.length;i++){
                if(returnValue[i].type=="region"){
                    regionstr += ","+returnValue[i].id ;
                }else if(returnValue[i].type=="dept"){
                    deptstr += ","+returnValue[i].id ;
                    userstr += ", " ;
                    regionstr += ","+returnValue[i].regionId ;
                }else if(returnValue[i].type=="user"){
                    userstr += ","+returnValue[i].id ;
                    deptstr += ","+returnValue[i].parentId ;
                    regionstr += ","+returnValue[i].regionId ;
                }
                //str += returnValue[i].regionId + ":" + returnValue[i].id + ":" + returnValue[i].name + ":" + returnValue[i].parentId + ":" + returnValue[i].regionId + "\n";
            }
            //alert(userstr);
            if(regionstr.length>0) regionstr=regionstr.substring(1);
            if(userstr.length>0) userstr=userstr.substring(1);
            if(deptstr.length>0) deptstr=deptstr.substring(1);
            //alert(regionstr);
            //alert(userstr);
            //alert(deptstr);
            obj = document.all[objName+"_id"];
            if(typeof(obj)!="undefined")
            	obj.value = userstr;
            obj = document.all[objName+"_dept"];
            if(typeof(obj)!="undefined"){
            	obj.value = deptstr;
            	if(obj.onchange){
            		obj.onchange();
            	}
            }
            obj = document.all[objName+"_region"];
            if(typeof(obj)!="undefined")
            	obj.value = regionstr;
            obj = document.all[objName+"_type"];
            if(typeof(obj)!="undefined"){
            //obj.value = returnValue[0];
            if (returnValue[0]=="0") {
                obj.value = "7";
            } else if (returnValue[0]=="1") {
                obj.value = "1";
            } else if (returnValue[0]=="2") {
                obj.value = "4";
            } else if (returnValue[0]=="3") {
                obj.value = "6";
            } else if (returnValue[0]=="4") {
                obj.value = "2";
            } else if (returnValue[0]=="5") {
                obj.value = "5";
            } else if (returnValue[0]=="6") {
                obj.value = "3";
            } else {
                obj.value = "1";
            }
            }
        }
    } else if (deptSign!="undefined" && deptSign==4) {
        var returnValue = window.showModalDialog(root_url+"/common/include/orgSelectorTabTree.jsp?selectType="+inputType +"&objName="+objName+"&tabsDisplay=0010&deptType=logic",null,"dialogWidth:350px");
        ifClear=returnValue;
        if(returnValue!=null&&typeof(returnValue)!="string"){
            var name = "";
            //alert("length:" + returnValue.length);
            for(var i=1;i<returnValue.length;i++){
                name += ","+returnValue[i].name ;
            }
            var obj = document.all[objName];
            if(name.length>0) name=name.substring(1);
            //alert("name:" + name);
            obj.value = name;

            //var str = "";
            var regionstr = "";
            var userstr = "";
            var deptstr = "";
            for(var i=1;i<returnValue.length;i++){
                if(returnValue[i].type=="region"){
                    regionstr += ","+returnValue[i].id ;
                }else if(returnValue[i].type=="dept"){
                    deptstr += ","+returnValue[i].id ;
                    userstr += ", " ;
                    regionstr += ","+returnValue[i].regionId ;
                }else if(returnValue[i].type=="user"){
                    userstr += ","+returnValue[i].id ;
                    deptstr += ","+returnValue[i].parentId ;
                    regionstr += ","+returnValue[i].regionId ;
                }
                //str += returnValue[i].regionId + ":" + returnValue[i].id + ":" + returnValue[i].name + ":" + returnValue[i].parentId + ":" + returnValue[i].regionId + "\n";
            }
            if(regionstr.length>0) regionstr=regionstr.substring(1);
            if(userstr.length>0) userstr=userstr.substring(1);
            if(deptstr.length>0) deptstr=deptstr.substring(1);
            //alert(regionstr);
            //alert(userstr);
            //alert(deptstr);
            obj = document.all[objName+"_id"];
            //??¨æ??id
            if(typeof(obj)!="undefined")
            	obj.value = userstr;
			//add by mufangshan ç»???°å?ºã????¨é?¨è?????
			obj = document.all[objName+"_region"];
			if(typeof(obj)!="undefined")
            	obj.value = regionstr;
            obj = document.all[objName+"_dept"];
            if(typeof(obj)!="undefined")
            	obj.value = deptstr;
         
            //obj.value = returnValue[0];
            /**
            if (returnValue[0]=="0") {
                obj.value = "7";
            } else if (returnValue[0]=="1") {
                obj.value = "1";
            } else if (returnValue[0]=="2") {
                obj.value = "4";
            } else if (returnValue[0]=="3") {
                obj.value = "6";
            } else if (returnValue[0]=="4") {
                obj.value = "2";
            } else if (returnValue[0]=="5") {
                obj.value = "5";
            } else if (returnValue[0]=="6") {
                obj.value = "3";
            } else {
                obj.value = "1";
            }
            */
            //alert(obj.value);

        }else{
        	//alert("return value is null.");
        }
    } else if (deptSign!="undefined" && deptSign==6) {
        var returnValue = window.showModalDialog(root_url+"/common/include/orgSelectorTabTree.jsp?selectType="+inputType +"&objName="+objName+"&tabsDisplay=0111&deptType=logic",null,"dialogWidth:350px");
        ifClear=returnValue;
        if(returnValue!=null&&typeof(returnValue)!="string"){
            var name = "";
            for(var i=1;i<returnValue.length;i++){
                name += ","+returnValue[i].name ;
            }
            var obj = document.all[objName];
            if(name.length>0) name=name.substring(1);
            //alert(name);
            obj.value = name;

            //var str = "";
            var regionstr = "";
            var userstr = "";
            var deptstr = "";
            for(var i=1;i<returnValue.length;i++){
                if(returnValue[i].type=="region"){
                    regionstr += ","+returnValue[i].id ;
                }else if(returnValue[i].type=="dept"){
                    deptstr += ","+returnValue[i].id ;
                    userstr += ", " ;
                    regionstr += ","+returnValue[i].regionId ;
                }else if(returnValue[i].type=="user"){
                    userstr += ","+returnValue[i].id ;
                    deptstr += ","+returnValue[i].parentId ;
                    regionstr += ","+returnValue[i].regionId ;
                }
                //str += returnValue[i].regionId + ":" + returnValue[i].id + ":" + returnValue[i].name + ":" + returnValue[i].parentId + ":" + returnValue[i].regionId + "\n";
            }
            if(regionstr.length>0) regionstr=regionstr.substring(1);
            if(userstr.length>0) userstr=userstr.substring(1);
            if(deptstr.length>0) deptstr=deptstr.substring(1);
            //alert(regionstr);
            //alert(userstr);
            //alert(deptstr);
            obj = document.all[objName+"_user"];
            if(typeof(obj)!="undefined")
            	obj.value = userstr;
            obj = document.all[objName+"_dept"];
            if(typeof(obj)!="undefined")
            	obj.value = deptstr;
            obj = document.all[objName+"_region"];
            	if(typeof(obj)!="undefined")
            obj.value = regionstr;
            obj = document.all[objName+"_type"];
            //obj.value = returnValue[0];
            if (returnValue[0]=="0") {
                obj.value = "7";
            } else if (returnValue[0]=="1") {
                obj.value = "1";
            } else if (returnValue[0]=="2") {
                obj.value = "4";
            } else if (returnValue[0]=="3") {
                obj.value = "6";
            } else if (returnValue[0]=="4") {
                obj.value = "2";
            } else if (returnValue[0]=="5") {
                obj.value = "5";
            } else if (returnValue[0]=="6") {
                obj.value = "3";
            } else {
                obj.value = "1";
            }
        }
    } else if (sign!="undefined" && sign=="accept") {
        var returnValue = window.showModalDialog(root_url+"/common/include/orgSelectorTabTree.jsp?selectType="+inputType +"&objName="+objName+"&tabsDisplay=0111&deptType=logic",null,"dialogWidth:350px");
        ifClear=returnValue;
        if(returnValue!=null&&typeof(returnValue)!="string"){
            var name = "";
            for(var i=1;i<returnValue.length;i++){
                name += ","+returnValue[i].name ;
            }
            var obj = document.all[objName];
            if(name.length>0) name=name.substring(1);
            //alert(name);
            obj.value = name;

            //var str = "";
            var regionstr = "";
            var userstr = "";
            var deptstr = "";
            for(var i=1;i<returnValue.length;i++){
            alert(returnValue[i].type);
                if(returnValue[i].type=="region"){
                    regionstr += ","+returnValue[i].id ;
                }else if(returnValue[i].type=="dept"){
                    deptstr += ","+returnValue[i].id ;
                    userstr += ", " ;
                    regionstr += ","+returnValue[i].regionId ;
                }else if(returnValue[i].type=="user"){
                    userstr += ","+returnValue[i].id ;
                    deptstr += ","+returnValue[i].parentId ;
                    regionstr += ","+returnValue[i].regionId ;
                }
                //str += returnValue[i].regionId + ":" + returnValue[i].id + ":" + returnValue[i].name + ":" + returnValue[i].parentId + ":" + returnValue[i].regionId + "\n";
            }
            if(regionstr.length>0) regionstr=regionstr.substring(1);
            if(userstr.length>0) userstr=userstr.substring(1);
            if(deptstr.length>0) deptstr=deptstr.substring(1);
            //alert(regionstr);
            //alert(userstr);
            //alert(deptstr);
            obj = document.all[objName+"id"];
            obj.value = userstr;
            obj = document.all[objName+"_dept"];
            obj.value = deptstr;
            obj = document.all[objName+"_region"];
            obj.value = regionstr;
            obj = document.all[objName+"_type"];
            //obj.value = returnValue[0];
            if (returnValue[0]=="0") {
                obj.value = "7";
            } else if (returnValue[0]=="1") {
                obj.value = "1";
            } else if (returnValue[0]=="2") {
                obj.value = "4";
            } else if (returnValue[0]=="3") {
                obj.value = "6";
            } else if (returnValue[0]=="4") {
                obj.value = "2";
            } else if (returnValue[0]=="5") {
                obj.value = "5";
            } else if (returnValue[0]=="6") {
                obj.value = "3";
            } else {
                obj.value = "1";
            }
        }
    } else if (sign!="undefined" && sign=="check") {
        var returnValue = window.showModalDialog(root_url+"/common/include/orgSelectorTabTree.jsp?selectType="+inputType +"&objName="+objName+"&tabsDisplay=0010&deptType=logic",null,"dialogWidth:350px");
        ifClear=returnValue;
        if(returnValue!=null&&typeof(returnValue)!="string"){
            var name = "";
            for(var i=1;i<returnValue.length;i++){
                name += ","+returnValue[i].name ;
            }
            var obj = document.all[objName];
            if(name.length>0) name=name.substring(1);
            //alert(name);
            obj.value = name;

            //var str = "";
            var regionstr = "";
            var userstr = "";
            var deptstr = "";
            for(var i=1;i<returnValue.length;i++){
                if(returnValue[i].type=="region"){
                    regionstr += ","+returnValue[i].id ;
                }else if(returnValue[i].type=="dept"){
                    deptstr += ","+returnValue[i].id ;
                    userstr += ", " ;
                    regionstr += ","+returnValue[i].regionId ;
                }else if(returnValue[i].type=="user"){
                    userstr += ","+returnValue[i].id ;
                    deptstr += ","+returnValue[i].parentId ;
                    regionstr += ","+returnValue[i].regionId ;
                }
                //str += returnValue[i].regionId + ":" + returnValue[i].id + ":" + returnValue[i].name + ":" + returnValue[i].parentId + ":" + returnValue[i].regionId + "\n";
            }
            if(regionstr.length>0) regionstr=regionstr.substring(1);
            if(userstr.length>0) userstr=userstr.substring(1);
            if(deptstr.length>0) deptstr=deptstr.substring(1);
            //alert(regionstr);
            //alert(userstr);
            //alert(deptstr);
            obj = document.all[objName+"_user"];
            obj.value = userstr;
            obj = document.all[objName+"_dept"];
            obj.value = deptstr;
            obj = document.all[objName+"_region"];
            obj.value = regionstr;
            obj = document.all[objName+"_type"];
            //obj.value = returnValue[0];
            if (returnValue[0]=="0") {
                obj.value = "7";
            } else if (returnValue[0]=="1") {
                obj.value = "1";
            } else if (returnValue[0]=="2") {
                obj.value = "4";
            } else if (returnValue[0]=="3") {
                obj.value = "6";
            } else if (returnValue[0]=="4") {
                obj.value = "2";
            } else if (returnValue[0]=="5") {
                obj.value = "5";
            } else if (returnValue[0]=="6") {
                obj.value = "3";
            } else {
                obj.value = "1";
            }
        }
    } else if(sign!="undefined" && sign=="region") {
        var returnValue = window.showModalDialog(root_url+"/common/include/orgSelectorTabTree.jsp?selectType="+inputType +"&objName="+objName+"&tabsDisplay=1000&deptType=logic",null,"dialogWidth:350px");
 
        ifClear=returnValue;
        if(returnValue!=null&&typeof(returnValue)!="string"){
            var str = "";
            for(var i=1;i<returnValue.length;i++){
                //str += returnValue[i].type + ":" + returnValue[i].id + ":" + returnValue[i].name + ":" + returnValue[i].parentId + "\n";
                str +=returnValue[i].id
            }
            var name = "";
            for(var i=1;i<returnValue.length;i++){
                name += returnValue[i].name ;
            }
            var obj = document.all[objName];
            obj.value = name;
            obj = document.all[objName+"id"];
            obj.value = str;
        }
    }
    //???ä¸??????¸ç??äººå??
    else if(deptSign!="undefined" && deptSign=="comp_check") {
        var returnValue = window.showModalDialog(root_url+"/common/include/orgSelectorTabTree.jsp?selectType="+inputType +"&objName="+objName+"&regionIds=1&tabsDisplay=0200&deptType=logic",null,"dialogWidth:350px");
         ifClear=returnValue;
        if(returnValue!=null&&typeof(returnValue)!="string"){
            var str = "";
            for(var i=1;i<returnValue.length;i++){
                str += returnValue[i].type + ":" + returnValue[i].id + ":" + returnValue[i].name + ":" + returnValue[i].parentId + "\n";
            }
            var name = "";
            for(var i=1;i<returnValue.length;i++){
                name += returnValue[i].name ;
            }
            var obj = document.all[objName];
            obj.value = name;
            obj = document.all[objName+"id"];
            obj.value = str;
        }
    }else{
    	////////////////////////////////////////
    	var returnValue = window.showModalDialog(root_url+"/common/include/orgSelectorTabTree.jsp?selectType="+inputType +"&objName="+objName+"&tabsDisplay=0111&deptType=logic",null,"dialogWidth:350px");
 
        ifClear=returnValue;
        if(returnValue!=null&&typeof(returnValue)!="string"){
            var str = "";
            for(var i=0;i<returnValue.length;i++){
                str += returnValue[i].type + ":" + returnValue[i].id + ":" + returnValue[i].name + ":" + returnValue[i].parentId + ":" + returnValue[i].regionId + "\n";
            }
            var name = "";
            for(var i=0;i<returnValue.length;i++){
                name += returnValue[i].name ;
            }
            var obj = document.all[objName];
            obj.value = name;
            obj = document.all[objName+"id"];
            obj.value = str;
        }
    }
    /**
    *æ¸??????§ä»¶??°å??
    */
    if(typeof(returnValue)=="string"&&returnValue=="clear"){
       if(document.all(objName)!=null&&typeof(document.all(objName))!="undefined")
       	document.all(objName).value = "";
       if(document.all(objName+"_dept")!=null&&typeof(document.all(objName+"_dept"))!="undefined")
	   	document.all(objName+"_dept").value = "";
	   if(document.all(objName+"_region")!=null&&typeof(document.all(objName+"_region"))!="undefined")
	   	document.all(objName+"_region").value = "";
    }
}