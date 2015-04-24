<%@ page import="Ejemplo.Municipio" %>



<div class="fieldcontain ${hasErrors(bean: municipioInstance, field: 'nombreMunicipio', 'error')} required">
	<label for="nombreMunicipio">
		<g:message code="municipio.nombreMunicipio.label" default="Nombre Municipio" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombreMunicipio" required="" value="${municipioInstance?.nombreMunicipio}"/>

</div>

