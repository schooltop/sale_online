var first =new Array();
var second=new Array();
var third=new Array();
/**
支持一个页面有3个关联选择框
*/
//第一关联下拉菜单
function f_selFirst(sourSelect, targSelect)
{
  var v_targSelect; //目标选择框Name
  var v_sourceId; //源选择框id
  var v_itemCount;//数组长短
  if(window.document.all(targSelect))
    v_targSelect = window.document.all(targSelect);
  else
    return false;

  if(window.document.all(sourSelect)){
     v_sourceId =window.document.all(sourSelect).value;
    }
  else
    return false;

  v_itemCount = first.length;

  if(v_itemCount == 0)
    return false;

  v_targSelect.length = 0;

  for (i=0;i < v_itemCount; i++)
  {
    if (first[i][0] == v_sourceId)
    {
    v_targSelect.options[v_targSelect.length] = new Option(first[i][2],first[i][1]);
  }
  }
  return true;
}
//第二关联下拉菜单
function f_selSecond(sourSelect, targSelect)
{
  var v_targSelect;
  var v_sourceId;
  var v_itemCount;
  if(window.document.all(targSelect))
    v_targSelect = window.document.all(targSelect);
  else
    return false;

  if(window.document.all(sourSelect)){
     v_sourceId =window.document.all(sourSelect).value;
    }
  else
    return false;

  v_itemCount = second.length;

  if(v_itemCount == 0)
    return false;

  v_targSelect.length = 0;

  for (i=0;i < v_itemCount; i++)
  {

    if (second[i][0] == v_sourceId)
    {
    v_targSelect.options[v_targSelect.length] = new Option(second[i][2],second[i][1]);
  }
  }
  return true;
}

//第三关联下拉菜单
function f_selThird(sourSelect, targSelect)
{
  var v_targSelect;
  var v_sourceId;
  var v_itemCount;
  if(window.document.all(targSelect))
    v_targSelect = window.document.all(targSelect);
  else
    return false;

  if(window.document.all(sourSelect)){
     v_sourceId =window.document.all(sourSelect).value;
    }
  else
    return false;

  v_itemCount = third.length;

  if(v_itemCount == 0)
    return false;

  v_targSelect.length = 0;

  for (i=0;i < v_itemCount; i++)
  {

    if (third[i][0] == v_sourceId)
    {
    v_targSelect.options[v_targSelect.length] = new Option(third[i][2],third[i][1]);
  }
  }
  return true;
}