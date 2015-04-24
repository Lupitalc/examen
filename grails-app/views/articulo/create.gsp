<%--
  Created by IntelliJ IDEA.
  User: Sintel
  Date: 24/04/2015
  Time: 01:51 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'articulo.label', default: 'Articulo')}" />
    <title><g:message code="default.create.label" args="[entityName]" /></title>
</head>

<body>

<a href="#list-articulo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
    </ul>
</div>
<g:form controller="articulo" action="save" >
    <fieldset class="form">
        <g:render template="/articulo/formArticulo"/>
    </fieldset>
    <fieldset class="buttons">
        <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
    </fieldset>
</g:form>

</body>
</html>