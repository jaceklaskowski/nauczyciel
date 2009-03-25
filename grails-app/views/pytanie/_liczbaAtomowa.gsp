    <g:form action="rodzaj" name="pytanieForm">
      Podaj nazwę pierwiastka o liczbie atomowej <b>${pierwiastek.liczbaAtomowa}</b>: <g:textField name="nazwa" />
      <g:hiddenField name="liczbaAtomowa" value="${pierwiastek.liczbaAtomowa}" />
      <g:actionSubmit value="Sprawdź &gt;&gt;" action="sprawdz" />
    </g:form>

