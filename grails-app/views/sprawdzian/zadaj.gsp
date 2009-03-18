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
      Podaj słowo <b>${zadanie.pytanie}</b>: <g:textField name="odpowiedzUzytkownika" />
      <g:hiddenField name="odpowiedz" value="${zadanie.odpowiedz}" />
      <g:hiddenField name="pytanie" value="${zadanie.pytanie}" />
      <g:actionSubmit value="Sprawdź &gt;&gt;" action="sprawdz" />
    </g:form>
  </body>
</html>
