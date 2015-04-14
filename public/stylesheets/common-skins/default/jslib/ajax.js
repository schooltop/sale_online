if (!window.XMLHttpRequest) {
   window.XMLHttpRequest=function (){
   	return new ActiveXObject("Microsoft.XMLHTTP");
   }
}
//@desc    load a page(some html) via xmlhttp,and display on a container
//@param   url          the url of the page will load,such as "index.php"
//@param   request      request string to be sent,such as "action=1&name=surfchen"
//@param   method       POST or GET
//@param   container          the container object,the loaded page will display in container.innerHTML
//@usage 
//         ajaxLoadPage('index.php','action=1&name=surfchen','POST',document.getElementById('my_home'))
//         suppose there is a html element of "my_home" id,such as "<span id='my_home'></span>" 
//@author  SurfChen <surfchen@gmail.com>
//@url     http://www.surfchen.org/
//@license http://www.gnu.org/licenses/lgpl.html LGPL
ajaxLoadPage=function (url,request,method,container)
{
	method=method.toUpperCase();
	var loading_msg='数据加载中......请稍后！';//the text shows on the container on loading.
	var loader=new XMLHttpRequest;//require Cross-Browser XMLHttpRequest
	if (method=='GET')
	{
		urls=url.split("?");
		if (urls[1]=='' || typeof urls[1]=='undefined')
		{
			url=urls[0]+"?"+request;
		}
		else
		{
			url=urls[0]+"?"+urls[1]+"&"+request;
		}
		//no cache(add by gl on 20070309)
		url = url + "&no____cache="+(new Date()).getTime();
		request=null;//for GET method,loader should send NULL
	}
	loader.open(method,url,true);
	if (method=="POST")
	{
		loader.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
	}
	loader.onreadystatechange=function(){
		if (loader.readyState==1)
		{
			container.innerHTML=loading_msg;
			
		}
		if (loader.readyState==4)
		{
			container.innerHTML=loader.responseText;
		}
	}
	loader.send(request);
}
//@desc    transform the elements of a form object and their values into request string( such as "action=1&name=surfchen")
//@param   form_obj          the form object
//@usage   formToRequestString(document.form1)
//@notice  this function can not be used to upload a file.if there is a file input element,the func will take it as a text input.
//         as I know,because of the security,in most of the browsers,we can not upload a file via xmlhttp.
//         a solution is iframe.
//@author  SurfChen <surfchen@gmail.com>
//@url     http://www.surfchen.org/
//@license http://www.gnu.org/licenses/lgpl.html LGPL
formToRequestString = function (form_obj)
{
    var query_string='';
    var and='';
    for (var i=0;i<form_obj.length ;i++ )
    {
        e=form_obj[i];
    
    
        if (e.name) {
            if (e.type=='select-one') {
                element_value=e.options[e.selectedIndex].value;
            } else if (e.type=='select-multiple') {
                for (var n=0;n<e.length;n++) {
                    var op=e.options[n];
                    if (op.selected) {
                        query_string+=and+e.name+'='+encodeURIComponent(op.value);
                        and="&"
                    }
                }
                continue;
            } else if (e.type=='checkbox' || e.type=='radio') {
                if (e.checked==false) {   
                    continue;   
                }   
                element_value=e.value;
            } else if (typeof e.value != 'undefined') {
                element_value=e.value;
            } else {
                continue;
            }
            query_string+=and+e.name+'='+encodeURIComponent(element_value);
            and="&"
        }

    }
    return query_string;
}
//@desc    no refresh submit(ajax) by using ajaxLoadPage and formToRequestString
//@param   form_obj          the form object
//@param   container          the container object,the loaded page will display in container.innerHTML
//@usage   ajaxFormSubmit(document.form1,document.getElementById('my_home'))
//@author  SurfChen <surfchen@gmail.com>
//@url     http://www.surfchen.org/
//@license http://www.gnu.org/licenses/lgpl.html LGPL
ajaxFormSubmit=function (form_obj,container)
{ 
	ajaxLoadPage(form_obj.getAttributeNode("action").value,formToRequestString(form_obj),form_obj.method,container)
}
