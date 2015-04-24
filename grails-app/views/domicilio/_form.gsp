<%@ page import="Ejemplo.Domicilio" %>



<div class="fieldcontain ${hasErrors(bean: domicilioInstance, field: 'calle', 'error')} required">
	<label for="calle">
		<g:message code="domicilio.calle.label" default="Calle" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="calle" required="" value="${domicilioInstance?.calle}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: domicilioInstance, field: 'colonia', 'error')} required">
	<label for="colonia">
		<g:message code="domicilio.colonia.label" default="Colonia" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="colonia" required="" value="${domicilioInstance?.colonia}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: domicilioInstance, field: 'estado', 'error')} required">
	<label for="estado">
		<g:message code="domicilio.estado.label" default="Estado" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="estado" name="estado.id" from="${Ejemplo.Estado.list()}" optionKey="id" required="" value="${domicilioInstance?.estado?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: domicilioInstance, field: 'municipio', 'error')} required">
	<label for="municipio">
		<g:message code="domicilio.municipio.label" default="Municipio" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="municipio" name="municipio.id" from="${Ejemplo.Municipio.list()}" optionKey="id" required="" value="${domicilioInstance?.municipio?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: domicilioInstance, field: 'numero', 'error')} required">
	<label for="numero">
		<g:message code="domicilio.numero.label" default="Numero" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="numero" required="" value="${domicilioInstance?.numero}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: domicilioInstance, field: 'pais', 'error')} required">
	<label for="pais">
		<g:message code="domicilio.pais.label" default="Pais" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="pais" name="pais.id" from="${Ejemplo.Pais.list()}" optionKey="id" required="" value="${domicilioInstance?.pais?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: domicilioInstance, field: 'persona', 'error')} required">
	<label for="persona">
		<g:message code="domicilio.persona.label" default="Persona" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="persona" name="persona.id" from="${Ejemplo.Persona.list()}" optionKey="id" required="" value="${domicilioInstance?.persona?.id}" class="many-to-one"/>

</div>

