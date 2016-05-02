//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .


$(document).ready(function(){
	$('#unfollow_btn').hover(function(){
		$(this).removeClass('btn-primary');
		$(this).addClass('btn-danger');
		$(this).html('Unfollow');
	}, function(){
		$(this).html('Following');
		$(this).removeClass('btn-danger');
		$(this).addClass('btn-primary')
	});
});
