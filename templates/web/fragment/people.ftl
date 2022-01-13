<#import "/templates/system/common/crafter.ftl" as crafter />
<section class="section our-people">
	<div class="section-container container">
		<div class="row">
    	  <div class="people-content col-sm-offset-1 col-sm-10">
				<@crafter.h5 $field="peopleSliderTitle_s">${contentModel.peopleSliderTitle_s}</@crafter.h5>
				<@crafter.p $field="peopleSliderHeadline_s" class="p-quote">${contentModel.peopleSiderHeadline_s}</@crafter.p>
			</div>
		</div>
    	<div id="people-slider">
    	    <div id="slideDeck" style="height: 140px;">
        	    <div id="slideLeft" class="slideArrow"><i class="fa fa-angle-left" style="margin-top: 55px;"></i></div>
        	    
        	    
        	    <div id="slideDeck_inner" style="width: 1050px; height: 130px;">
        	       <!-- <ul style="margin-left: -130px;"> -->
        	          <!-- Drag Drop example -->
                    <@crafter.renderComponentCollection
                      $field="peopleDrop_o"
                      $containerAttributes={ "style": "width:100%; height:120px" }
                       $itemAttributes={ "style": "width: 120px; height: 120px;float:left;margin-left:3px" }
                      
                    />
                    

        	        
        	        </div>
        	        
        	        
        	        <div id="slideRight" class="slideArrow"><i class="fa fa-angle-right" style="margin-top: 55px;"></i></div>
        
    
            </div>
    
    
    	</div>
	</div>
</section>