var ColorHex=new Array('00','33','66','99','CC','FF')
var SpColorHex=new Array('FF0000','00FF00','0000FF','FFFF00','00FFFF','FF00FF')
var current=null
var colorTable=''
var lastchosedcolor=''
var chosedcolor=null;
function intocolor()
{
	
	for (i=0;i<2;i++)
	 {
	  for (j=0;j<6;j++)
	   {
	    colorTable=colorTable+'<tr height=12>'
	    colorTable=colorTable+'<td width=11 style="background-color:#000000">'
	    
	    if (i==0){
	    	colorTable=colorTable+'<td width=11 style="background-color:#'+ColorHex[j]+ColorHex[j]+ColorHex[j]+'">'
	    } 
	    else{
	    	colorTable=colorTable+'<td width=11 style="background-color:#'+SpColorHex[j]+'">'
	    } 
	
	    
	    colorTable=colorTable+'<td width=11 style="background-color:#000000">'
	    for (k=0;k<3;k++)
	     {
	       for (l=0;l<6;l++)
	       {
	        colorTable=colorTable+'<td width=11 style="background-color:#'+ColorHex[k+i*3]+ColorHex[l]+ColorHex[j]+'">'
	       }
	     }
	  }
	}
	colorTable='<table width=253 border="0" cellspacing="0" cellpadding="0" style="border:1px #000000 solid;border-bottom:none;border-collapse: collapse" bordercolor="000000">'
	           +'<tr height=30><td colspan=21 bgcolor=#cccccc>'
	           +'<table cellpadding="0" cellspacing="1" border="0" style="border-collapse: collapse">'
	           +'<tr><td width="3"><td><input type="text" name="DisColor" size="6" disabled style="border:solid 1px #000000;background-color:#ffff00"></td>'
	           +'<td width="3"><td><input type="text" name="HexColor" size="7" style="border:inset 1px;font-family:Arial;" value="#000000"></td>'
	           +'<td><input type="button" value="ȡ��" onclick="closeColorpanel()"></td></tr></table></td></table>'
	           +'<table border="1" cellspacing="0" cellpadding="0" style="border-collapse: collapse" bordercolor="000000" onmouseover="doOver()" onmouseout="doOut()" onclick="doclick()" style="cursor:hand;">'
	           +colorTable+'</table>';          
	colorpanel.innerHTML=colorTable
}

function doOver() {
      if ((event.srcElement.tagName=="TD") && (current!=event.srcElement)) {
        if (current!=null){current.style.backgroundColor = current._background}     
        event.srcElement._background = event.srcElement.style.backgroundColor
        DisColor.style.backgroundColor = event.srcElement.style.backgroundColor
        HexColor.value = event.srcElement.style.backgroundColor
        event.srcElement.style.backgroundColor = "white"
        current = event.srcElement
      }
}

function doOut() {

    if (current!=null) current.style.backgroundColor = current._background
}

function doclick(){
	if (event.srcElement.tagName=="TD"){
		colorpanel.style.display='none';
		chosedcolor.style.backgroundColor=event.srcElement._background
		chosedcolor.value=event.srcElement._background
		return event.srcElement._background
	}
}

function chosecolor(obj){
	chosedcolor=obj;
	colorpanel.style.display='';
	colorpanel.style.left=event.clientX
	colorpanel.style.top=event.clientY+10
}

function closeColorpanel(){
		colorpanel.style.display='none'
}