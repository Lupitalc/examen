<%--
  Created by IntelliJ IDEA.
  User: Sintel
  Date: 24/04/2015
  Time: 01:52 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<g:form controller="articulo" action="update">
    <g:hiddenField name="version" value="${articuloInstance?.version}" />
    <fieldset class="form">
        <g:render template=""/>
    </fieldset>
    <fieldset class="buttons">
        <g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
    </fieldset>
</g:form>
</body>
</html>