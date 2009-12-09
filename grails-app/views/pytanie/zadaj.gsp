<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
      <title>Nauczyciel - pytanie</title>
      <meta name="layout" content="main"/>
  </head>
  <body>
    <h1>Pytanie</h1>
    <hr>
    <g:hasErrors>
      <g:eachError><p>${it.defaultMessage}</p></g:eachError>
    </g:hasErrors>
    <g:message code="${flash.message}" />
    <g:render template="${session.losowyTyp}"/>
  </body>
</html>
