$(function () {
    var zztitle = $(document)[0].title;

    var zzzz1 = $('#zzzz1');
    var zzzz2 = $('#zzzz2');
    var zzzz3 = $('#zzzz3');
    var zzzz4 = $('#zzzz4');
    var zzzz5 = $('#zzzz5');
    var zzzz6 = $('#zzzz6');
    if (zztitle == "主页") {
        zzzz1.addClass('selected');
        zzzz2.removeClass('selected');
        zzzz3.removeClass('selected');
        zzzz4.removeClass('selected');
        zzzz5.removeClass('selected');
        zzzz6.removeClass('selected');
    } else if (zztitle == "二手房") {
        zzzz2.addClass('selected');
        zzzz1.removeClass('selected');
        zzzz3.removeClass('selected');
        zzzz4.removeClass('selected');
        zzzz5.removeClass('selected');
        zzzz6.removeClass('selected');
    } else if (zztitle == "新房") {
        zzzz3.addClass('selected');
        zzzz1.removeClass('selected');
        zzzz2.removeClass('selected');
        zzzz4.removeClass('selected');
        zzzz5.removeClass('selected');
        zzzz6.removeClass('selected');
    } else if (zztitle == "租房") {
        zzzz4.addClass('selected');
        zzzz1.removeClass('selected');
        zzzz2.removeClass('selected');
        zzzz3.removeClass('selected');
        zzzz5.removeClass('selected');
        zzzz6.removeClass('selected');
    } else if (zztitle == "我要卖房") {
        zzzz5.addClass('selected');
        zzzz1.removeClass('selected');
        zzzz2.removeClass('selected');
        zzzz3.removeClass('selected');
        zzzz4.removeClass('selected');
        zzzz6.removeClass('selected');
    } else if (zztitle == "我要出租") {
        zzzz6.addClass('selected');
        zzzz1.removeClass('selected');
        zzzz2.removeClass('selected');
        zzzz3.removeClass('selected');
        zzzz4.removeClass('selected');
        zzzz5.removeClass('selected');
    }

});