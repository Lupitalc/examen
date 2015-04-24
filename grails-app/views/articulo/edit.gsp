<%--
  Created by IntelliJ IDEA.
  User: Sintel
  Date: 24/04/2015
  Time: 01:52 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'articulo.label', default: 'Articulo')}" />
    <title><g:message code="default.edit.label" args="[entityName]" /></title>
</head>

<body>
<g:form controller="articulo" action="update">
    <g:hiddenField name="version" value="${articuloInstance?.version}" />
    <fieldset class="form">
        <g:render template="/articulo/formArticulo"/>
    </fieldset>
    <fieldset class="buttons">
        <g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
    </fieldset>
</g:form>
</body>
</html>