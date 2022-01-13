<#import "/templates/system/common/crafter.ftl" as crafter />
<@crafter.div class="col-sm-4 col-md-4">
						<div class="asc-panel">
						<!-- 
						Panel image
						These panels use background images
						Background images should be specified inline
						should not be smaller than 318x173px
						-->
						<@crafter.div class="panel-image" $field="actionImage_s" style="background-image: url('${contentModel.actionImage_s}');"></@crafter.div>
						<div class="panel-bottom">
							<@crafter.h2 $field="actionHeader_s">${contentModel.actionHeader_s}</@crafter.h2>
							<@crafter.p $field="actionText_html">${contentModel.actionText_html}</@crafter.p>
							<@crafter.a href="https://talent.ascendify.com/careers" class="standard safari_redirect_link" $field="actionLink_s">${contentModel.actionLink_s} <i class="fa fa-angle-double-right"></i></@crafter.a>
						</div>
					</div>
				</@crafter.div>