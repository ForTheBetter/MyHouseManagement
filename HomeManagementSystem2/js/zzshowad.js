jQuery.noConflict();
//========================三图轮播广告=======================
jQuery(function () {
    adPrevAllow = true,
    adNextAllow = true;

    //点击上一页
    jQuery('#ad-prev').click(function () {
        if (adPrevAllow == true) {
            adPrevAllow = false;
            jQuery('.ad-scroll-ul').css('left', '-700px');
            jQuery('.ad-scroll-ul li:last').prependTo('.ad-scroll-ul');
            jQuery('.ad-scroll-ul').animate({
                left: 0
            }, 1000, function () {
                adPrevAllow = true;
            })
        }
    });

    //点击下一页
    jQuery('#ad-next').click(function () {
        if (adNextAllow == true) {
            adNextAllow = false;
            jQuery('.ad-scroll-ul').animate({
                left: -700
            }, 1000, function () {
                jQuery('.ad-scroll-ul li:first').appendTo('.ad-scroll-ul');
                jQuery('.ad-scroll-ul').css('left', '0');
                adNextAllow = true;
            })
        }
    });

    jQuery(function () {
        var isRun = true;
        var IFX = jQuery("#IFX_p934,#ad-next,#ad-prev");
        IFX.live("hover", function () {
            isRun = false;
        }).live("mouseover", function () {
            isRun = false;
        }).live("mouseout", function () {
            isRun = true;
        });


        // 5秒自动滚动
        setInterval(rollAdvert, 5000);
        function rollAdvert() {
            if (isRun == false) {
                return false;
            }
            var ad_next = jQuery('#ad-next');
            ad_next.click();
        }
    });

})
//========================三图轮播广告（结束）=======================