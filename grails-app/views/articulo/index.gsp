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

<div class="table">
    <table>
        <thead>
        <tr>
            <th>No. Cliente</th>
            <th>Nombre de Cliente</th>
            <th>Direccion</th>
            <th>Saldo</th>
            <th>Limite de Cr&oacute;dito</th>
            <th>Descuento</th>
            <th>NO. Pedido</th>
        </tr>
        </thead>
        <tbody>
            <g:each in="${articuloInstanceList}" status="i" var="articuloInstance">
                <tr>
                  <%--  <td class="text-center">${articuloInstance?.id}</td>

                    <td class="text-center">${articuloInstance?.nombre}</td>

                    <td class="text-center">${articuloInstance?.direcciones.descripcionDireccion}</td>

                    <td class="text-center">${articuloInstance?.saldo}</td>

                    <td class="text-center">${articuloInstance?.limiteCredito}</td>

                    <td class="text-center">${articuloInstance?.descuento}</td>

                    <td class="text-center">${articuloInstance?.pedido.id}</td>
--%>
                </tr>
        </g:each>
        </tbody>
    </table>
</div>
</body>
</html>
