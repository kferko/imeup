// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require user
//= require best_in_place
//= require websocket_rails/main
//= require turbolinks
//= require gridstack-js-rails-underscore
//= require_tree .

$(document).on('DOMMouseScroll mousewheel', '.Scrollable', function(ev) {
    var $this = $(this),
        scrollTop = this.scrollTop,
        scrollHeight = this.scrollHeight,
        height = $this.height(),
        delta = (ev.type == 'DOMMouseScroll' ?
            ev.originalEvent.detail * -40 :
            ev.originalEvent.wheelDelta),
        up = delta > 0;

    var prevent = function() {
        ev.stopPropagation();
        ev.preventDefault();
        ev.returnValue = false;
        return false;
    }

    if (!up && -delta > scrollHeight - height - scrollTop) {
        // Scrolling down, but this will take us past the bottom.
        $this.scrollTop(scrollHeight);
        return prevent();
    } else if (up && delta > scrollTop) {
        // Scrolling up, but this will take us past the top.
        $this.scrollTop(0);
        return prevent();
    }
});

$(document).ready(function() {
    $("#me_top_1").on("click", function(){
        $("#profile").show();
        $("#consearch").hide();
        $("#contacts").hide();
    });
    $("#up_top_1").on("click", function(){
        $("#contacts").show();
        $("#consearch").hide();
        $("#profile").hide();
    });
    $("#eye_top_1").on("click", function(){
        $("#consearch").show();
        $("#profile").hide();
        $("#contacts").hide();
    });
});

