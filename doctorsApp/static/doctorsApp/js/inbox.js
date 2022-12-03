$(document).ready(function(){
    $('.message-forward').click(function(){
        $('#message-id').attr('value', $(this).attr('id'));
        $('.send-block').css('display', 'block');
    });

    $('.close-icon').click(function(){
        $('.send-block').css('display', 'none');
    })
    
    var sidebarHeight = parseFloat($('#sidebar').css('height'));
    var servicesHeight = parseFloat($('#services').css('height'));
    if (servicesHeight > sidebarHeight){
        $('#sidebar').css('height', servicesHeight + 'px');
    }
});
