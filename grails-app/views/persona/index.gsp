
<%@ page import="Ejemplo.Persona" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'persona.label', default: 'Persona')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-persona" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-persona" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nombre" title="${message(code: 'persona.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="apellidoPaterno" title="${message(code: 'persona.apellidoPaterno.label', default: 'Apellido Paterno')}" />
					
						<g:sortableColumn property="apellidoMaterno" title="${message(code: 'persona.apellidoMaterno.label', default: 'Apellido Materno')}" />
					
						<g:sortableColumn property="curp" title="${message(code: 'persona.curp.label', default: 'Curp')}" />
					
						<g:sortableColumn property="domicilio" title="${message(code: 'persona.domicilio.label', default: 'Domicilio')}" />
					
						<g:sortableColumn property="descripcion" title="${message(code: 'persona.descripcion.label', default: 'Descripcion')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${personaInstanceList}" status="i" var="personaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${personaInstance.id}">${fieldValue(bean: personaInstance, field: "nombre")}</g:link></td>
					
						<td>${fieldValue(bean: personaInstance, field: "apellidoPaterno")}</td>
					
						<td>${fieldValue(bean: personaInstance, field: "apellidoMaterno")}</td>
					
						<td>${fieldValue(bean: personaInstance, field: "curp")}</td>
					
						<td>${fieldValue(bean: personaInstance, field: "domicilios")}</td>
					
						<td>${fieldValue(bean: personaInstance, field: "descripcion")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${personaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
