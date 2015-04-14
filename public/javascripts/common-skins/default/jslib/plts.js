/********说明************
网页中title增加提示效果,仅支持IE
提示内容信息可以通过:initTitle=title|bodyClass=class|aaaaaa格式设置提示框标题以及设置提示框内容样式,注意不可打乱顺序
*************************/
var pltsPop=null;
var pltsoffsetX = 10;   // 弹出窗口位于鼠标左侧或者右侧的距离；3-12 合适
var pltsoffsetY = 15;  // 弹出窗口位于鼠标下方的距离；3-12 合适
var pltsPopbg="#FFFFEE"; //背景色
var pltsPopfg="#111111"; //前景色
var pltsTitle="";
document.write('<div id=pltsTipLayer style="display: none;position: absolute; z-index:10001"></div>');
//初始化整个页面所有的title提示
function pltsDocInits()
{
    document.onmouseover   = plts;
    //document.onmousemove = moveToMouseLoc;
}
//封装提示信息
function plts()
{  
	var event = arguments[0] || window.event;    //firefox || ie  事件对象
    var o = event.target || event.srcElement;   //firefox || ie 触发对象
	//var o=event.srcElement;
	//alert("o.dypop="+o.dypop);
    if(o.alt!=null && o.alt!=""){o.dypop=o.alt;o.alt=""};
    if(o.title!=null && o.title!=""){o.dypop=o.title;};
    pltsPop=o.dypop;
    if(pltsPop!=null&&pltsPop!=""&&typeof(pltsPop)!="undefined")
    {
       var initTitle="详情信息";//提示框初始标题
       var bodyClass="tableBody7";//提示内容初始样式
       
       if(pltsPop.indexOf("initTitle=")==0){
       		//设置提示框标题
        	initTitle=pltsPop.substring(pltsPop.indexOf("=")+1,pltsPop.indexOf("|"));
        	pltsPop=pltsPop.substring(pltsPop.indexOf("|")+1);
        }
        if(pltsPop.indexOf("bodyClass=")==0){
       		//设置提示框内容样式
        	//bodyClass="tablebodyT";
        	bodyClass=pltsPop.substring(pltsPop.indexOf("=")+1,pltsPop.indexOf("|"));
        	pltsPop=pltsPop.substring(pltsPop.indexOf("|")+1);
        } 
       
       pltsTipLayer.style.left=-1000;
       pltsTipLayer.style.display='';
       var Msg=pltsPop.replace(/\n/g,"<br>");
       Msg=Msg.replace(/\0x13/g,"<br>");
       var re=/\{(.[^\{]*)\}/ig;
       if(!re.test(Msg))pltsTitle="<font color=#ffffff>"+initTitle+"</font>";
       else{
        	 re=/\{(.[^\{]*)\}(.*)/ig;
           pltsTitle=Msg.replace(re,"$1")+" ";
        	 re=/\{(.[^\{]*)\}/ig;
        	 Msg=Msg.replace(re,"");
         	 Msg=Msg.replace("<br>","");
        }
         //var attr=(document.location.toString().toLowerCase().indexOf("list.asp")>0?"nowrap":"");
       	var content =
             '<table class=plts_table id=toolTipTalbe border=0><tr><td width="100%"><table class=tableBorder7 cellspacing="1" cellpadding="0" style="width:100%">'+
             '<tr id=pltsPoptop ><th height=18 valign=bottom class=th1 ><b><p id=topleft align=left><font color=#ffffff>↖</font>'+pltsTitle+'</p><p id=topright align=right style="display:none">'+pltsTitle+'<font color=#ffffff>↗</font></b></th></tr>'+
             '<tr><td "+attr+" class='+bodyClass+' >'+Msg+'</td></tr>'+
             '<tr id=pltsPopbot style="display:none"><th height=18 valign=bottom class=th1><b><p id=botleft align=left><font color=#ffffff>↙</font>'+pltsTitle+'</p><p id=botright align=right style="display:none">'+pltsTitle+'<font color=#ffffff>↘</font></b></th></tr>'+
             '</table></td></tr></table>';
         pltsTipLayer.innerHTML=content;
         toolTipTalbe.style.width=Math.min(pltsTipLayer.clientWidth,document.body.clientWidth/2.2);
         moveToMouseLoc();
         return true;
       }
    else
    {
           pltsTipLayer.innerHTML='';
           pltsTipLayer.style.display='none';
           return true;
    }
}
//设置样式
function moveToMouseLoc()
{
       if(pltsTipLayer.innerHTML=='')return true;
       var MouseX=event.x;
       var MouseY=event.y;
       //window.status=event.y;
       var popHeight=pltsTipLayer.clientHeight;
       var popWidth=pltsTipLayer.clientWidth;
       if(MouseY+pltsoffsetY+popHeight>document.body.clientHeight)
       {
                popTopAdjust=-popHeight-pltsoffsetY*1.5;
                pltsPoptop.style.display="none";
                pltsPopbot.style.display="";
       }
        else
       {
                 popTopAdjust=0;
                pltsPoptop.style.display="";
                pltsPopbot.style.display="none";
       }
       if(MouseX+pltsoffsetX+popWidth>document.body.clientWidth)
       {
              popLeftAdjust=-popWidth-pltsoffsetX*2;
              topleft.style.display="none";
              botleft.style.display="none";
              topright.style.display="";
              botright.style.display="";
       }
       else
       {
              popLeftAdjust=0;
              topleft.style.display="";
              botleft.style.display="";
              topright.style.display="none";
              botright.style.display="none";
       }
       pltsTipLayer.style.left=MouseX+pltsoffsetX+document.body.scrollLeft+popLeftAdjust;
       pltsTipLayer.style.top=MouseY+pltsoffsetY+document.body.scrollTop+popTopAdjust;
       return true;
}
