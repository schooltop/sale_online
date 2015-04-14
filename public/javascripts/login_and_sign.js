   //检查login,email
	function check_login_unique()
	{
	   new Ajax.Updater('login_error', '/users/checklogin?login='+$("users_login").value,{asynchronous:true, 
		   	evalScripts:true, 
		   	onComplete:function(request){show_error('login');}, 
		   	onLoading:function(request){}
		   	});
	}
	function check_unique()
	{
	   new Ajax.Updater('email_error', '/users/check?email='+$("users_email").value, 
		   {asynchronous:true, 
		   	evalScripts:true, 
		   	onComplete:function(request){show_error('email');}, 
		   	onLoading:function(request){}
		   	}
	   	); 
	}		    
	//检查password是否一致
	function check_pass()
	{
		if ($("users_password").value.length == 0)    
	         {
	           show_error('password');
	           document.getElementById("password_error").innerHTML="密码不能为空";
	           return false;
	         }
	    else{
	    	if($("users_password").value.length<=5)
	    	{
	    		show_error('password');
	    	   document.getElementById("password_error").innerHTML="至少要六个字符";
	           return false;}
	        else{
	        	show_error('password');
	        	document.getElementById("password_error").innerHTML="√";
	        	return true;
	        }
	    }
	}
	function show_error(id){
		document.getElementById(id+"_error").style.display='inline-block';
		document.getElementById(id+"_note").style.display='none';
	}
	function check_password()
	{
	     
	     if ($("users_password").value != $("users_password_confirmation").value)
	         {
	           show_error('pass_con');
	           document.getElementById("pass_con_error").innerHTML="密码确认不一致";
	           return false;
	         }
	     else{
	     	if($("users_password").value.length !=0){
	     	show_error('pass_con');
	     	document.getElementById("pass_con_error").innerHTML="√";}
	     	st1=document.getElementById("email_error").innerHTML;
	     	st2=document.getElementById("password_error").innerHTML;
	     	if(st1=="√"){
	     		if(st2=="√"){
	     			return true;}
	     		else{
	     			return false;}
	     	}
	     	else{
	     		return false;}
	     }
	}
	//最终检查
	function final_check(){
		var flag=0
		if( check_pass()){flag+=1;}
		if( check_password()){flag+=1;}
		if( document.getElementById("password_error").innerHTML=="√" ){flag+=1;}
		if( document.getElementById("email_error").innerHTML=="√" ){flag+=1;}
		if( flag==4){return true;}
	}
	function check_user()
	{
	   jQuery.post("/sessions",{login:jQuery("#user_email").val(),password:jQuery('#user_password').val(),remote_website:"yes"},function(result){
	   	if (result=="wrong Login/Password"){
	   		jQuery("#login_error").html("用户名或密码错误");jQuery("#login_error").show();
	   		return false;
	   	}
	   	else{
	   		var web = jQuery("#from").val();
	   		if (web==""||web==null)
	   		{web = "/centers" }
	   		window.top.location = web;
	   		//return true;
	   		}
	   });
	   return false;
	   //new Ajax.Updater('dia_error_mess', '/session?login='+$("login").value+'&password='+$("password").value, {asynchronous:true, evalScripts:true});
	}