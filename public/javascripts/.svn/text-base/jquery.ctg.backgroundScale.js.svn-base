(function ($) {
    $.fn.backgroundScale = function (options) {

        // build main options before element iteration

        var defaults = {
            constraint: "height",
            minWidth: 952,
            maxWidth: 1255,
            //minHeight : 900 * 990 / 1280, //609,it's absoluty an error of proportional 1280:900=minWidth:minHeight is different from 609
            //maxHeight : 900 * 1255 / 1280, //680,it's absoluty an error of proportional 1280:900=maxWidth:maxHeight is different from 680
            minHeight: 569,
            maxHeight: 680,
            ratioWidth: 1300,
            ratioHeight: 867,
            imgHolder: ".bg-container",
            imgClass: ".bg-image",
            containerClass: ".main-container"
        }


        var settings = $.extend({}, defaults, options);

        var $this = $(this);
        var holder = $(settings["imgHolder"]);
        var bgImage = $(settings["imgClass"]);
        var mainContainer = $(settings["containerClass"]);

        var calcHeight = function (w) {
            return w * settings["ratioHeight"] / settings["ratioWidth"];
        };

        var calcWidth = function (h) {
            return h * settings["ratioWidth"] / settings["ratioHeight"];
        };
        var winWidth, winHeight;

        var getWindowSize = function () {
            winWidth = window.innerWidth
								|| document.documentElement && document.documentElement.clientWidth
								|| document.body.clientWidth;
            winHeight = window.innerHeight
							|| document.documentElement && document.documentElement.clientHeight
							|| document.body.clientHeight;
        }

        //set position central box
        var resetContent = function () {
            var heightAvailable = winHeight;
            var marginTopValue = (heightAvailable - 162 - 60 - 340) / 2; // 162 top, 60 footer and bottom tabs, 340 content height
            if (marginTopValue < 0) {
                marginTopValue = 0;
            }
            $('.contentContainer').css({ 'marginTop': marginTopValue })
            $('.contentContainer').css({ 'visibility': 'visible' });
        }

        var resetImage = function () {

            // get window height and width

            var customSize = {
                imgWidth: calcWidth(winHeight),
                imgHeight: winHeight,
                holderWidth: calcWidth(winHeight),
                holderHeight: winHeight,
                imgMargin: 0,
                holderMargin: 0
            }
            if (winWidth < settings["minWidth"]) {
                // window width is smaller than content area
                // background image will crop

                if (winHeight < settings["minHeight"]) {
                    customSize = {
                        imgWidth: settings["minWidth"],
                        imgHeight: calcHeight(settings["minWidth"]),
                        holderWidth: settings["minWidth"],
                        holderHeight: settings["minHeight"],
                        holderMargin: 0,
                        imgMargin: 0
                    }
                } else {
                    customSize = {
                        imgWidth: calcWidth(winHeight),
                        imgHeight: winHeight,
                        holderWidth: settings["minWidth"],
                        holderHeight: winHeight,
                        holderMargin: 0,
                        imgMargin: -(customSize["imgWidth"] - winWidth) / 2
                    }
                    if (customSize["imgWidth"] < settings["minWidth"]) {
                        customSize = {
                            imgWidth: settings["minWidth"],
                            imgHeight: calcHeight(settings["minWidth"]),
                            holderWidth: settings["minWidth"],
                            holderHeight: winHeight,
                            holderMargin: 0,
                            imgMargin: 0
                        }
                    }
                }
            } else {
                if (winHeight < settings["minHeight"]) {
                    customSize = {
                        imgWidth: settings["minWidth"],
                        imgHeight: calcHeight(settings["minWidth"]),
                        holderWidth: settings["minWidth"],
                        holderHeight: settings["minHeight"],
                        holderMargin: (winWidth - settings["minWidth"]) / 2 - 8,
                        imgMargin: 0
                    }
                } else {
                    customSize = {
                        imgWidth: calcWidth(winHeight),
                        imgHeight: winHeight,
                        holderWidth: winWidth,
                        holderHeight: winHeight,
                        holderMargin: 0,
                        imgMargin: -(customSize["imgWidth"] - winWidth) / 2
                    }
                    if (customSize["imgWidth"] < settings["minWidth"]) {
                        customSize = {
                            imgWidth: settings["minWidth"],
                            imgHeight: calcHeight(settings["minWidth"]),
                            holderWidth: settings["minWidth"],
                            holderHeight: winHeight,
                            holderMargin: (winWidth - settings["minWidth"]) / 2,
                            imgMargin: 0
                        }
                    }
                }
            }

            //set new height and width for image
            bgImage = $(settings["imgClass"]);
            bgImage.css({
                height: customSize["imgHeight"],
                width: customSize["imgWidth"],
                "marginLeft": customSize["imgMargin"]
            });

            //set scroll image
            $('#gallery #image').css({ width: customSize["imgWidth"] })

            // set height and width for image holder
            holder.css({
                height: customSize["holderHeight"],
                width: customSize["holderWidth"],
                "marginLeft": customSize["holderMargin"],
                left: 0,
                overflow: "hidden"
            });

            mainContainer.css({
                "marginLeft": customSize["holderMargin"]
            });

            // reset content wrapper height to match the height of the background image
            $this.css({
                height: customSize["holderHeight"],
                "minHeight": customSize["holderHeight"]
            });

            // custom resize header/footer
            var resetHeader = function () {
                var _header = $(".header");
                if (parseInt($(".bg-container").css("width")) <= settings["minWidth"]) {

                    _header.find(".hd-transparent-holder").css({
                        width: customSize["holderWidth"],
                        "marginLeft": customSize["holderMargin"]
                    });

                    mainContainer.css({
                        "marginLeft": customSize["holderMargin"]
                    });

                    mainContainer.find(".content").css({
                        "marginLeft": 0
                    });

                } else {

                    _header.find(".hd-transparent-holder").css({
                        width: customSize["imgWidth"],
                        "marginLeft": customSize["imgMargin"]
                    });

                    mainContainer.css({
                        "marginLeft": 0 //customSize["imgMargin"]
                    });

                    mainContainer.find(".content").css({
                        "marginLeft": "auto"
                    });
                }
            }
            var resetFooter = function () {
                var _footer = $(".footer");
                if (parseInt($(".bg-container").css("width")) <= settings["minWidth"]) {

                    _footer.find(".transparent-holder").css({
                        width: customSize["holderWidth"],
                        "marginLeft": customSize["holderMargin"]
                    });

                } else {

                    _footer.find(".transparent-holder").css({
                        width: customSize["imgWidth"],
                        "marginLeft": customSize["imgMargin"]
                    });
                }
            }
            resetHeader();
            resetFooter();

            // trigger custom callback
            if (typeof settings.onScaleComplete == "function") {
                settings.onScaleComplete.call(this, customSize);
            }
        }

        $(window).resize(function () {
            getWindowSize();
            resetContent();
            centerMenu();
            resetImage();
            resetIframePositionForReservation();
        });

        $(window).load(function () {
            getWindowSize();
            resetContent();
            centerMenu();
            resetImage();
            resetIframePositionForReservation();
        })

        return;
    };

    function init() {
    };

})(jQuery);


function initScale() {
    // initialize background scaling
    var options = {
        onScaleComplete: (typeof scaleComplete == "function") ? scaleComplete : null
    };
    $(".landing").backgroundScale(options);
}

$(document).ready(function () {
    // initialize background scaling
    var options = {
        onScaleComplete: (typeof scaleComplete == "function") ? scaleComplete : null
    };

    $(".landing").backgroundScale(options);
});