<%--
  Created by IntelliJ IDEA.
  User: Sintel
  Date: 21/04/2015
  Time: 12:15 PM
--%>


<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="main">
    <g:javascript library="jquery"/>
    <script>
        function sumar() {
            var valor1 = $('#valorUno').val();
            var valor2 = $('#valorDos').val();
            ${remoteFunction(action: 'suma',
                         controller: 'operaciones',
                         update: 'resultadoDiv',
                         params:"'valorUno='+valor1+ '&valorDos='+valor2")}
        }
    </script>
</head>

<body>

<%--<g:form action="suma" controller="operaciones">--%>
    <label>Valor1</label><g:textField name="valorUno" id="valorUno" /><br>
    <label>Valor2</label><g:textField name="valorDos" id="valorDos" /><br>

<button name="botonSuma" onclick="sumar();"></button>
<%--<g:submitButton name="enviar" value="enviar"/><br>

 <%--<g:if test="${resultado}">
     <label>El resultado de los valores es : ${resultado}</label>
 </g:if>--%>
<%--</g:form>--%>
<%--<g:formRemote name="index" update="" url="[controller: 'resul']"

--%>
<div id="resultadoDiv">

</div>

</body>
</html>