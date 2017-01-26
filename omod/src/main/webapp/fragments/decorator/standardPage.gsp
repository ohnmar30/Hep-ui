<%
	// Oddly resource ordering values are highest-first
	ui.includeJavascript("chaiui", "underscore.js", 101)
	ui.includeJavascript("chaiui", "jquery.js", 100)
	ui.includeJavascript("chaiui", "jquerymin.js", 100)
	ui.includeJavascript("chaiui", "select2.js", 99)
	ui.includeJavascript("chaiui", "jquery-ui.js", 98)
	//ui.includeJavascript("chaiui", "angular.js", 97)
	ui.includeJavascript("chaiui", "angular1.4.7.js",97)
	ui.includeJavascript("chaiui", "angularanimate.js",97)
	ui.includeJavascript("chaiui", "uibootstraptpls.js",97)
	
	ui.includeJavascript("chaiui", "jquery.toastmessage.js", 96)
	ui.includeJavascript("chaiui", "pagebus/simple/pagebus.js", 95)
	ui.includeJavascript("chaiui", "ui.js", 94)
	ui.includeJavascript("chaiui", "chaiui.js", 93)
	ui.includeJavascript("chaiui", "chaiui-tabs.js", 92)
	ui.includeJavascript("chaiui", "chaiui-legacy.js", 92)
	
	ui.includeJavascript("chaiui", "jquery.thickbox.js",91)
	
	ui.includeJavascript("chaiui", "jquery.custom.js",91)
	ui.includeJavascript("chaiui", "jquery.PrintArea.js",91)
	
	ui.includeCss("chaiui", "select2.css", 100)
	ui.includeCss("chaiui", "jquery-ui.css", 99)
	ui.includeCss("chaiui", "toastmessage/css/jquery.toastmessage.css", 98)
	ui.includeCss("chaiui", "chaiui.css", 97)
	
	ui.includeCss("chaiui", "bootstrapmin.css",97)
	
	ui.includeCss("chaiui", "thickbox.css",92)
	
	ui.includeCss("chaiui", "PrintArea.css",91)
%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
		<% if (config.pageTitle) { %><title>${ config.pageTitle }</title><% } %>
		<% if (config.faviconIco) { %><link rel="shortcut icon" type="image/ico" href="${ config.faviconIco }"><% } %>
		<% if (config.faviconPng) { %><link rel="icon" type="image/png" href="${ config.faviconPng }"><% } %>

		<%= ui.resourceLinks() %>
	</head>
	<body <% if (config.angularApp) { %>ng-app="${ config.angularApp }"<% } %>>
		<script type="text/javascript">
			var OPENMRS_CONTEXT_PATH = '${ contextPath }';
		</script>

		${ ui.includeFragment("chaiui", "notifications") }

		<% if (config.beforeContent) { %>
			${ config.beforeContent }
		<% } %>

		<div class="ke-page-container">
			<%= config.content %>
		</div>
	</body>
</html>