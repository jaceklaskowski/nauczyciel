<g:form>
  Podaj tłumaczenie słówka <b>${slowko.enTresc}</b>: <g:textField name="plTresc" />
  <g:hiddenField name="id" value="${slowko.id}" />
  <!-- TODO: Ajax remoteActionSubmit -->
  <g:actionSubmit value="Sprawdź &gt;&gt;" action="sprawdz" />
</g:form>