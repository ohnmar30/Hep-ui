<%
	def visibleFieldId = config.visibleFieldId ?: ui.randomId("field")
	config.visibleFieldId = visibleFieldId
	
	ui.decorateWith("chaiui", "labeled", config)
%>

${ ui.includeFragment("chaiui", "widget/field", config) }

<% if (config.afterField) { %>
	${ config.afterField }
<% } %>