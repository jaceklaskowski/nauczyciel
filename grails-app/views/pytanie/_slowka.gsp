<g:form action="rodzaj">
  Podaj tłumaczenie słówka <b>${slowko.enTresc}</b>: <g:textField name="enTresc" />
  <g:hiddenField name="id" value="${slowko.id}" />
  <g:actionSubmit value="Sprawdź &gt;&gt;" action="sprawdz" />
</g:form>