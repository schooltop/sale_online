			function validate_required(field,alerttxt)
			{
			with (field)
			  {
			  if (value==null||value=="")
			    {alert(alerttxt);return false}
			  else {return true}
			  }
			}

			function validate_profile(thisform)
			{
			with (thisform)
			  {
			    if (validate_required(mainsell,"请至少输入一项销售产品！！！")==false)
			    	{mainsell.focus();return false}
			    if (validate_required(mainbuy,"请至少输入一项采购产品！！！")==false)
			    	{mainbuy.focus();return false}
			    if (validate_required(user_profile_tel_num,"请输入电话号码！！！")==false)
			    	{user_profile_tel_num.focus();return false}
			   }
			}
			
			function validate_logistic(thisform)
			{
			with (thisform)
			  {
			    if (validate_required(logistic_name,"请输入物流公司名称！！！")==false)
			    	{logistic_name.focus();return false}
			    if (validate_required(logistic_num,"请输入货运单号！！！")==false)
			    	{logistic_num.focus();return false}
			   }
			}
			
	

function changecity(value)
{   
	jQuery.post("/rcrm_leads/get_cities",{code:value},function(result){
		    // if (result != undefined) alert(result);
		    var p_code=result.split("/")[1]+",";
	    	var city = result.split("/")[0].split(",");
	    	var options_html="";
	    	for(var i = 0;i<city.length-1;i++)
				  {
				 	options_html+="<option value="+p_code+city[i]+">"+city[i]+"</option>"
				 }
   			jQuery("#city").html(options_html);
   			jQuery("#area").html("<option value='其它'>其它</option>");
  });
	
}
function changearea(value)
{   
	jQuery.post("/rcrm_leads/get_areas",{code:value},function(result){
	    	var area = result.split(",");
	    	var a_options_html="";
	    	for(var i = 0;i<area.length-1;i++)
				  {
				 	a_options_html+="<option value="+area[i]+">"+area[i]+"</option>"
				 }
   			jQuery("#area").html(a_options_html);
  });
	
}


function check_xueli(idd){
new Ajax.Updater('check_xueli_d'+idd.toString(), '/rcrm_leads/check_xueli?id='+idd.toString(), 
{asynchronous:true, 
	evalScripts:true, 
	onComplete:function(request){document.getElementById('spinner').style.display='none';}, 
	onLoading:function(request){document.getElementById('spinner').style.display='';
	document.getElementById('cancel_image'+idd.toString()).style.display='';
	document.getElementById('check_image'+idd.toString()).style.display='none';}
	}
); }

function currentTab(thisObj){
	if(thisObj.className == "aplly_menu current")return;
	//var tabObj = thisObj.parentNode.id;
	var tabList = document.getElementsByTagName("span");
	for(i=0; i <tabList.length; i++)
	{
	  if (i == jQuery(thisObj).index())
	  {
	   thisObj.className = "aplly_menu current";
	   thisObj.getElementsByTagName("a")[0].className = "a_cu";
	  }else{
	   tabList[i].className = "aplly_menu"; 
	   tabList[i].getElementsByTagName("a")[0].className = "anormal";
	  }
	} 
}	
 