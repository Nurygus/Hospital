$(document).ready(function(){
    // toggling blocks
    $('.block-preview').each(function(){
        $(this).click(function(){
            var currentBlock = $(this).parent().children('.block-data');
            $('.block-data').not(currentBlock).slideUp();
            currentBlock.slideToggle();
        });
    });
});
