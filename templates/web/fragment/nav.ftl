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
			<a href="/" class="logo__ascendify-white">
			    <@crafter.img $field="navImage_s" src="${contentModel.navImage_s}"/>
			</a>
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
		<@crafter.a href="#/careers" class="section__nav safari_redirect_link" id="careers" $field="careers_s">${contentModel.careers_s}</@crafter.a>
		<@crafter.a href="#/teams" class="section__nav" id="teams" $field="teams_s">${contentModel.teams_s}<span>.</span></@crafter.a>
		<@crafter.a href="#/who-we-are" class="section__nav" id="life" $field="ascendifyLife_s">${contentModel.ascendifyLife_s}<span>.</span></@crafter.a>

        <a href="#/signin" id="signin" class="inverted standard safari_redirect_link" $field="signin_s">${contentModel.signin_s}</a>

		
    </div>
</nav>