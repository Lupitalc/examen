<%--
  Created by IntelliJ IDEA.
  User: Sintel
  Date: 24/04/2015
  Time: 01:51 PM
--%>

<%@ page import="EjercicioArticulo.Articulo" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'articulo.label', default: 'Articulo')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>


<a href="#list-articulo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
    </ul>
</div>
    <table>
        <thead>
        <tr>
            <th>No. Articulo</th>
            <th>Descripcion</th>
            <th>Existencias</th>
        </tr>
        </thead>
        <tbody>
            <g:each in="${articuloInstanceList}" status="i" var="articuloInstance">
                <tr>
                  <td class="text-center">${articuloInstance?.id}</td>

                    <td class="text-center">${articuloInstance?.descripcionArticulo}</td>

                    <td class="text-center">${params?.existencias}</td>

                </tr>
        </g:each>
        </tbody>
    </table>
</body>
</html>
