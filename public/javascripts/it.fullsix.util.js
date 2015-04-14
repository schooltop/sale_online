$(function() {
	var zIndexNumber = 10000;
	$('div.header div').each(function() {
		$(this).css('zIndex', zIndexNumber);
		zIndexNumber -= 1;
	});
});


/* homepage policy */
$(document).ready(function () {
    hpRollOver();

    //AlessandroG: 2011-10-13 Removed because of changed homepage (whitout Javascript)
//    $('.submenu-langH img').click(function () {

//        $('.submenu-langH img').each(function () {
//            var tmp = $(this).attr('src');
//            tmp = tmp.replace('_on', '_off');
//            $(this).attr('src', tmp);

//            $(this).removeClass('selected');
//        })

//        var tmp = $(this).attr('src');
//        tmp = tmp.replace('_off', '_on');
//        $(this).attr('src', tmp);

//        $(this).addClass('selected');
//    });
});

function hpRollOver() {
    $('.submenu-langH img').each(function (index) {

        var tmpName = $(this).attr('src');
        var current = $(this).attr('rel');
        if (current != 'current') {
            $(this).hover(
		  function () {
		      tmpName = tmpName.replace("_off", "_on");
		      $(this).attr('src', tmpName);
		  },
		  function () {
		      if ($(this).attr('class') != 'selected') {
		          tmpName = tmpName.replace("_on", "_off");
		          $(this).attr('src', tmpName);
		      }
		  }
		);
        }

    });
}

/* popup chef policy */
$(document).ready(function () {
    $(".gall .over img").headerFooterReplace();

    $(".gall img").click(function () {
        $(this).closest('ul').find('img').each(function () {
            var tmp = $(this).attr('src');
            tmp = tmp.replace('_on', '_off');
            $(this).attr('src', tmp);

            $(this).removeClass('selected');
        })

        var tmp = $(this).attr('src');
   
        tmp = tmp.replace('_off', '_on');
        $(this).attr('src', tmp);
        $(this).addClass('selected');

    })
});

$.fn.headerFooterReplace = function (options) {
     var defaults = {}
    var settings = $.extend({}, defaults, options);
    var $this = $(this);

    $this.each(function () {
        var tmpName = $(this).attr('src');

        $(this).hover(
		  function () {
		      tmpName = tmpName.replace("_off", "_on");
		      $(this).attr('src', tmpName);
		  },
		  function () {
		      if ($(this).attr('class') != 'selected') {
		          tmpName = tmpName.replace("_on", "_off");
		          $(this).attr('src', tmpName);
		      }
		  }
		);
    });
};

function evidenzia(selettore) {
    $(".main[display!=none]").css("display", "none"); //reset
    $(selettore).css("display", "block");
}

/* press policy */
$(document).ready(function () {

    $("#press").change(function () {
        var selectedValue = $(this).val();

        $(".pressContainer").hide();

        $(".pressContainer").each(function () {

            var value = $(this).attr('name');

            if (value == selectedValue) {
                $(this).show();
            }
        });

        if (selectedValue == -1) {
            $(".pressContainer").show();
        }

        $('#pane3').jScrollPane({ showArrows: true });
    });

});


/* GuestBook */
function carouselDetail_itemFirstInCallback(carousel, item, idx, state) {    
    $(".guestLabel").hide();
    $(".guestLabel")[idx - 1].style.display = 'block';
};

function carousel_initCallback(carousel) {
    jQuery('a.next').bind('click', function () {
        carousel.next();
        return false;
    });

    jQuery('a.prev').bind('click', function () {
        carousel.prev();
        return false;
    });

};

function carouselDetail_initCallback(carousel) {
    jQuery('a.nextZoom').bind('click', function () {
        carousel.next();
        return false;
    });

    jQuery('a.prevZoom').bind('click', function () {
        carousel.prev();
        return false;
    });

};

$(document).ready(function () {

    $("#guestCarousel li").click(function (event) {
        event.preventDefault();
        $(".guestGallery").hide();
        $(".guestDetail").show();

        currentZoomElement = $(this).attr("value");

        jQuery('#guestCarouselDetail').jcarousel('scroll', currentZoomElement, false);
        $(".guestGallery").hide();
        $(".guestLabel")[currentZoomElement - 1].style.display = 'block';
    });

    $(".back a").click(function () {
        $(".guestGallery").show();
        $(".guestDetail").hide();
    });


    //Ride the carousel
    jQuery("#guestCarouselDetail").jcarousel({
        scroll: 1,
        initCallback: carouselDetail_initCallback,
        itemFirstInCallback: carouselDetail_itemFirstInCallback,
        wrap: 'both',
        // This tells jCarousel NOT to autobuild prev/next buttons
        buttonNextHTML: null,
        buttonPrevHTML: null,
        itemFallbackDimension: 340
    });

    $(".guestDetail").hide();
    $(".guestLabel").hide();

    jQuery("#guestCarousel").jcarousel({
        scroll: 1,
        wrap: 'both',
        // This tells jCarousel NOT to autobuild prev/next buttons
        buttonNextHTML: null,
        buttonPrevHTML: null,        
        initCallback: carousel_initCallback,
        itemFallbackDimension: 175
    });

});


/* Gallery Policy */
// Ride the carousel...
jQuery(document).ready(function () {

    jQuery("#jcarousel").jcarousel({
        scroll: 1,
        wrap: 'both',
        // This tells jCarousel NOT to autobuild prev/next buttons
        buttonNextHTML: null,
        buttonPrevHTML: null,
        initCallback: carousel_initCallback,
        itemFallbackDimension: 114
    });

    $('.contentContainerGallery .collapsed .right a').click(function (event) {
        event.preventDefault();
        closeTabs();
    })

    $('.box .close a').click(function (event) {
        event.preventDefault();
        $('#gallery').hide();
        tabsIsClosed = true;
        $('.contentContainerGallery').animate({ 'height': '75px', 'width': '880px' })
        $('.contentContainerGallery .collapsed').hide();
        $('..contentContainerGallery .open').show();
        $('#bottomClick').show();
        $('.bottomContainer').animate({ 'height': '30px' })
        $('.bottomContainer ul:first li').removeClass('on');
        $('.bottomContainer ul:first li span').removeClass('off');
    })


});

function carousel_initCallback(carousel) {
    jQuery('a.next').bind('click', function () {
        carousel.next();
        return false;
    });

    jQuery('a.prev').bind('click', function () {
        carousel.prev();
        return false;
    });

};


function resetIframePositionForReservation() {
    if (window.if_isIframePresent !== undefined && if_isIframePresent) //if_isIframePresent is declared in Reservation iFrame masterpage ONLY
    {
        if_iFrame_DoResize(); //iFrame_DoResize is declared in Reservation iFrame masterpage ONLY
    }
}