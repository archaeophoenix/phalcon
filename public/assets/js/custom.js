var baseUri = $('#baseUri').val();

$(document).ready(() =>  {
  users();

  $('.page-nav').click(function(){
    var page = $(this).attr('rel');
    users(page);
  });

  $('#name').keyup(function(){
    users();
  });
});

function direct(url = ''){
  window.location = baseUri + url;
}

function usersTag(data){
  // console.log(data);
  return '<tr><td class="text-center">' + data.id + '</td><td>' + data.name + '</td><td>' + data.email + '</td><td class="text-center"><a class="btn btn-sm btn-outline-info" title="Edit" onclick="direct(' + "'" + 'users/form/?id=' + data.id + "'" + ');">📝</a><a class="btn btn-sm btn-outline-dark" title="Delete" onclick="direct(' + "'" + 'users/delete/?id=' + data.id + "'" + ');">🗑</a></td></tr>';
}

async function users(page = null){
  var name = $('#name').val();

  page = (page) ? '&page=' + page : '' ;
  name = (name) ? '&name=' + name : '' ;

  var tag = '';
  var data = await $.get(baseUri + 'users/?' + page + name);

  for(var i in data.items){
    tag += usersTag(data.items[i]);
  }

  $('#prev').attr('rel', data.current - 1);
  $('#next').attr('rel', data.current + 1);

  if (data.last == 1) {
    $('.page-nav').attr('disabled','disabled');
  } else {
    $('.page-nav').removeAttr('disabled');
  }

  if (data.current == 1) {
    $('#prev').attr('disabled','disabled');
  } else {
    $('#prev').removeAttr('disabled');
  }

  if (data.last == data.current) {
    $('#next').attr('disabled','disabled');
  } else {
    $('#next').removeAttr('disabled');
  }

  $('#users').html(tag);
}

function validateEmail(email) {
  var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
  return re.test(email);
}

function validate() {
  var $result = $("#result");
  var email = $("#email").val();
  $result.text("");

  if (validateEmail(email)) {
    $result.text(email + " is valid :)");
    $result.css("color", "green");
  } else {
    $result.text(email + " is not valid :(");
    $result.css("color", "red");
  }
  return false;
}