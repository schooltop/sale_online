$(document).ready(function () {
    
	$('ul.globalnav .submenu').hide();
	$('ul.globalnav .submenu li.selected').parent().show();
	/*
    $('ul.globalnav > li > a').each(function(index){
		$(this).bind('click',function(event){
			if ($(this).attr('href') == '#'){
				event.preventDefault();
			}
			$('ul.globalnav .submenu').hide();
			$(this).parent().find('ul').stop(true,true).show();
			$('ul.globalnav > li[class != selected] > a > img').each(function(index){
				var tmpName = $(this).attr('src');
				tmpName = tmpName.replace("_on","_off");
				$(this).attr('src',tmpName);
				$(this).find('img').removeClass('selected');
			})
			var tmpName = $(this).find('img').attr('src');
			tmpName = tmpName.replace("_off","_on");
			$(this).find('img').attr('src',tmpName);
			$(this).find('img').addClass('selected');
		})
	});
	*/
	$('.globalnav').bind('mouseleave',function(){
		//$('ul.globalnav .submenu').stop(true,true).hide();
		$('ul.globalnav > li[class != selected] > a > img').each(function(index){
			var tmpName = $(this).attr('src');
			tmpName = tmpName.replace("_on","_off");
			$(this).attr('src',tmpName);
			//$(this).removeClass('selected');
		})
		//$('ul.globalnav .submenu li.selected').parent().show();   
	});
 
 	$('ul.globalnav a > img').each(function(index){
 		var tmpName = $(this).attr('src');
		
		$(this).hover(
		  function () {
		    if($(this).attr('class') != 'selected'){
				tmpName = tmpName.replace("_off","_on");
				$(this).attr('src',tmpName);
			}
		  }, 
		  function () {
		    if($(this).attr('class') != 'selected'){
				tmpName = tmpName.replace("_on","_off");
				$(this).attr('src',tmpName);
			}
		  }
		);
		
	});
});