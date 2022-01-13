if(typeof window.ASCENDIFY === 'undefined') {
    window.ASCENDIFY = {};
}
if(typeof ASCENDIFY.modules === 'undefined') {
    window.ASCENDIFY.modules = {};
}

function checkLogin()
{
    $(document).ready(function()
    {
        new ascendifyWidgetClass().getLoginCheck(frontlogin)
    });
}

function userForward(json,job_id)
{
    if(new ascendifyWidgetClass().isset(json) && !new ascendifyWidgetClass().isset(json.error))
    {
        var sid = json.session_id;
        var jid = '';
        if ( new ascendifyWidgetClass().isset(json.current_job) )
        {
            jid = "/"+json.current_job;
        }

        $.ajax({
            url:"/signin/login/"+json.client_user_id+"/"+json.client_user_role_id,
            dataType:'json',
            type:"POST",
            success:function(json)
            {
                if(new ascendifyWidgetClass().isset(json.error))
                {
                    new ascendifyWidgetClass().showError(json.error,'asc-msg');
                    return false;
                }
                else
                {
                    if(new ascendifyWidgetClass().isset(job_id) && job_id != '')
                    {
                        window.location.href = "/careers/position/"+job_id+"?open=1";
                    }
                    else if($("#asc-form-signin").length > 0)
                    {
                        $("#asc-form-signin").attr("action", "/signin/forward/"+json.role+"/"+sid+jid);
                        $("#asc-form-signin").submit();
                    }
                    else
                    {
                        window.location.href = "/signin/forward/"+json.role+"/"+sid+jid;
                    }
                }
            }
        });    
    }
}

function ieRedirect() {
	var url = window.location.href,
	current_url = (url.substr(url.lastIndexOf('/'))),
	redirect = "/outdated-browser";
  
	if (current_url === redirect) { return false; }
	if (navigator.userAgent.indexOf('MSIE') !== -1 || navigator.appVersion.indexOf('Trident/') > 0) {
		// MSIE
		window.location.href = "/outdated-browser";
	}
	return false;
}

function isiPhone(){
    return (
        (navigator.platform.indexOf("iPhone") != -1) ||
        (navigator.platform.indexOf("iPod") != -1) ||
        (navigator.platform.indexOf("iPad") != -1)
        );
};

function sliderSwipe() {
     //Enable swiping...
    $(".carousel-inner").swipe( {
        //Generic swipe handler for all directions
        swipeLeft:function(event, direction, distance, duration, fingerCount) {
          $(this).parent().carousel('next');
      },
      swipeRight: function() {
          $(this).parent().carousel('prev');
      },
        //Default is 75px, set to 0 for demo so any distance triggers swipe
        threshold:0
    });
}

function imageBlur()
{
	var colordivs = $('#background-image');

	$(document).scroll(function(e) {
		if(isiPhone()) {
			return false;
		}
		var scrollPercent = ($(window).scrollTop() / $('#main_container').outerHeight()) * 100;

		if (scrollPercent > 0) {
			if (scrollPercent < 33) {
				var opacity = 1 - (scrollPercent / 33);
				$(colordivs[0]).css('opacity', opacity);
			}
			else if (scrollPercent > 66) {
				var opacity = 1 - (scrollPercent / 100);
				$(colordivs[0]).css('opacity', 0);
				$(colordivs[1]).css('opacity', 0);
				$(colordivs[2]).css('opacity', opacity);
			}
			else if (scrollPercent > 33) {
				var opacity = 1 - (scrollPercent / 66);
				$(colordivs[0]).css('opacity', 0);
				$(colordivs[1]).css('opacity', opacity);
			}
		}
	});
}

/**
 * Check if user has an active session
 */
function checkIfActive() {

	$.ajax({
		url:ascendify_server_location+"/appapi/isUserActive/"+ascendify_client_id,
		dataType:'jsonp',
		success:function( json ) {
			$(this).Ascendify('logoutUser', {});
		}
	});
}

function imageBlur()
{
    var colordivs = $('#background-image');

    $(document).scroll(function(e) {
        if(isiPhone()) {
            return false;
        }
        var scrollPercent = ($(window).scrollTop() / $('#main_container').outerHeight()) * 100;

        if (scrollPercent > 0) {
            if (scrollPercent < 33) {
                var opacity = 1 - (scrollPercent / 33);
                $(colordivs[0]).css('opacity', opacity);
            }
            else if (scrollPercent > 66) {
                var opacity = 1 - (scrollPercent / 100);
                $(colordivs[0]).css('opacity', 0);
                $(colordivs[1]).css('opacity', 0);
                $(colordivs[2]).css('opacity', opacity);
            }
            else if (scrollPercent > 33) {
                var opacity = 1 - (scrollPercent / 66);
                $(colordivs[0]).css('opacity', 0);
                $(colordivs[1]).css('opacity', opacity);
            }
        }
    });
}

function getBaseURL()
{
    pathArray = window.location.href.split( '/' );
    protocol = pathArray[0];
    host = pathArray[2];
    url = protocol + '//' + host;
    return url;
}

function frontlogin(json)
{
    if(new ascendifyWidgetClass().isset(json.error))
    {
        if (json.cookie_not_set === true && /^((?!chrome|android).)*safari/i.test(navigator.userAgent)) {
            var $safari_redirect_links = $('.safari_redirect_link');
            $safari_redirect_links.each(function() {
                this.href = ascendify_server_location + '/clientapi/redirect?redirect_url=' + this.href;
            });
        }
        return false;
    }
    $.ajax({
        url:"/signin/login/"+json.client_user_id+"/"+json.client_user_role_id,
        dataType:'json',
        type:"POST",
        success:function(json)
        {    
            if(new ascendifyWidgetClass().isset(json.error))
            {
                return false;
            }
            
            $("#signin-menu").empty();
            $('#signin-menu').Ascendify('showSettingsMenu',
            {
                profile_url:'/profile',
                logout_success:function()
                {
                    window.location.href="/signin/logout";

                },
                success:function() 
                { 
                    var url = window.location.href;
                    if(url.indexOf('signup') == -1 && url.indexOf('profile') == -1)
                    {    
                        window.location.href = window.location.href;
                    }
                }
            });
        }
    });
}

// Pass client user id to google analytics
function passClientUserIdToGoogleAnalytics() {
	ga( 'create', GOOGLE_ANALYTICS_ID, { 'userId': CLIENT_USER_ID });   // If "User ID" feature is available
	ga( 'require', 'displayfeatures');
	ga( 'set', 'dimension1', CLIENT_USER_ID );                   // Set a `CLIENT_USER_ID` dimension at page level
    ga( 'set', 'dimension2', ascendify_community_id );
	ga( 'send', 'pageview' );

}
