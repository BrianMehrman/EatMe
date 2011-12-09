// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
//
$(document).ready(function() {
	$(".fold").hide();

	$("h2.trigger").click(function(){
		$(this).toggleClass("active").next().slideToggle();
	});
  // ajax call to sever to update tracks
  $(".food .measurement").click(
    // send info to server
    // 
    // return updated calories
  );
  // ajax call to server to update tracks
  $(".food .unit").click(
  // send info to server
  //
  // return updated calories ( or more abstractly update the tracks shown
  );
});
