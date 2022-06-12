const base_url = window.location.origin;
const base_path = window.location.pathname.split( '/' )[1];
const prefix_url = base_url+'/'+base_path+'/';

var token;
var delete_id;
var which_function;

function custom_confirmation(_token, id, func)
{
    token = _token;
    delete_id = id;
    which_function = func;

    console.log(_token+'-'+func);
    $('body').append(`
        <div class="modal modal-dark" id="modal-password-confirmation">
            <div class="bg-white shadow" style="width: 100%; max-width: 400px; padding: 20px; border-radius: 5px;">
                <header class="mb-2" style="text-align: center;">Masukkan Password untuk melanjutkan</header>
                <form id="password_confirmation" onsubmit="return get_confirmation_status(event);">
                    <div class="form-group mb-3">
                        <input type="password" id="field-password_confirmation" name="password_confirmation" required class="form-control" placeholder="********">
                        <small class="text-danger">Data yang anda hapus merupakan data master. Harap konfirmasi password untuk melanjutkan</small>
                    </div>
                    <button class="btn btn-info btn-sm btn-block">Konfirmasi</button>
                    <div style="text-align: center;">
                        <small class="pointer text-danger" onclick="close_modal(this);" data-modal="password-confirmation">Batal</small>
                    </div>
                </form>
            </div>
        </div>`);

    $('#modal-password-confirmation').css({
        'display':'grid',
        'place-items':'center',
    }).fadeIn('fast');

    // console.log(confirmation_status);
}
function get_confirmation_status(event, c_)
{
    event.preventDefault();

    custom_password_confirmation(function(c){
        console.log(c);
        if (c==1) {
            var func = new Function(
                 "return "+which_function+"(token, delete_id)"
            )();
            $('#modal-password-confirmation').fadeOut('fast');
        }else{
            console.log('Password Anda tidak sesuai');
        }
        $('#password_confirmation')[0].reset();
    })
}
function custom_password_confirmation(callback)
{
    var confirmation_status;
    var password = $('#field-password_confirmation').val();
    $.ajax({
        type : 'post',
        url : base_url+'/password_confirmation',
        data : {_token:token,'password':password},
        success:function(data)
        {
            if (data['type']=='ok') {
                confirmation_status = 1;
            }else{
                confirmation_status = 0;
            }
            callback(confirmation_status);
        },error:function()
        {
            error();
        }
    })
}

function show_password_confirmation_4_del(token, id)
{
    console.log(token);
    $('body').append(`
        <div class="modal modal-dark" id="modal-password-confirmation">
            <div class="bg-white shadow" style="width: 100%; max-width: 400px; padding: 20px; border-radius: 5px;">
                <header class="mb-2" style="text-align: center;">Masukkan Password untuk melanjutkan</header>
                <form id="password_confirmation-`+id+`" onsubmit="return password_confirmation_4_del(event, this)"; data-id='`+id+`' data-token='`+token+`'">
                    <div class="form-group mb-3">
                        <input type="password" id="field-password_confirmation" name="password_confirmation" required class="form-control" placeholder="********">
                        <small class="text-danger">Data yang anda hapus merupakan data master. Harap konfirmasi password untuk melanjutkan</small>
                    </div>
                    <button class="btn btn-info btn-sm btn-block">Konfirmasi</button>
                    <div style="text-align: center;">
                        <small class="pointer text-danger" onclick="close_modal(this);" data-modal="password-confirmation">Batal</small>
                    </div>
                </form>
            </div>
        </div>`);

    $('#modal-password-confirmation').css({
        'display':'grid',
        'place-items':'center',
    }).fadeIn('fast');
}

function password_confirmation_4_del(event, selector)
{
    event.preventDefault();
    var id = $(selector).data('id');
    var token = $(selector).data('token');
    var password = $('#field-password_confirmation').val();
    $.ajax({
        type : 'post',
        url : base_url+'/password_confirmation',
        data : {_token:token,'password':password},
        success:function(data)
        {
            if (data['type']=='ok') {
                console.log('password sesuai');
                delete_gudang(id, token);
            }else{
                console.log('password tidak sesuai');
            }
        },error:function()
        {
            error();
        }
    })
}

function success(msg)
{
    $('#success-modal').fadeIn('fast').css({
        'display':'grid',
        'place-items':'center',
    });

    $('#success-msg-bag').html(msg);

    setTimeout(function(){
        $('#success-modal').fadeOut('fast');
    },1000);
}

function close_modal(selector)
{
    $('#modal-'+$(selector).data('modal')).css({
        'display':'none',
    }).fadeOut('fast');
    console.log($(selector).data('modal'));
}

function closeModal(modal_id)
{
    $('#'+modal_id).css({
        'display':'none',
    }).fadeOut('fast');
}

function remove_modal(modal_id)
{
    $('#modal-'+modal_id).remove();
}

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
$('.content').click(function(){
    var window_widht = $(window).width();
    if (window_widht<400) {
        hide_sidebar();
    }
})

$("#restart").click(function () {
  $(".check-icon").hide();
  setTimeout(function () {
    $(".check-icon").show();
  }, 10000);
});

var sidebar_status = 'on';
$( window ).resize(function(){
    var width = $(window).width();
    if (width<=1000) {
        hide_sidebar();
    }else{
        show_sidebar();
    }
})

$( window ).on( "load", function() {
    var width = $(window).width();
    if (width>=1000) {
        show_sidebar();
    }else{
        // hide_sidebar();
        $('#show-sidebar').show()
        $('.hide-sidebar').hide();
        $('.sidebar').hide();
    }
});

// $('.hide-sidebar').click(function(){
//     hide_sidebar();
//     console.log('hide');
// })

// $('#show-sidebar').click(function(){
//     show_sidebar();
//     console.log('show');
// })

function hide_sidebar(sidebar_status){
    sidebar_status = 'off';
    $('.hide-sidebar').hide();
    $('.show-sidebar').show();
    $('.sidebar').addClass('sidenav-hide').removeClass('sidenav-show');
    $('.main').addClass('main-full').removeClass('main-half');
}

function show_sidebar(sidebar_status)
{
    $('.sidebar').show();
    sidebar_status = 'on';
    $('.show-sidebar').hide()
    $('.hide-sidebar').show();
    $('.sidebar').addClass('sidenav-show').removeClass('sidenav-hide');
    $('.main').removeClass('main-full').addClass('main-half');
}

// var dropdown = $('.dropdown-btn');
// var i;

$(document).ready(function()
{
    $('#sidebar-'+base_path+'-container').css('display','block');

    $('.dropdown-btn').click(function(){
    console.log('clicked');
    var dropdownContent = this.nextElementSibling;
    // console.log(dropdownContent.className)
    if (dropdownContent.style.display === "block") {
        // $(dropdownContent).slideUp();
        dropdownContent.style.display = "none";
        // dropdownContent.slideUp();
    } else {
        // $(dropdownContent).slideDown();
        dropdownContent.style.display = "block";
        // dropdownContent.slideDown();
    }
})
})