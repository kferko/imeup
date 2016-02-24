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

});

$('.leftbar').gridstack({
    resizable: false
});