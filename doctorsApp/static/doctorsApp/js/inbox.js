$(document).ready(function(){
    $('.message-forward').click(function(){
        $('#message-id').attr('value', $(this).attr('id'));
        $('.send-block').css('display', 'block');
    });

    $('.close-icon').click(function(){
        $('.send-block').css('display', 'none');
    })
});
