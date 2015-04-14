var thisskin;

function SetCookie(name,value){
	var argv=SetCookie.arguments;
	var argc=SetCookie.arguments.length;
	var expires=(2<argc)?argv[2]:null;
	var path=(3<argc)?argv[3]:null;
	var domain=(4<argc)?argv[4]:null;
	var secure=(5<argc)?argv[5]:false;
	document.cookie=name+"="+escape(value)+((expires==null)?"":("; expires="+expires.toGMTString()))+((path==null)?"":("; path="+path))+((domain==null)?"":("; domain="+domain))+((secure==true)?"; secure":"");
}

function GetCookie(Name) {
	var search = Name + "=";
	var returnvalue = "";
	if (document.cookie.length > 0) {
		offset = document.cookie.indexOf(search);
		if (offset != -1) { 
			offset += search.length;
			end = document.cookie.indexOf(";", offset); 
			if (end == -1)
			end = document.cookie.length;
			returnvalue=unescape(document.cookie.substring(offset,end));
		}
	}
	return returnvalue;
}

function changecss(cssUrl){
	if(cssUrl!=""){
		changeAllCss(top,cssUrl);
		var expdate=new Date();
		expdate.setTime(expdate.getTime()+(24*60*60*1000*30));
		//以下设置COOKIES时间为1年,自己随便设置该时间..
		SetCookie("nowskin",cssUrl,expdate,"/",null,false);
	}
}

function changeAllCss(fm, cssUrl){
	if(fm.frames.length>0){
		try{
			var skin=fm.document.getElementById('skin');
			if(skin != null)
				skin.href=cssUrl;
		}
		catch(ex)
		{
		}
		for(var i=0; i<fm.frames.length; i++){
			changeAllCss(fm.frames[i],cssUrl);
		}
	}
	else{
		try{
			var skin=fm.document.getElementById('skin');
			if(skin != null)
				skin.href=cssUrl;
		}
		catch(ex)
		{
		}
	}
}

var defaultSkin = "/gscustcare/nwom-skins/blue/style.css";
					
thisskin=GetCookie("nowskin");


if(document.getElementById("skin"))
{
	if(thisskin!="")
		skin.href=thisskin;
	else
	  skin.href=defaultSkin;
  }
  