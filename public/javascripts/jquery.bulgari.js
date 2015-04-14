var tabsIsClosed = true;

$(document).ready(function () {
    $(".destination img").headerFooterReplace();
    $(".utility img").headerFooterReplace();
    $(".botnav img").headerFooterReplace();
    createScrollBloccoCentrale();
    //setBackgroundBottomLink();
    $('#pane3').jScrollPane({ showArrows: true });
    //$('#pane4').jScrollPane({ showArrows: true });
    $('#pane5').jScrollPane({ showArrows: true });

    $('.gallery').click(function () {
        $('.contentContainer').animate({ 'height': '20px' })
        $('.contentContainer .collapsed').show();
        $('.contentContainer .open').hide();
        $('#gallery').show();
    })

    $('.contentContainer .collapsed .right a').click(function (event) {
        event.preventDefault();
        closeTabs();
    })

    /* destination list - TOP */
    $('#destination').click(function (event) {
        event.preventDefault();

        $('#listDestination').show();
    })

    $("#listDestination").bind("mouseleave", function () {
        listDestinationHide()
    })

    /* language list - FOOTER */
    $('#language').click(function (event) {
        event.preventDefault();
        $('#listLanguage').show();
    })

    $("#listLanguage").bind("mouseleave", function () {
        listLanguageHide()
    })

    $('.box .close a').click(function (event) {
        event.preventDefault();
        $('#gallery').hide();
        tabsIsClosed = true;
        $('.contentContainer').animate({ 'height': '314px' })
        $('.contentContainer .collapsed').hide();
        $('.contentContainer .open').show();
        $('#bottomClick').show();
        $('.bottomContainer').animate({ 'height': '30px' })
        $('.bottomContainer ul:first li').removeClass('on');
        $('.bottomContainer ul:first li span').removeClass('off');
    })

    /* Shows What'son tabs*/
    $('.bottomContainer ul:first li').each(function (index) {

        $(this).bind("click", function () {
            if (tabsIsClosed) {
                openTabs(index);
            }
            $('.bottomContainer ul:first li').removeClass('on');
            $(this).addClass('on');

            $('.bottomContainer .mainBox').each(function (i) {
                $(this).hide();
                $(this).find('.scroll-pane-whatson').jScrollPaneRemove();

                if (i == index) {
                    $(this).show();

                    $(this).find(".whatson_detail_link").each(function (idx) {

                        var id = $(this).attr("id");
                        var firstBoxId = '#box_' + id;
                        var secondBoxId = '#box_' + id + '_2';
                        if (idx == 0) {
                            $(this).addClass('selected');
                            $(firstBoxId).show();
                            $(firstBoxId).find('.scroll-pane-whatson').jScrollPane({ showArrows: true });
                            $(secondBoxId).show();
                        }
                        else {
                            $(this).removeClass('selected');
                        }
                    });

                }
            });

        });
    });

    /* list event on page */
    $('.whatson_detail_link').each(function (index) {
        $(this).bind("click", function (event) {
            event.preventDefault();
            /* Hide all */
            $('.whatson_detail_link').removeClass('selected');
            $('.whatson-box').hide();
            $(this).find('.scroll-pane-whatson').jScrollPaneRemove();

            /* Show this */
            $(this).addClass('selected');

            /* Show chiòd */
            var id = $(this).attr("id"); 
            var firstBoxId = '#box_' + id;
            var secondBoxId = '#box_' + id + '_2';
            $(firstBoxId).show();
            $(firstBoxId).find('.scroll-pane-whatson').jScrollPane({ showArrows: true });
            $(secondBoxId).show();
        })
    });

    /* open popup policy */
    $('#privacy').click(function (event) {
        event.preventDefault();
        $('#privacyPop').modal({ zIndex: 99999, opacity: 70 });
    });

    /* open popup location */
    $('#location').click(function (event) {
        event.preventDefault();
        $('#locationPop').modal({ zIndex: 99999, opacity: 70 });
    });


});


function openTabs(index) {
    tabsIsClosed = false;
    $('#gallery').hide()
    $('.contentContainer').animate({ 'height': '20px' })
    $('.contentContainer .collapsed').show();
    $('.contentContainer .open').hide();

    /* Aggiunta per image gallery */
    $('.contentContainerGallery').animate({ 'height': '20px', 'width': '250px' })
    $('.contentContainerGallery .collapsed').show();
    $('.contentContainerGallery .open').hide();

    $('.bottomContainer ul:first li span').addClass('off');

    $('.bottomContainer .mainBox')[index].style.display = 'block';

    $('.bottomContainer').animate({ 'height': '314px' })
    $('.bottomContainer ul:first li:first').addClass('on');
}

function closeTabs() {
    tabsIsClosed = true;
    $('#gallery').hide()
    $('.contentContainer').animate({ 'height': '314px' })
    $('.contentContainer .collapsed').hide();
    $('.contentContainer .open').show();
    /* Aggiunta per gallery */
    $('.contentContainerGallery').animate({ 'height': '75px', 'width': '880px' })
    $('.contentContainerGallery .collapsed').hide();
    $('.contentContainerGallery .open').show();

    $('.bottomContainer').animate({ 'height': '30px' })
    $('.bottomContainer ul:first li').removeClass('on');
    $('.bottomContainer ul:first li span').removeClass('off');
}

function listDestinationHide() {
    $('#listDestination').hide();
}

function listLanguageHide() {
    $('#listLanguage').hide();
}

function centerMenu() {
    /* centro il menu principale */
    var menuLenght = 0;
    $('ul.sf-menu:first').children().each(function () {
        var extraWidth = 0;
        extraWidth += parseInt($(this).css("padding-left")) + parseInt($(this).css("padding-right"));
        extraWidth += parseInt($(this).css("margin-left")) + parseInt($(this).css("margin-right"));
        menuLenght += $(this).width() + extraWidth; //10 pixel of margin for each li
    })

    var positionMenu = (952 - menuLenght) / 2;
    $('.globalnav').css({ 'margin-left': positionMenu + 'px' });
    $('.globalnav').css({ 'visibility': 'visible' });

    /* centro il menu nel footer */
    menuLenght = 0;
    $('ul.sf-menu-bottom').children().each(function () {
        var extraWidth = 0;
        extraWidth += parseInt($(this).css("padding-left")) + parseInt($(this).css("padding-right"));
        extraWidth += parseInt($(this).css("margin-left")) + parseInt($(this).css("margin-right"));
        menuLenght += $(this).width() + extraWidth;
    })
    if ($.browser.msie && parseInt($.browser.version) == 7) {
        menuLenght -= 30;
    }
    var positionMenu = (952 - menuLenght) / 2;
    $('.botnav').css({ 'margin-left': positionMenu + 'px' });
}


function createScrollBloccoCentrale() {
    var containerHeight = $('.contentContainer').height();
    var topLink = $('.contentContainer .superiorLink').calculateTotalHeight();
    var titleHeight = $('.contentContainer h1').calculateTotalHeight();
    var filettoHeight = $('.filettoSlider').calculateTotalHeight();
    var bottomLeftLink = $('.contentContainer #leftLink').calculateTotalHeight();
    var bottomRightLink = $('.contentContainer #rightLink').calculateTotalHeight();

    var bottomLink = bottomLeftLink;
    if (bottomRightLink > bottomLeftLink) {
        bottomLink = bottomRightLink;
    }

    var boxContentHeight = containerHeight - topLink - titleHeight - filettoHeight - bottomLink - 5;
    var lineHeight = parseInt($('.contentContainer .text').css('line-height'));
    boxContentHeight = Math.floor(boxContentHeight / lineHeight) * lineHeight;

    $('.contentContainer .text').css({ 'height': boxContentHeight });
    $('#pane2').jScrollPane({ showArrows: true });    
}

jQuery.fn.calculateTotalHeight = function () {
    var totalHeight = 0;
    totalHeight = this.height();
    totalHeight += parseInt(this.css("padding-top")) + parseInt(this.css("padding-bottom"));
    totalHeight += parseInt(this.css("margin-top")) + parseInt(this.css("margin-bottom"));
    if (isNaN(totalHeight)) {
        totalHeight = 0;
    }
    return totalHeight;
};

/*function setBackgroundBottomLink() {
    $('#leftLink ul li a, #rightLink ul li a').each(function () {
        $(this).append('<img src="/img/freBottomMenu.gif" alt="" style="padding:0 0 0 10px"/>');
    });
}*/