<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main"/>
    <title>Nauczyciel - wybór przedmiotu pytań</title>
  </head>
  <body>
    <div class="nav">
      <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
    </div>
    <div class="body">
      <h1>Wybierz rodzaj pytań</h1>
      <div class="dialog">
        Chcesz, aby odpytywać Cię z symboli czy nazw pierwiastków chemicznych?
        A może słówka z angielskiego?
        Możesz wybrać dowoloną kombinację pytań, a wtedy zostaną one wymieszane.
        <div>
          <g:form action="rodzaj">
            <g:checkBox name="rodzaj" value="symbol" id="symbol" checked="no" />
            <label for="symbol">Symbole</label>
            <br>
            <g:checkBox name="rodzaj" value="nazwa" id="nazwa" checked="no" />
            <label for="nazwa">Nazwy</label>
            <br>
            <g:checkBox name="rodzaj" value="liczbaAtomowa" id="liczba" checked="no" />
            <label for="liczba">Liczba atomowa</label>
            <br>
            <g:checkBox name="rodzaj" value="slowka" id="slowka" checked="yes" />
            <label for="slowka">Słówka</label>
            <br>
            <span class="button"><input type="submit" class="edit" value="Zatwierdź" /></span>
          </g:form>
        </div>
      </div>
    </div>
  </body>
</html>
