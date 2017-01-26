<%
	config.require("dialogConfig")
	
	config.id = config.id ?: ui.randomId("dialogForm")

	config.cancelFunction = "chaiui.closeDialog"
	config.successCallbacks = []

	if (config.onSuccessCallback) {
		config.successCallbacks << config.onSuccessCallback
	}
	config.successCallbacks << "chaiui.closeDialog();"

	def dialogHeading = config.dialogConfig.heading
	def dialogWidth = config.dialogConfig.width ?: 80
	def dialogHeight = config.dialogConfig.height ?: 80

	def onOpenCallback = config.onOpenCallback ?: ''
%>

<%
	if (config.buttonConfig) {
		config.buttonConfig.onClick = """
			chaiui.openPanelDialog({ templateId: '${ config.id }_form', width: ${ dialogWidth }, height: ${ dialogHeight } });
			ui.confirmBeforeNavigating('#${ config.id }_form');
			${ onOpenCallback }
		"""

		print ui.includeFragment("chaiui", "widget/button", config.buttonConfig)
	}
%>

<div id="${ config.id }_form" title="${ ui.escapeAttribute(dialogHeading) }" style="display: none">
	${ ui.includeFragment("chaiui", "widget/panelForm", config) }
</div>