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
                                <#-- Macro docs @ https://docs.craftercms.org/en/4.0/search.html?q=renderRepeatCollection&check_keywords=yes&area=default -->
                                <@crafter.renderRepeatGroup
                                  $field="cultureSlides_o"
                                  $containerAttributes={'class': 'carousel-inner'};
                                  item, index
                                >
                                <div class="item">
									<@crafter.img $index=index $field="cultureSlides_o.image_s" alt="Ascendify photo show image" src="${item.image_s}" />
								</div>
                                </@crafter.renderRepeatGroup>
                                							
							
							<a class="left carousel-control" href="#" data-slide="prev">
								<span class="fa fa-angle-left"></span>
							</a>
							<a class="right carousel-control" href="#" data-slide="next">
								<span class="fa fa-angle-right"></span>
							</a>
						</div>          
					</div>        
					<div class="col-sm-4 col-md-4">
						
						
						<@crafter.p $field="cultureText_html">${contentModel.cultureText_html}</@crafter.p>
						
					</div>
				</div>
			</article>        
		</div>
	</section>