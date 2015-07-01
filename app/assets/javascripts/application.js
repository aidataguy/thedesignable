// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require ckeditor/init
//= bootstrap-sprockets
//= require owl.carousel
//= require typed
//= require nicholasjs
//= require_tree .

$(document).ready(function(){
	setTimeout(function(){
		$('#notice_wrap').fadeOut("slow", function(){
			$(this).remove();
		})
	}, 4500);
});


$(document).ready(function() {
 $("#carousel").owlCarousel({
      slideSpeed : 300,
      paginationSpeed : 400,
      singleItem: true,
      autoPlay: true,
      stopOnHover:false,
      //transitionStyle : "fade"
 
      // "singleItem:true" is a shortcut for:
      // items : 1, 
      // itemsDesktop : false,
      // itemsDesktopSmall : false,
      // itemsTablet: false,
      // itemsMobile : false
 
  });
 
});

$(function(){
      $("#typeText").typed({
            strings: ["Hey There!"," Glad To See You. :)", "We Design, We create", "Apps, Websites, Banner Designs","... and a lot more, you name it!","We Are The Designable LLC"],
            typeSpeed: 100
      });
});

//Disqus JavaScript

/* * * Comments JS* * */
var disqus_shortname = 'thedesignable';

/* * * DON'T EDIT BELOW THIS LINE * * */
(function() {
var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
(document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
})();

/* * * COmment Counts* * */
(function () {
  var s = document.createElement('script'); s.async = true;
  s.type = 'text/javascript';
  s.src = '//' + disqus_shortname + '.disqus.com/count.js';
  (document.getElementsByTagName('HEAD')[0] || document.getElementsByTagName('BODY')[0]).appendChild(s);
}());