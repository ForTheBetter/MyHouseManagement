$(document).ready(function () {
    $(".search_condition_area a").click(function () {
        $(".search_condition_area a").css("color", "blue");
        $(this).css("color", "red");
    });
    $(".search_condition_price a").click(function () {
        $(".search_condition_price a").css("color", "blue");
        $(this).css("color", "red");
    });
    $(".search_condition_roomKind a").click(function () {
        $(".search_condition_roomKind a").css("color", "blue");
        $(this).css("color", "red");
    });
    $(".search_condition_type a").click(function () {
        $(".search_condition_type a").css("color", "blue");
        $(this).css("color", "red");
    });


    $(".search_input_text").focus(function () {
       // alert("test");
        $(this).val("");
        $(this).css("color", "black");

    });
    $(".search_input_text").blur(function () {
        // alert("test");
        $(this).val("请输入房源特征,地点或小区名...");
        $(this).css("color", "#999999");

    });
});