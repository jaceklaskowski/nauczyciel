    <g:form action="rodzaj" name="pytanieForm">
      Podaj nazwę pierwiastka o symbolu <b>${pierwiastek.symbol}</b>: <g:textField name="nazwa" />
      <g:hiddenField name="symbol" value="${pierwiastek.symbol}" />
      <g:actionSubmit value="Sprawdź &gt;&gt;" action="sprawdz" />
    </g:form>