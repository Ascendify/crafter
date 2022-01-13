<#import "/templates/system/common/crafter.ftl" as crafter />
<!doctype html>
<html lang="en">
  <head>
    <#include "/templates/web/fragment/head.ftl">
    <#-- Insert your head markup here -->
    <@crafter.head />
  </head>
  <body  data-device-type="desktop">
    <@crafter.body_top />

	<nav id="main-nav" class="nav" role="navigation">
	<div id="cookies-acceptance-wrapper" class="row" style="display: none;">
		<div class="col-sm-8 message">
			We use cookies to help us offer you the best online experince. By continuing to use our website and/or clicking OK, you're agreeing to our use of cookies in accordance with our cookies policy
		</div>
		<div class="col-sm-4 text-right">
			<button class="ok-button">OK</button>
			<div class="tell-me-more-link">
				Tell me more
			</div>
		</div>
	</div>
	<div class="logo">
		<div class="ascendify">
			<a href="https://talent.ascendify.com/" class="logo__ascendify-white"></a>
			<a href="https://talent.ascendify.com/" class="logo__ascendify"></a>
		</div>
	</div>
	<div class="nav__btn">
		<label for="nav-check">
			<span></span>
			<span></span>
			<span></span>
		</label>
	</div>
	<div class="nav__links">
		<div class="nav__btn--close">
			<div class="icon__close"></div>
		</div>
		<a href="https://talent.ascendify.com/careers" class="section__nav safari_redirect_link" id="careers">Careers<span>.</span></a>
		<a href="https://talent.ascendify.com/teams" class="section__nav" id="teams">Teams<span>.</span></a>
		<a href="https://talent.ascendify.com/who-we-are" class="section__nav" id="life">Ascendify Life<span>.</span></a>

					<a href="https://talent.ascendify.com/signin" id="signin" class="inverted standard safari_redirect_link">Sign In</a>
			<script type="text/javascript">
				checkLogin();
			</script> 
		
			</div>

	
</nav>
<script type="text/javascript">

</script>

	<div id="main_container" class="desktop">
		<div id="homepage" class="_landing landing_content">
            
            <#include "/templates/web/fragment/hero.ftl">
            
            
	<div class="content">
		<section class="home-search-box pattern--white">			
			<div class="container">
				<form id="career-search-form">
					<input class="search-query candidate-filter ui-autocomplete-input" id="job-skill-search" name="filter[search][1]" placeholder="Search for jobs by keyword" type="text" value="" autocomplete="off"><span role="status" aria-live="polite" class="ui-helper-hidden-accessible"></span>
					<i class="fa fa-search" id="job-search-submit"></i>
					<input id="job-location-search" class="candidate-filter" name="filter[location][freetext]" type="hidden" value="">
					<input id="location-map-coords" name="filter[location][map_coords]" type="hidden" value="">
				</form>
				<ul class="dropdown clearfix browse-jobs">
					<li>
						<div href="#" id="browse-teams-list" class="dropdown dropdown-toggle" data-toggle="dropdown">
							Browse for jobs by community  
							<i class="fa fa-angle-down" id="browse-icon"></i>
						</div>
						<ul class="dropdown-menu">
							<li><a href="https://talent.ascendify.com/careers" class="safari_redirect_link">All teams</a></li>
							<li><a href="https://talent.ascendify.com/design/careers" class="safari_redirect_link">Design</a></li>
							<li><a href="https://talent.ascendify.com/engineering/careers" class="safari_redirect_link">Engineering</a></li>
							<li><a href="https://talent.ascendify.com/marketing/careers" class="safari_redirect_link">Marketing</a></li>
							<li><a href="https://talent.ascendify.com/product/careers" class="safari_redirect_link">Product</a></li>
							<li><a href="https://talent.ascendify.com/qa/careers" class="safari_redirect_link">QA</a></li>
							<li><a href="https://talent.ascendify.com/sales/careers" class="safari_redirect_link">Sales</a></li>
							<li><a href="https://talent.ascendify.com/services/careers" class="safari_redirect_link">Services</a></li>
							<li><a href="https://talent.ascendify.com/support/careers" class="safari_redirect_link">Support</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</section>
 

		<section class="section content-panels">
			<div id="ascvideo" style="display: none;">
				<iframe id="iframe-player-1" frameborder="0" allowfullscreen="1" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" title="YouTube video player" width="100%" height="410" src="/static-assets/img/Ke_TefcWMYo.html"></iframe>
			</div>
			<crafter.div class="section-container container">
	            <!-- DROP GOES HERE -->
	        <#-- Macro docs @ https://docs.craftercms.org/en/4.0/search.html?q=renderComponentCollection&check_keywords=yes&area=default -->
<@crafter.renderComponentCollection $field="actionDropSection_o" $containerAttributes={ "class": "features-actionDropSection_o" } $itemAttributes={ "data-custom-attribute": "true" } />
	         ${contentModel.actionDropSection_o}
	    	</crafter.div>
	</section>
	<section class="section our-people">
		<div class="section-container container">
			<div class="row">
		  <div class="people-content col-sm-offset-1 col-sm-10">
					<h5>Our People</h5>
					<p class="p-quote">Check out what the Ascenders have to say about life at Ascendify.</p>
				</div>
			</div>
			<div id="people-slider"><div id="slideDeck" style="height: 140px;"><div id="slideLeft" class="slideArrow"><i class="fa fa-angle-left" style="margin-top: 55px;"></i></div><div id="slideDeck_inner" style="width: 1050px; height: 130px;"><ul style="margin-left: -130px;"><li style="width: 120px; height: 120px;"><img src="/static-assets/img/cusr_24722100000008290032.png" id="ascendify_employee_profile_image_0" rel="cusr_24722100000008290032" alt="employee profile image" class="link first"></li><li class="hover" style="width: 120px; height: 120px;"><img src="/static-assets/img/cusr_c3483100000007476585.png" id="ascendify_employee_profile_image_1" rel="cusr_c3483100000007476585" alt="employee profile image" class="link"></li><li style="width: 120px; height: 120px;"><img src="/static-assets/img/cusr_e97c8100000008019201.png" id="ascendify_employee_profile_image_2" rel="cusr_e97c8100000008019201" alt="employee profile image" class="link"></li><li style="width: 120px; height: 120px;"><img src="/static-assets/img/cusr_50858100000006467449.png" id="ascendify_employee_profile_image_3" rel="cusr_50858100000006467449" alt="employee profile image" class="link"></li><li style="width: 120px; height: 120px;"><img src="/static-assets/img/cusr_e97fa100000000031726.jpg" id="ascendify_employee_profile_image_4" rel="cusr_e97fa100000000031726" alt="employee profile image" class="link"></li><li style="width: 120px; height: 120px;"><img src="/static-assets/img/cusr_4788e100000000626121.jpg" id="ascendify_employee_profile_image_5" rel="cusr_4788e100000000626121" alt="employee profile image" class="link"></li><li style="width: 120px; height: 120px;"><img src="/static-assets/img/cusr_2ec74100000000031752.jpg" id="ascendify_employee_profile_image_6" rel="cusr_2ec74100000000031752" alt="employee profile image" class="link"></li><li style="width: 120px; height: 120px;"><img src="/static-assets/img/cusr_0f64c100000000313384.jpg" id="ascendify_employee_profile_image_7" rel="cusr_0f64c100000000313384" alt="employee profile image" class="link"></li><li style="width: 120px; height: 120px;"><img src="/static-assets/img/cusr_b76dc100000000289861.jpg" id="ascendify_employee_profile_image_8" rel="cusr_b76dc100000000289861" alt="employee profile image" class="link"></li><li style="width: 120px; height: 120px;"><img src="/static-assets/img/cusr_ed219100000000312915.jpg" id="ascendify_employee_profile_image_9" rel="cusr_ed219100000000312915" alt="employee profile image" class="link"></li><li style="width: 120px; height: 120px;"><img src="/static-assets/img/cusr_0ee4c100000000313453.jpg" id="ascendify_employee_profile_image_10" rel="cusr_0ee4c100000000313453" alt="employee profile image" class="link"></li></ul></div><div id="slideRight" class="slideArrow"><i class="fa fa-angle-right" style="margin-top: 55px;"></i></div>
<div class="popUp" id="asc-mini-profile-cusr_24722100000008290032">
	<div class="popUp_info">
		<p class="popUp_name">Vitaly Ivanchenko</p>
		<p class="popUp_pos">Client Support Manager&nbsp;</p>
		<p class="popUp_loc">&nbsp;</p>
	</div>
	<a href="https://talent.ascendify.com/profile/staff/cusr_24722100000008290032" class="popUp-link btn btn-primary">Meet Vitaly »</a> <!-- - need link to profile page -->
</div>
<div class="popUp" id="asc-mini-profile-cusr_c3483100000007476585">
	<div class="popUp_info">
		<p class="popUp_name">Jonathan Bell</p>
		<p class="popUp_pos">Director of Enterprise Sales&nbsp;</p>
		<p class="popUp_loc">&nbsp;</p>
	</div>
	<a href="https://talent.ascendify.com/profile/staff/cusr_c3483100000007476585" class="popUp-link btn btn-primary">Meet Jonathan »</a> <!-- - need link to profile page -->
</div>
<div class="popUp" id="asc-mini-profile-cusr_e97c8100000008019201">
	<div class="popUp_info">
		<p class="popUp_name">Roel Deuss</p>
		<p class="popUp_pos">Director of Strategic Partnerships&nbsp;</p>
		<p class="popUp_loc">&nbsp;</p>
	</div>
	<a href="https://talent.ascendify.com/profile/staff/cusr_e97c8100000008019201" class="popUp-link btn btn-primary">Meet Roel »</a> <!-- - need link to profile page -->
</div>
<div class="popUp" id="asc-mini-profile-cusr_50858100000006467449">
	<div class="popUp_info">
		<p class="popUp_name">Alex Tolstikhin</p>
		<p class="popUp_pos">QA Engineer&nbsp;</p>
		<p class="popUp_loc">&nbsp;</p>
	</div>
	<a href="https://talent.ascendify.com/profile/staff/cusr_50858100000006467449" class="popUp-link btn btn-primary">Meet Alex »</a> <!-- - need link to profile page -->
</div>
<div class="popUp" id="asc-mini-profile-cusr_e97fa100000000031726">
	<div class="popUp_info">
		<p class="popUp_name">Matt Hendrickson</p>
		<p class="popUp_pos">CEO&nbsp;</p>
		<p class="popUp_loc">&nbsp;</p>
	</div>
	<a href="https://talent.ascendify.com/profile/staff/cusr_e97fa100000000031726" class="popUp-link btn btn-primary">Meet Matt »</a> <!-- - need link to profile page -->
</div>
<div class="popUp" id="asc-mini-profile-cusr_4788e100000000626121">
	<div class="popUp_info">
		<p class="popUp_name">Johnny Chen</p>
		<p class="popUp_pos">Front End Engineer&nbsp;</p>
		<p class="popUp_loc">&nbsp;</p>
	</div>
	<a href="https://talent.ascendify.com/profile/staff/cusr_4788e100000000626121" class="popUp-link btn btn-primary">Meet Johnny »</a> <!-- - need link to profile page -->
</div>
<div class="popUp" id="asc-mini-profile-cusr_2ec74100000000031752">
	<div class="popUp_info">
		<p class="popUp_name">Jason Ball</p>
		<p class="popUp_pos">Vice President of Engineering&nbsp;</p>
		<p class="popUp_loc">&nbsp;</p>
	</div>
	<a href="https://talent.ascendify.com/profile/staff/cusr_2ec74100000000031752" class="popUp-link btn btn-primary">Meet Jason »</a> <!-- - need link to profile page -->
</div>
<div class="popUp" id="asc-mini-profile-cusr_0f64c100000000313384">
	<div class="popUp_info">
		<p class="popUp_name">Justin Jacobsen</p>
		<p class="popUp_pos">Senior Backend Engineer&nbsp;</p>
		<p class="popUp_loc">&nbsp;</p>
	</div>
	<a href="https://talent.ascendify.com/profile/staff/cusr_0f64c100000000313384" class="popUp-link btn btn-primary">Meet Justin »</a> <!-- - need link to profile page -->
</div>
<div class="popUp" id="asc-mini-profile-cusr_b76dc100000000289861">
	<div class="popUp_info">
		<p class="popUp_name">Lauren Smith</p>
		<p class="popUp_pos">Account Supervisor&nbsp;</p>
		<p class="popUp_loc">&nbsp;</p>
	</div>
	<a href="https://talent.ascendify.com/profile/staff/cusr_b76dc100000000289861" class="popUp-link btn btn-primary">Meet Lauren »</a> <!-- - need link to profile page -->
</div>
<div class="popUp" id="asc-mini-profile-cusr_ed219100000000312915">
	<div class="popUp_info">
		<p class="popUp_name">Dmitriy Romanenko</p>
		<p class="popUp_pos">Frontend Software Engineer&nbsp;</p>
		<p class="popUp_loc">&nbsp;</p>
	</div>
	<a href="https://talent.ascendify.com/profile/staff/cusr_ed219100000000312915" class="popUp-link btn btn-primary">Meet Dmitriy »</a> <!-- - need link to profile page -->
</div>
<div class="popUp" id="asc-mini-profile-cusr_0ee4c100000000313453">
	<div class="popUp_info">
		<p class="popUp_name">Erik Worth</p>
		<p class="popUp_pos">Data Engineer&nbsp;</p>
		<p class="popUp_loc">&nbsp;</p>
	</div>
	<a href="https://talent.ascendify.com/profile/staff/cusr_0ee4c100000000313453" class="popUp-link btn btn-primary">Meet Erik »</a> <!-- - need link to profile page -->
</div></div></div>        
		</div>
	</section>
	<section class="section slideshow pattern--gray">
		<div class="container">
			<article class="asc-article slideshow">
				<div class="row">
					<div class="col-sm-8 col-md-8">
						<div class="slideshow carousel slide" data-ride="carousel" id="slideshow">
							<ol class="carousel-indicators">
								<li data-target="#slideshow" data-slide-to="0" class=""></li>
								<li data-target="#slideshow" data-slide-to="1" class=""></li>
								<li data-target="#slideshow" data-slide-to="2" class="active"></li>
								<li data-target="#slideshow" data-slide-to="3" class=""></li>
								<li data-target="#slideshow" data-slide-to="4" class=""></li>
								<li data-target="#slideshow" data-slide-to="5" class=""></li>
								<li data-target="#slideshow" data-slide-to="6" class=""></li>
								<li data-target="#slideshow" data-slide-to="7" class=""></li>
								<li data-target="#slideshow" data-slide-to="8" class=""></li>
								<li data-target="#slideshow" data-slide-to="9" class=""></li>
								<li data-target="#slideshow" data-slide-to="10" class=""></li>
								<li data-target="#slideshow" data-slide-to="11" class=""></li>
								<li data-target="#slideshow" data-slide-to="11" class=""></li>
							</ol>
							<div class="carousel-inner">
								<div class="item">
									<img alt="Ascendify photo show image" src="/static-assets/img/slider-11.jpg">
										<!-- 
										Captions
										Captions should be included as a sibling of <img>
										<div class="carousel-caption">Example caption</div>
										-->
								</div>
								<div class="item">
									<img alt="Ascendify photo show image" src="/static-assets/img/slider-1.jpg">
								</div>
								<div class="item active">
									<img alt="Ascendify photo show image" src="/static-assets/img/slider-2.jpg">
								</div>
								<div class="item">
									<img alt="Ascendify photo show image" src="/static-assets/img/slider-3.jpg">
								</div>
								<div class="item">
									<img alt="Ascendify photo show image" src="/static-assets/img/slider-13.jpg">
								</div>
								<div class="item">
									<img alt="Ascendify photo show image" src="/static-assets/img/slider-4.jpg">
								</div>
								<div class="item">
									<img alt="Ascendify photo show image" src="/static-assets/img/slider-15.jpg">
								</div>
								<div class="item">
									<img alt="Ascendify photo show image" src="/static-assets/img/slider-5.jpg">
								</div>
								<div class="item">
									<img alt="Ascendify photo show image" src="/static-assets/img/slider-6.jpg">
								</div>
								<div class="item">
									<img alt="Ascendify photo show image" src="/static-assets/img/slider-7.jpg">
								</div>
								<div class="item">
									<img alt="Ascendify photo show image" src="/static-assets/img/slider-8.jpg">
								</div>
								<div class="item">
									<img alt="Ascendify photo show image" src="/static-assets/img/slider-9.jpg">
								</div>
								<div class="item">
									<img alt="Ascendify photo show image" src="/static-assets/img/slider-14.jpg">
								</div>
							</div>
							<a class="left carousel-control" href="https://talent.ascendify.com/#slideshow" data-slide="prev">
								<span class="fa fa-angle-left"></span>
							</a>
							<a class="right carousel-control" href="https://talent.ascendify.com/#slideshow" data-slide="next">
								<span class="fa fa-angle-right"></span>
							</a>
						</div>          
					</div>        
					<div class="col-sm-4 col-md-4">
						<h5 class="hr">OUR CULTURE</h5>
						<p>We’re a small, world-class agile team and we expect you to be at top of your game. We offer a competitive benefits package, a great office, and all the latest tools you need to produce your best work. Ascendify is committed to the learning and development of our employees. We'll support you with off-site courses and hands-on training in the application. Your role will grow as the company grows, in whatever ways best suit your skills and interests.</p>
						<p>Ascendify is located at 580 California Street, just a short walk away from BART and Muni stations, and right near everything the Financial District has to offer.</p>
					</div>
				</div>
			</article>        
		</div>
	</section>
	<section class="section join-community" style="background-color: #EBECEB; margin-top: -35px;">
		<div class="container">
			<div class="row">
				<div class="join col-sm-8 col-md-8">
					<p class="p-quote">
					
						Interested in working for Ascendify? Take the first step today by joining our talent community.
					</p>
					<a href="https://talent.ascendify.com/signup" class="btn btn-primary btn-lg btn-wide safari_redirect_link">Join Now</a>
				</div>
				<div class="description col-sm-4 col-md-4">
					<h5>Benefits of Joining:</h5>
					<ul class="bullet">
						<li>Easily apply for jobs using LinkedIn or Facebook</li>
						<li>Get notified about recently opened positions</li>
						<li>Chat with our community manager</li>
					</ul>
				</div>
							</div>         
		</div>
	</section>
</div>
<script src="/static-assets/img/iframe_api"></script><script id="video-thumbnail-script" type="text/javascript">
$(function() {
	$('#career-search-form').Ascendify('globalJobSearch',{
		el: 'job-search-submit',
		job_skill: 'job-skill-search',
		job_location: 'job-location-search',
		loc_coords: 'location-map-coords'
	});
	activateGlobalSearch();
	home_search_select();
	enter_key_search();


	sliderSwipe();

	var $videoWrap = $('.panel-video');
	console.log($videoWrap)
	// Load in YouTube API scripts
	// These scripts are required for video thumbnails
	var tag = document.createElement('script');
	tag.src = "https://www.youtube.com/iframe_api";
	$('#video-thumbnail-script').before(tag);

	// Init YouTube player 
	var player;

	// onYouTubeIframeAPIReady needs to exist in the global namespace
	window.onYouTubeIframeAPIReady = function() 
	{
	  // Need to init a new player for each video instance on page
	  player = new YT.Player('iframe-player-1', 
		{
		  width: '100%',
		  height: '410',
		  videoId: $videoWrap.find('a').attr('data-src'), // Get video ID from first thumb
		  playerVars: 
		  {
			wmode:'opaque',
			rel: 0
		  }
		});
	}


	// Video events
	var changeVideo = function(videoId) 
	{
	  player.loadVideoById(videoId);
	}


	// Hide preview image
	var hidePreviewImage = function() 
	{
	  $videoWrap.addClass('playing');
	}


	// Click preview image to play first video
	$videoWrap.children('a').on('click', function() 
	{
	  $('#ascvideo').show();
	  var $video = $(this);
	  if(!$video.hasClass('playing')) 
	  {
		hidePreviewImage();
		if(!isAppleMobile())
		{
		   player.playVideo();
		}    
	  }
	});


	// Change video when thumbnails are clicked
	$videoWrap.find('.map-image a').on('click', function(e) {
	  $('#ascvideo').fadeIn();
	  e.preventDefault();
	  var $this = $(this);
	  changeVideo($this.attr('data-src'));
	  $this.parent().addClass('active').siblings().removeClass('active');
	  hidePreviewImage();
	});

	$('#ascvideo').click(function(){
	   $('#ascvideo').fadeOut();     
	   player.pauseVideo();
	   return false;
	 })

	function isAppleMobile() {
	  if(/iPhone|iPad|iPod/i.test(navigator.userAgent)) {
		return true;
	  }
	  return false;
	}

	// $(document).on('click', '.content-panels', function(e) {
	//     var $target = $(e.target);
	//     console.log($target)

	//     if($target.is('.play-button')) {
	//         $target.hide();
	//         $target.next('img').hide();
	//         $target.prev('.video-holder').show();
	//         $target.parent('.panel-image').css({'position': 'absolute', 'z-index': '100', 'width': '200%', 'height': '400px', 'left':'-180px'})
	//     }
	// });

	$("#people-slider").Ascendify('listEmployeesProfileWidget',{height:'120px'});

});

</script>
	</div>
	<footer>
	<div id="footer-outer">			
		<div class="container">			
			<div class="row">
				
				<div class="col-md-12 col-2-12 footer-logo">
					<div class="logo">
						<div class="ascendify-white">
							<a href="https://talent.ascendify.com/" class="logo__ascendify-white"></a>
						</div>
					</div>
				</div>

				<div class="col-md-12 col-8-12 footer-contact">
					<h5>
						<a href="http://www.ascendify.com/request-a-demo/" class="safari_redirect_link" target="_blank">Contact Us</a> &nbsp;•&nbsp;
						<a href="http://www.ascendify.com/ascendify-privacy-policy/" target="_blank">Privacy</a> &nbsp;•&nbsp;
						<a href="http://www.ascendify.com/ascendify-terms-of-service/" target="_blank">Terms</a>
					</h5>
					<h5>©2022 Ascendify. All rights reserved.</h5>
				</div>

				<div class="col-md-12 col-2-12 footer-social">
					<span><a href="https://www.linkedin.com/company/ascendify" target="_blank"><i class="fa fa-linkedin"></i></a></span>
					<span><a href="https://twitter.com/Ascendify" target="_blank"><i class="fa fa-twitter"></i></a></span>
					<span><a href="https://www.facebook.com/ascendify/" target="_blank"><i class="fa fa-facebook"></i></a></span>
				</div>
				
			</div><!--/row-->			
		</div><!--/container-->
	</div><!--/footer-outer-->
</footer>




	<script type="text/javascript">
		var ascendify_client_id = 'LlBgwXCZXDfbHXL';
		var ascendify_server_location = 'https://backend.ascendify.com';
		var ascendify_core2_location = 'https://core2.ascendify.com';
		var ascendify_rpc_location = 'https://rpc.ascendify.com';
		var ascendify_frontend_location = 'https://store.ascendify.com/fe/150';
		var ascendify_system_type = 'live';
	</script>
	<script src="/static-assets/img/ckeditor.js.download"></script>
	<script type="text/javascript">
		$.ajax({
			url: '/user/isUserLoggedin',
			success: function(data) {
				if (!data.logged_in) {
					// user has been logged out, clear their ID so we don't keep checking that their session is active
					CLIENT_USER_ID = '';
				}
			}
		});
	</script>

	<script type="text/javascript" src="/static-assets/img/jquery-ui-1.10.2.custom.js.download"></script>
	<script type="text/javascript" src="/static-assets/img/bootstrap.js.download"></script>
	<script type="text/javascript" src="/static-assets/img/touchswipe.js.download"></script>
	<script type="text/javascript" src="/static-assets/img/jquery.sharer.js.download"></script>
	<script type="text/javascript" src="/static-assets/img/es5-shim.js.download"></script>

			<!-- S3 BUCKET URL -->
		<script type="text/javascript">
			var ascendify_store = 'https://store.ascendify.com/prod';
		</script>
		<script src="/static-assets/img/ascendify.client.all.min.js.download" id="asc-script" type="text/javascript"></script>
		<script type="text/javascript" src="/static-assets/img/utils.js.download"></script>
		<script type="text/javascript" src="/static-assets/img/talentcommunity.js.download"></script>
	<script type="text/javascript" src="/static-assets/img/respond.min.js.download"></script>
	<script type="text/javascript" src="/static-assets/img/categorizr.js.download"></script>
	<script type="text/javascript" src="/static-assets/img/ios-orientationchange-fix.min.js.download"></script>
	<script type="text/javascript" src="/static-assets/img/jquery.color.js.download"></script>

	<script type="text/javascript">
	(function() {


			window.ascendify_client_id = 'LlBgwXCZXDfbHXL';

			// Header scroll listeners
			$(document).ready(function(){
				ieRedirect();

				// var scrolled = false,
				// 	$doc = $(document);
				// 	$body = $('body')

				// // check scroll on ready
    //             if ($doc.scrollTop() > 90) {
    //                 scrolled = true;
    //                 $body.addClass('scrolled-down')
    //             }

				// var checkScroll = function() {
				// 	if(new ascendifyWidgetClass().isMobile())
				// 	{
				// 		return false;
				// 	}
				// 	if (scrolled) {
				// 		if ($doc.scrollTop() > 90 && !$body.hasClass('scrolled-down')) {
				// 			$body.addClass('scrolled-down');
				// 		}
				// 		else if ($doc.scrollTop() <= 90) {
				// 			$body.removeClass('scrolled-down');
				// 		}

				// 		scrolled = false;
				// 	}
				// }

				// $doc.on('scroll', function(){
				// 	scrolled = true;
				// });

				// setInterval(function(){
				// 	checkScroll();
				// }, 150);

				setInterval(function(){
					// don't check for active session unless we think user is signed in
					if (CLIENT_USER_ID) {
						checkIfActive();
					}
				}, 300000); // Checks if user is active every 5 min

				// init categorizr for device detection
				$("body").attr("data-device-type", categorizr());
				if ( $("body").attr("data-device-type") == 'desktop' ) {
					$("#main_container").addClass('desktop');
				}
				else if ( $("body").attr("data-device-type") == 'tablet' ) {
					$("#main_container, nav#main-nav").addClass('tablet');
				}
				else if ( $("body").attr("data-device-type") == 'mobile' ) {
					$("#main_container, nav#main-nav").addClass('mobile');
				}

				var date_format = false;
				
				if (!date_format)
				{
					date_format = 'mm/dd/yy';
				}

				$.datepicker.setDefaults({
					dateFormat:date_format,
					changeYear: true,
					changeMonth: true,
					yearRange: "c-70:c+10"
				});

			});

	})();

	</script>

	<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

	passClientUserIdToGoogleAnalytics();

</script><div style="display:none" id="asc-page-up-check"></div>
<a id="to-top" class="hidetop"><i class="fa fa-angle-up"></i></a>

</div><ul class="ui-autocomplete ui-front ui-menu ui-widget ui-widget-content ui-corner-all" id="ui-id-1" tabindex="0" style="display: none;"></ul>
    
    <@crafter.body_bottom />
  </body>
</html>