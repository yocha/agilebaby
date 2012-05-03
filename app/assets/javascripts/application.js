// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery-ui
//= require jquery_ujs
//= require dataTables/jquery.dataTables
//= require twitter/bootstrap
//= require_tree .

(function() {
 $(function() {
   return $('#record_feed').click(function() {
     return $.post($(this).data('update-url'))
     });
   });
 }).call(this);

(function() {
 $(function() {
   return $('#record_poop').click(function() {
     return $.post($(this).data('update-url'))
     });
   });
 }).call(this);

(function() {
 $(function() {
   return $('#record_pee').click(function() {
     return $.post($(this).data('update-url'))
     });
   });
 }).call(this)
