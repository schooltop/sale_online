/**
 *栏目树分级显示下拉菜单组件
 *example:
 *var colObj2 = {"Items":[
 *				{"name":"菜单项目标题1","topid":"0","colid":"1","value":"菜单项目标题1","fun":function(){}},	
 *				...
 *				]}
 *jQuery("#div").mlnColsel(colObj,{
 *				title:"栏目下拉菜单",
 *				value:"-1",
 *				width:100
 *			});
 *参数：topid 栏目所属，0为一级
 *		colid 栏目ID，0为一级
 *		fun 回调函数
 **/
 
 (function(jQuery){
	jQuery.fn.mlnColsel1=function(data,setting){
		
		var dataObj={"Items":[
			{"name":"mlnColsel","topid":"-1","colid":"-1","value":"-1","fun":function(){alert("undefined!");}}
		]};
		var settingObj={
			title:"请选择",
			value:"",
			width:100
		};
		settingObj=jQuery.extend(settingObj,setting);
		dataObj=jQuery.extend(dataObj,data);
		
		var jQuerythis=jQuery(this);
		var jQuerycolselbox=jQuery(document.createElement("a")).addClass("colselect").attr({"href":"javascript:;"});
		var jQuerycolseltext=jQuery(document.createElement("span")).text(settingObj.title);
		var jQuerycoldrop=jQuery(document.createElement("ul")).addClass("dropmenu");
		var selectInput = jQuery.browser.msie?document.createElement("<input name="+jQuerythis.attr("id")+" />"):document.createElement("input");
 			selectInput.type="hidden";
 			selectInput.value=settingObj.value;
 			selectInput.setAttribute("name",jQuerythis.attr("id"));
 			selectInput.setAttribute("id",jQuerythis.attr("id"));
		var ids=jQuerythis.attr("id");
		jQuerythis.onselectstart=function(){return false;};
		jQuerythis.onselect=function(){document.selection.empty()};
		jQuerycolselbox.append(jQuerycolseltext);
		jQuerythis.addClass("colsel").append(jQuerycolselbox).append(jQuerycoldrop).append(selectInput);
		
		jQuery(dataObj.Items).each(function(i,n){
			var jQueryitem=jQuery(document.createElement("li"));
			if(n.topid==0 || n.topid=="0"){
				jQuerycoldrop.append(jQueryitem);
				jQueryitem.html("<span>"+n.name+"</span>").attr({"values":n.value,"id":"col_"+ids+"_"+n.colid});
			}else{
				if(jQuery("#col_"+ids+"_"+n.topid).find("ul").length<=0){
					jQuery("#col_"+ids+"_"+n.topid).append("<ul class=\"dropmenu rootmenu1\"></ul>");
					jQuery("#col_"+ids+"_"+n.topid).find("ul:first").append(jQueryitem);
					jQueryitem.html("<span>"+n.name+"</span>").attr({"values":n.value,"id":"col_"+ids+"_"+n.colid});
				}else{
					jQuery("#col_"+ids+"_"+n.topid).find("ul:first").append(jQueryitem);
					jQueryitem.html("<span>"+n.name+"</span>").attr({"values":n.value,"id":"col_"+ids+"_"+n.colid});
				}
			}			
		});
		
		jQuerythis.find("li").each(function(){
			jQuery(this).click(function(event){
				jQuerycolselbox.children("span").text(jQuery(this).find("span:first").text());
				jQuery(selectInput).val(jQuery(this).attr("values"));

// 	t2max  product
				var newid = document.getElementById("product_ids");
 		        newid.value=jQuery(this).attr("values");
 		        
				hideMenu();
				event.stopPropagation();
			});
			if(jQuery(this).find("ul").length>0){
				jQuery(this).addClass("menuout");
				jQuery(this).hover(function(){
						jQuery(this).removeClass("menuout");
						jQuery(this).addClass("menuhover");
						jQuery(this).find("ul:first").fadeIn("fast")
						var rootdom = jQuery(this);
						var offset = rootdom.offset();
						var rootLeft=offset.left+141;
						var childWidth=jQuery(document).width()-rootLeft;			
						if(childWidth<141){
							jQuerythis.childPath="left"
							jQuery(this).find("ul:first").css({"left":-135+"px"});
						}else{
							jQuerythis.childPath="right"	
							jQuery(this).find("ul:first").css({"left":135+"px"});
						}
						
					},function(){
						jQuery(this).removeClass("menuhover");
						jQuery(this).addClass("menuout");
						jQuery(this).find("ul").each(function(){
							jQuery(this).fadeOut("fast");
					});
				});
			}else{
				jQuery(this).addClass("norout");
				jQuery(this).hover(function(){
					jQuery(this).removeClass("norout");
					jQuery(this).addClass("norhover");
					},function(){
					jQuery(this).removeClass("norhover");
					jQuery(this).addClass("norout");
				});
			}
		});
		
		function hideMenu(){
			jQuerythis.bOpen=0;
			jQuery(".rootmenu1").hide();
			jQuerycoldrop.slideUp("fast");
			jQuery(document).unbind("click",hideMenu);

		}
		function openMenu(){
			jQuerycoldrop.slideDown("fast");
			jQuerythis.bOpen=1;

		}
		jQuerycolselbox.click(function(event){
			jQuery(this).blur();
			if(jQuerythis.bOpen){
				hideMenu();
				
			}else{
				openMenu();
				jQuery(document).bind("click",hideMenu);
			}
			event.stopPropagation();
		});
		
		jQuery(".rootmenu1").each(function(){
			if(jQuery.browser.msie){
				jQuery(this).css({"margin-top":"-6px","top":"auto"});
			}else{
				jQuery(this).css({"margin-top":"-25px","top":"auto"});
			}
		});	
	}
 })(jQuery);
 
function hideAllSelect()
{	
var selects = document.getElementsByTagName("SELECT");
for(var i = 0 ; i<selects.length;i++)
{
selects[i].style.display = "none";
}
}

function showAllSelect()
{
var selects = document.getElementsByTagName("SELECT");
for(var i = 0 ; i<selects.length;i++)
{
selects[i].style.display = "";
}
}