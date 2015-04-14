jQuery.noConflict();
jQuery(function(){
	var sw = 0;
	jQuery(".num span").mouseover(function(){
		sw = jQuery(".num span").index(this);
		myShow(sw);
	});
	function myShow(i){
		jQuery(".num span").eq(i).addClass("cur").siblings("span").removeClass("cur");
		jQuery(".focuscont li").eq(i).stop(true,true).fadeIn(600).siblings("li").fadeOut(600);
	}
	jQuery(".foucs").hover(function(){
		if(myTime){
		   clearInterval(myTime);
		}
	},function(){
		myTime = setInterval(function(){
		  myShow(sw)
		  sw++;
		  if(sw == 3){sw=0;}
		} , 3000);
	});
	var myTime = setInterval(function(){
	   myShow(sw)
	   sw++;
	   if(sw == 3){sw=0;}
	},3000);
});