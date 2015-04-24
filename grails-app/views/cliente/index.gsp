<%--
  Created by IntelliJ IDEA.
  User: Sintel
  Date: 24/04/2015
  Time: 01:53 PM
--%>


<%@ page import="spring.security.Rol" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'cliente.label', default: 'Rol')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>

<div id="list-cliente" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]" /></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:render template="lista" model="[lista:lista]"/>
    <div class="pagination">
        <g:paginate total="${clienteInstanceCount ?: 0}" />
    </div>
</div>
</body>
</html>
