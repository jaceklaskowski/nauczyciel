<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
      <title>Nauczyciel - rodzaj pytań</title>
      <meta name="layout" content="main"/>
  </head>
  <body>
    <h1>Rodzaj pytań</h1>
    <hr>
    Wybrano następujący rodzaj pytań:
    <ul>
      <g:if test="${params.rodzaj?.class == String[].class}">
        <g:each in="${params.rodzaj}">
          <li>${it}</li>
        </g:each>
      </g:if>
      <g:elseif test="${params.rodzaj?.class == String.class}">
          <li>${params.rodzaj}</li>
      </g:elseif>
      <g:else>
        <li>Nic nie wybrano!</li>
      </g:else>
    </ul>
    params.rodzaj?.class = ${params.rodzaj?.class ?: "nic nie wybrano!"}
    <p>
    <font style="font-size: 12px; color: red">TODO</font>: Jak rozpoznać, czy wybrano pojedynczy rodzaj, czy dwa? Na razie korzystam z g:if/elseif/else. W pierwszym przypadku "params.rodzaj" zwraca jedynie pojedynczą wartość typu String, a w drugim listę Stringów.
    </p>
    <g:link controller="pytanie">&lt;&lt; wybierz ponownie</g:link> <g:if test="${params.rodzaj}">albo <g:link controller="pytanie" action="zadaj">idź do pytań &gt;&gt;</g:link></g:if>
  </body>
</html>
