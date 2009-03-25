<html>
    <head>
        <title><g:layoutTitle default="Grails" /></title>
        <link rel="stylesheet" href="${createLinkTo(dir:'css',file:'main.css')}" />
        <link rel="shortcut icon" href="${createLinkTo(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
        <g:layoutHead />
        <g:javascript library="application" />				
    </head>
    <body>
        <div style="margin: 40px">
          <h2><g:message code="nauczyciel.tytul" /></h2>
        </div>
        <div style="margin: 40px">
          <g:layoutBody />
        </div>
    </body>	
</html>