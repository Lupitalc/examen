<table>
    <thead>
    <tr>

        <g:sortableColumn property="authority" title="${message(code: 'rol.authority.label', default: 'Authority')}" />

    </tr>
    </thead>
    <tbody>
    <g:each in="${lista}" status="i" var="rolInstance">
        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

            <td><g:link action="show" id="${rolInstance.id}">${fieldValue(bean: rolInstance, field: "authority")}</g:link></td>

        </tr>
    </g:each>
    </tbody>
</table>