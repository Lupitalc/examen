<%@ page import="Ejemplo.Persona" %>



<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="persona.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" value="${personaInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'apellidoPaterno', 'error')} ">
	<label for="apellidoPaterno">
		<g:message code="persona.apellidoPaterno.label" default="Apellido Paterno" />
		
	</label>
	<g:textField name="apellidoPaterno" value="${personaInstance?.apellidoPaterno}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'apellidoMaterno', 'error')} ">
	<label for="apellidoMaterno">
		<g:message code="persona.apellidoMaterno.label" default="Apellido Materno" />
		
	</label>
	<g:textField name="apellidoMaterno" value="${personaInstance?.apellidoMaterno}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'curp', 'error')} ">
	<label for="curp">
		<g:message code="persona.curp.label" default="Curp" />
		
	</label>
	<g:textField name="curp" value="${personaInstance?.curp}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'domicilio', 'error')} ">
	<label for="domicilio">
		<g:message code="persona.domicilio.label" default="Domicilio" />
		
	</label>
	<g:textField name="domicilio" value="${personaInstance?.domicilios}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="persona.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" value="${personaInstance?.descripcion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'domicilios', 'error')} ">
	<label for="domicilios">
		<g:message code="persona.domicilios.label" default="Domicilios" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${personaInstance?.domicilios?}" var="d">
    <li><g:link controller="domicilio" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="domicilio" action="create" params="['persona.id': personaInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'domicilio.label', default: 'Domicilio')])}</g:link>
</li>
</ul>


</div>

