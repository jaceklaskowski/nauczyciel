<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
      <title>Nauczyciel - wybór rodzaju pytań</title>
  </head>
  <body>
    <h1>Wybierz rodzaj pytań</h1>
    <hr>
    Chcesz, aby odpytywać Cię z symboli czy nazw pierwiastków? 
    Możesz wybrać oba rodzaje pytań, które wtedy zostaną przemieszane.
    <g:form action="rodzaj" name="wyborPytanForm">
      <g:checkBox name="rodzaj" value="symbol" id="symbol" checked="no" />
      <label for="symbol">Symbole</label>
      <g:checkBox name="rodzaj" value="nazwa" id="nazwa" checked="no" />
      <label for="nazwa">Nazwy</label>
      <br>
      <input type="submit" value="Zatwierdź"/>
    </g:form>
  </body>
</html>
