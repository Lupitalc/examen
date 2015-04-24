
<%@ page import="Ejemplo.Domicilio" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'domicilio.label', default: 'Domicilio')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-domicilio" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-domicilio" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list domicilio">
			
				<g:if test="${domicilioInstance?.calle}">
				<li class="fieldcontain">
					<span id="calle-label" class="property-label"><g:message code="domicilio.calle.label" default="Calle" /></span>
					
						<span class="property-value" aria-labelledby="calle-label"><g:fieldValue bean="${domicilioInstance}" field="calle"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${domicilioInstance?.colonia}">
				<li class="fieldcontain">
					<span id="colonia-label" class="property-label"><g:message code="domicilio.colonia.label" default="Colonia" /></span>
					
						<span class="property-value" aria-labelledby="colonia-label"><g:fieldValue bean="${domicilioInstance}" field="colonia"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${domicilioInstance?.estado}">
				<li class="fieldcontain">
					<span id="estado-label" class="property-label"><g:message code="domicilio.estado.label" default="Estado" /></span>
					
						<span class="property-value" aria-labelledby="estado-label"><g:link controller="estado" action="show" id="${domicilioInstance?.estado?.id}">${domicilioInstance?.estado?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${domicilioInstance?.municipio}">
				<li class="fieldcontain">
					<span id="municipio-label" class="property-label"><g:message code="domicilio.municipio.label" default="Municipio" /></span>
					
						<span class="property-value" aria-labelledby="municipio-label"><g:link controller="municipio" action="show" id="${domicilioInstance?.municipio?.id}">${domicilioInstance?.municipio?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${domicilioInstance?.numero}">
				<li class="fieldcontain">
					<span id="numero-label" class="property-label"><g:message code="domicilio.numero.label" default="Numero" /></span>
					
						<span class="property-value" aria-labelledby="numero-label"><g:fieldValue bean="${domicilioInstance}" field="numero"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${domicilioInstance?.pais}">
				<li class="fieldcontain">
					<span id="pais-label" class="property-label"><g:message code="domicilio.pais.label" default="Pais" /></span>
					
						<span class="property-value" aria-labelledby="pais-label"><g:link controller="pais" action="show" id="${domicilioInstance?.pais?.id}">${domicilioInstance?.pais?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${domicilioInstance?.persona}">
				<li class="fieldcontain">
					<span id="persona-label" class="property-label"><g:message code="domicilio.persona.label" default="Persona" /></span>
					
						<span class="property-value" aria-labelledby="persona-label"><g:link controller="persona" action="show" id="${domicilioInstance?.persona?.id}">${domicilioInstance?.persona?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:domicilioInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${domicilioInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
