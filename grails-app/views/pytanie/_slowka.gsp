<div id="wynik">
<g:form>
  Podaj tłumaczenie słówka <b>${slowko.enTresc}</b> (wersja z podpowiedzią :]): <input name="plTresc" type="text" value="${slowko.plTresc}" />
  <g:hiddenField name="id" value="${slowko.id}" />
  <g:submitToRemote name="submitToRemote"
                    url="[action:'nastepneSlowoAjax',id:slowko.id]"
                    update="wynik"
                    value="Dalej &gt;&gt;" />
</g:form>
<br/><br/>
<g:render template="wynik" />
</div>