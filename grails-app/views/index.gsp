<html>
    <head>
        <title>Welcome to Grails</title>
	<meta name="layout" content="main" />
    </head>
    <body>
        <h1 style="margin-left:20px;"><g:message code="nauczyciel.powitanie" /></h1>
        <p style="margin-left:20px;width:80%"><g:message code="nauczyciel.opis" /></p>
        <br>
        <p style="margin-left:20px;width:80%">
        <g:message code="nauczyciel.zaproszenie" /> <g:link controller="pytanie"><g:message code="nauczyciel.wchodz" /></g:link>
        </p>
        <p style="margin-left:20px;width:80%">
        <g:message code="nauczyciel.zaproszenieDoSlowek" /> <g:link controller="sprawdzian" action="zadaj"><g:message code="nauczyciel.wchodz" /></g:link>
        </p>
    </body>
</html>