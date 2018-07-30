//= require rails-ujs
//= require turbolinks
//= require_tree .
//= require jquery3
//= require bootstrap
//= require_tree .

$(document).ready(function () {
    // When the user scrolls down 20px from the top of the document, show the button
    window.onscroll = function() {scrollFunction()};

    function scrollFunction() {
        if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
            $('#scroll_to_top').fadeIn()
        } else {
            $('#scroll_to_top').fadeOut()
        }
    }

});

function topFunction() {
    $('body,html').animate({
        scrollTop: 0
    }, 800);
    //document.body.scrollTop = 0;
    //document.documentElement.scrollTop = 0;
}
