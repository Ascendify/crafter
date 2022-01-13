ascendify_map_marker_change_function = function(elm) {
	elm.css('fill','#a48dc2');
};


// Determine whether to display the nav menu button
function check_nav_toggle() {
  if ($(window).width() > 767) {
      $('#navbar-hide').addClass('hidden');
      $('nav#main-nav').removeClass('mobile');
      if ( $('body').hasClass('scrolled-down') || $('nav#main-nav').hasClass('no-banner')) {
          $('#scroll-toggle').removeClass('hidden');
      } else {
          $('#scroll-toggle').addClass('hidden');
      }  
  } else {
      $('nav#main-nav').addClass('mobile');
  }
}

function move_map_zoom() {
   $(window).on('load resize', function(){
      var screen_width = $(window).width();
      if ( screen_width <= 768 ) {
         $(".leaflet-control-zoom").hide();
      } else {
         $(".leaflet-control-zoom").insertBefore("#jobs-sidebar").show();
      }
   });
}

//using the enter key for the search was giving an error 
function enter_key_search(){
   $('#job-skill-search').keypress(function(e){
     var key = e.which;
     if (key == 13)
     {
         $('#job-search-submit').click()
         return false;  
     }
   });
}

function home_search_select(){
   $('.ui-autocomplete').click(function(){
      $('#job-search-submit').click()
      return false;  
   })
}

function activateGlobalSearch()
{
    $("#job-location-search").each(function(){
        $(this).focus(function(){
            var me = $(this),
            loc_coords = $('#location-map-coords');
            me.autocomplete({
                minLength:2,
                delay:200,
                source: function( request, response ) {
                    me.Ascendify('getLocationSuggest',{api:'jobsapi',value:me.val(),response:response, open_only:1});
                },
                select:function(event,ui)
                {
                    loc_coords.val(ui.item.coord_id);
                }
            });
        });
    });

    $('#job-skill-search').each(function() {
        var me = $(this);
        $(this).autocomplete({
            minLength:2,
            source: function( request, response ) {
                $(this).Ascendify('getAutoSuggest',{
                    api:'appapi',
                    method:'getJobSuggest',
                    value:me.val(),
                    open_only:1,
                    response:response
                });
            },
            select:function(event,ui)
            {
                
            } 
        });
    });
}

// #to-top functionality: all from WP Salient theme
$(function() {
  var windowHeight, pageHeight, footerHeight, ctaHeight;
  var scrollTop = $(window).scrollTop();
  hideToTop();

  //starting bind
  if( $('#to-top').length > 0 && $(window).width() > 1020) {
    
    if(scrollTop > 350){
      $(window).bind('scroll',hideToTop);
    }
    else {
      $(window).bind('scroll',showToTop);
    }
  }
  function showToTop(){
    
    if( scrollTop > 350 ){
      $('#to-top').delay(350).removeClass('hidetop');
      // $('#to-top').stop(true,true).animate({
      //   'bottom' : '17px'
      // },350,'easeInOutCubic');  
      
      $(window).unbind('scroll',showToTop);
      $(window).bind('scroll',hideToTop);
    }

  }

  function hideToTop(){
    
    if( scrollTop < 350 ){
      $('#to-top').delay(350).addClass('hidetop');
      // $('#to-top').stop(true,true).animate({
      //   'bottom' : '-30px'
      // },350,'easeInOutCubic');  
      
      $(window).unbind('scroll',hideToTop);
      $(window).bind('scroll',showToTop); 
      
    }
  }

  function calcToTopColor(){
    scrollTop = $(window).scrollTop();
    windowHeight = $(window).height();
    pageHeight = $('body').height();
    footerHeight = $('#footer-outer').height();
    ctaHeight = ($('#call-to-action').length > 0) ? $('#call-to-action').height() : 0;
    
    if( (scrollTop-35 + windowHeight) >= (pageHeight - footerHeight) ){
      $('#to-top').addClass('dark');
    }
    
    else {
      $('#to-top').removeClass('dark');
    }
  }

  //to top color
  if( $('#to-top').length > 0 ) {
    
    //calc on scroll
    $(window).scroll(calcToTopColor);
    
    //calc on resize
    $(window).resize(calcToTopColor);

  }

  //scroll up event
  $('#to-top').click(function(){
    $("html, body").animate({ scrollTop: 0 }, 600);
    return false;
  });
});