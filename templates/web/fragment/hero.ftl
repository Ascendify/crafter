<#import "/templates/system/common/crafter.ftl" as crafter />

<@crafter.div id="background-image" $field="heroImage_s" style="background-image: url('${contentModel.heroImage_s}');"> 
		<div class="background-gradient"></div>
	</@crafter.div>
	<div class="hero-wrap pattern--blue">
		<div class="hero-controls">
		 
			<@crafter.h1 $field="heroText_s">${contentModel.heroText_s}</@crafter.h1>
			<@crafter.a href="/signup" class="inverted safari_redirect_link" $field="heroJoin_s">${contentModel.heroJoin_s}</@crafter.a>
           
           
          
        </div>
	</div>