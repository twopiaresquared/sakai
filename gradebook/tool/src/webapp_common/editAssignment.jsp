<%/* Temporary workaround for lack of a date picker. */%>
<link href="calendar/theme.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="calendar/popcalendar.js"></script>
<f:view>
	<h:form id="gbForm">

	  <x:aliasBean alias="#{viewName}" value="editAssignment">
		<%@include file="/inc/appMenu.jspf"%>
	  </x:aliasBean>

	  <gbx:flowState bean="#{editAssignmentBean}" />
	  <div class="portletBody">

		<h2><h:outputText value="#{msgs.appmenu_edit_assignment}"/></h2>

		<div class="instruction"><h:outputText value="#{msgs.edit_assignment_instruction}" escape="false"/></div>
		<p class="instruction"><h:outputText value="#{msgs.flag_required}"/></p>

		<div class="indnt1">
		<h4><h:outputText value="#{msgs.edit_assignment_page_title}"/></h4>

		<x:aliasBean alias="#{bean}" value="#{editAssignmentBean}">
			<%@include file="/inc/assignmentEditing.jspf"%>
		</x:aliasBean>

		</div>

		<p class="act">
			<h:commandButton
				id="saveButton"
				styleClass="active"
				value="#{msgs.add_assignment_submit}"
				action="#{editAssignmentBean.updateAssignment}"/>
			<h:commandButton
				value="#{msgs.add_assignment_cancel}"
				action="#{editAssignmentBean.cancel}"
				immediate="true"/>
		</p>
	  </div>
	</h:form>
</f:view>
