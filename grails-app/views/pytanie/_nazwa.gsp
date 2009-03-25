    <g:form action="rodzaj" name="pytanieForm">
      Podaj symbol pierwiastka o nazwie <b>${pierwiastek.nazwa}</b>: <g:textField name="symbol" />
      <g:hiddenField name="nazwa" value="${pierwiastek.nazwa}" />
      <g:actionSubmit value="Sprawdź &gt;&gt;" action="sprawdz" />
    </g:form>
