<%@ page import="Ejemplo.Estado" %>



<div class="fieldcontain ${hasErrors(bean: estadoInstance, field: 'nombreEstado', 'error')} required">
	<label for="nombreEstado">
		<g:message code="estado.nombreEstado.label" default="Nombre Estado" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombreEstado" required="" value="${estadoInstance?.nombreEstado}"/>

</div>

