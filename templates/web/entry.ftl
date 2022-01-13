<#import "/templates/system/common/crafter.ftl" as crafter />

<!DOCTYPE html>
<html lang="en">
	<head>

		  <#include "/templates/web/fragment/head.ftl">
		  
		<@crafter.head/>
	</head>
	<body>
		<@crafter.body_top/>
		<main>
			<@crafter.h1 $field="title_t">${model.title_t}</@crafter.h1>
			<@crafter.div $field="body_html">${model.body_html}</@crafter.div>
		</main>
		<@crafter.body_bottom/>
	</body>
</html>
