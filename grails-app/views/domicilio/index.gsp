
<%@ page import="Ejemplo.Domicilio" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'domicilio.label', default: 'Domicilio')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-domicilio" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-domicilio" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="calle" title="${message(code: 'domicilio.calle.label', default: 'Calle')}" />
					
						<g:sortableColumn property="colonia" title="${message(code: 'domicilio.colonia.label', default: 'Colonia')}" />
					
						<th><g:message code="domicilio.estado.label" default="Estado" /></th>
					
						<th><g:message code="domicilio.municipio.label" default="Municipio" /></th>
					
						<g:sortableColumn property="numero" title="${message(code: 'domicilio.numero.label', default: 'Numero')}" />
					
						<th><g:message code="domicilio.pais.label" default="Pais" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${domicilioInstanceList}" status="i" var="domicilioInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${domicilioInstance.id}">${fieldValue(bean: domicilioInstance, field: "calle")}</g:link></td>
					
						<td>${fieldValue(bean: domicilioInstance, field: "colonia")}</td>
					
						<td>${fieldValue(bean: domicilioInstance, field: "estado")}</td>
					
						<td>${fieldValue(bean: domicilioInstance, field: "municipio")}</td>
					
						<td>${fieldValue(bean: domicilioInstance, field: "numero")}</td>
					
						<td>${fieldValue(bean: domicilioInstance, field: "pais")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${domicilioInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
