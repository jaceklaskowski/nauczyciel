<div class="dialog">
  <div id="wynik">
    <g:form>
      <h2>${slowko.enTresc}</h2>
      <input name="plTresc" type="text" value="" />
      <g:hiddenField name="id" value="${slowko.id}" />
      <g:submitToRemote name="submitToRemote"
                        url="[action:'nastepneSlowoAjax',id:slowko.id]"
                        update="wynik"
                        value="Dalej &raquo;" />
      <br/>
      <h6>(${slowko.plTresc})</h6>
    </g:form>
    <br/><br/>
    <g:render template="wynik" />
  </div>
</div>