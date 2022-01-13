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

	
    <#-- <#include "/templates/web/fragment/nav.ftl"> -->
    

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

                <div class="section-container container">
    	            <!-- Drag Drop example -->
                    <@crafter.renderComponentCollection
                      $field="actions_o"
                      $containerAttributes={ "class": "content-panels row" }
                      $itemAttributes={ "class": "col-sm-4 col-md-4" }
                    />
                </div>
	  
	</section>
	
	 <#include "/templates/web/fragment/people.ftl">
	
	 <#include "/templates/web/fragment/culture.ftl">
	
	
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