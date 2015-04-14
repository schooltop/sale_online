function drop_mouseover(pos){
try{window.clearTimeout(timer);}catch(e){}
}
function drop_mouseout(pos){
var posSel=document.getElementById(pos+"Sel").style.display;
if(posSel=="block"){
timer = setTimeout("drop_hide('"+pos+"')", 1000);
}
}
function drop_hide(pos){
document.getElementById(pos+"Sel").style.display="none";
}
function search_show(pos,searchType,href){
	document.getElementById('headSearchForm').action=searchType;
	document.getElementById(pos+"Sel").style.display="none";
    document.getElementById(pos+"Slected").innerHTML=href.innerHTML;
    document.getElementById(pos+'q').focus();
try{window.clearTimeout(timer);}catch(e){}
return false;
}
function dosearch(id){
  keyword=document.getElementById('headq').value;
  if(keyword==''){
	  alert('请输入搜索关键字');
	  }
	}
function showmoremenu(){
	document.getElementById('hidden_more_menu').className='more_menu_ul_hover';
	}
function hiddenmenu(){
	document.getElementById('hidden_more_menu').className='more_menu_ul';
	}
function snTabs(thisObj,Num){
if(thisObj.className == "active")return;
var tabObj = thisObj.parentNode.id;
var tabList = document.getElementById(tabObj).getElementsByTagName("li");
for(i=0; i <tabList.length; i++)
{
  if (i == Num)
  {
   thisObj.className = "active";
      document.getElementById(tabObj+"_Content"+i).style.display = "block";
  }else{
   tabList[i].className = "normal";
   document.getElementById(tabObj+"_Content"+i).style.display = "none";
  }
}
}
 