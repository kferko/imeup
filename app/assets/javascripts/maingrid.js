// $(function () {
//     var options = {
//         cellHeight: 80,
//         verticalMargin: 10,
//     };
//     $('.main').gridstack(options);
// });

$(function () {
    var options = {
        cellHeight: 80,
        verticalMargin: 10,
        staticGrid: true
    };
    $('.top').gridstack(options);

    options = {
        cellHeight: 80,
        verticalMargin: 10,
    };
    $('.main').gridstack(options);

        options = {
        cellHeight: 50,
        verticalMargin: 10,
        staticGrid: true
    };
    $('.bott').gridstack(options);

});

$('.leftbar').gridstack({
    resizable: false
});