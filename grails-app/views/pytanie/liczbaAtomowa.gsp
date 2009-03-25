<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
      <title>Nauczyciel - pytanie</title>
  </head>
  <body>
    <h1>Pytanie</h1>
    <hr>
    <g:hasErrors>
      <g:eachError><p>${it.defaultMessage}</p></g:eachError>
    </g:hasErrors>
    <g:message code="${flash.message}" />
    <g:form action="rodzaj" name="pytanieForm">
      Podaj nazwę pierwiastka o liczbie atomowej <b>${pierwiastek.liczbaAtomowa}</b>: <g:textField name="nazwa" />
      <g:hiddenField name="liczbaAtomowa" value="${pierwiastek.liczbaAtomowa}" />
      <g:actionSubmit value="Sprawdź &gt;&gt;" action="sprawdz" />
    </g:form>
  </body>
</html>
