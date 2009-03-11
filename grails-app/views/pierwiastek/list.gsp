
<%@ page import="pl.jaceklaskowski.nauczyciel.Pierwiastek" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Pierwiastek List</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="create" action="create">New Pierwiastek</g:link></span>
        </div>
        <div class="body">
            <h1>Pierwiastek List</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	        <g:sortableColumn property="id" title="Id" />
                        
                   	        <g:sortableColumn property="nazwa" title="Nazwa" />
                        
                   	        <g:sortableColumn property="opis" title="Opis" />
                        
                   	        <g:sortableColumn property="symbol" title="Symbol" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${pierwiastekInstanceList}" status="i" var="pierwiastekInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${pierwiastekInstance.id}">${fieldValue(bean:pierwiastekInstance, field:'id')}</g:link></td>
                        
                            <td>${fieldValue(bean:pierwiastekInstance, field:'nazwa')}</td>
                        
                            <td>${fieldValue(bean:pierwiastekInstance, field:'opis')}</td>
                        
                            <td>${fieldValue(bean:pierwiastekInstance, field:'symbol')}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${pierwiastekInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
