<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main"/>
    <title>Nauczyciel - pytanie</title>
  </head>
  <body>
    <div class="nav">
      <span class="menuButton"><a class="home" href="${createLink(action:'index')}">Home</a></span>
    </div>
    <div class="body">
      <h1>Pytanie</h1>
      <div class="dialog">
        <g:hasErrors>
          <g:eachError><p>${it.defaultMessage}</p></g:eachError>
        </g:hasErrors>
        <g:message code="${flash.message}" />
        <g:render template="${session.losowyTyp}"/>
      </div>
    </div>
  </body>
</html>
