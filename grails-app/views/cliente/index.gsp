<%--
  Created by IntelliJ IDEA.
  User: Sintel
  Date: 24/04/2015
  Time: 01:53 PM
--%>


<%--
  Created by IntelliJ IDEA.
  User: Sintel
  Date: 24/04/2015
  Time: 01:51 PM
--%>

<%@ page import="EjercicioArticulo.Cliente" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'cliente.label', default: 'Cliente')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>


<a href="#list-cliente" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
    </ul>
</div>
<div id="list-cliente" class="content scaffold-list" role="main">

    <div class="table">
        <table>
            <thead>
            <tr>
                <th>No. Cliente</th>
                <th>Nombre de Cliente</th>
                <th>Direccion</th>
                <th>Saldo</th>
                <th>Limite de Cr&eacute;dito</th>
                <th>Descuento</th>
                <th>NO. Pedido</th>
            </tr>
            </thead>
            <tbody>
            <g:each in="${clienteInstanceList}" status="i" var="clienteInstance">
                <tr>
                    <td class="text-center">${clienteInstance?.id}</td>

                    <td class="text-center">${clienteInstance?.direcciones?.direccion}</td>

                      <td class="text-center">${clienteInstance?.saldo}</td>

                      <td class="text-center">${clienteInstance?.limiteCredito}</td>

                      <td class="text-center">${clienteInstance?.descuento}</td>

                      <td class="text-center">${clienteInstance?.pedidos?.id}</td>

                </tr>
            </g:each>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
