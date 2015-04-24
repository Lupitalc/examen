<%@ page import="Ejemplo.Pais" %>



<div class="fieldcontain ${hasErrors(bean: paisInstance, field: 'nombrePais', 'error')} required">
	<label for="nombrePais">
		<g:message code="pais.nombrePais.label" default="Nombre Pais" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombrePais" required="" value="${paisInstance?.nombrePais}"/>

</div>

