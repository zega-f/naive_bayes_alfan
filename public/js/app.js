function processed()
{
    $('.processed_modal').fadeIn('fast').css({
        'display':'grid',
        'place-items':'center',
    });
}
function finish()
{
    $('.processed_modal').fadeOut('fast');
}
function error()
{
    $('.processed_modal').fadeIn('fast').css({
        'display':'grid',
        'place-items':'center',
    });
    $('#msg-bag').text('Terjadi Error');
    setTimeout(function(){
        $('.processed_modal').fadeOut('fast');
        setTimeout(function(){
            $('#msg-bag').text('Sedang Diproses');
        },1000)
    },2000);
}