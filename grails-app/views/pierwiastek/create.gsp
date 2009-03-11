
<%@ page import="pl.jaceklaskowski.nauczyciel.Pierwiastek" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Create Pierwiastek</title>         
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">Pierwiastek List</g:link></span>
        </div>
        <div class="body">
            <h1>Create Pierwiastek</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${pierwiastekInstance}">
            <div class="errors">
                <g:renderErrors bean="${pierwiastekInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nazwa">Nazwa:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:pierwiastekInstance,field:'nazwa','errors')}">
                                    <input type="text" id="nazwa" name="nazwa" value="${fieldValue(bean:pierwiastekInstance,field:'nazwa')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="opis">Opis:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:pierwiastekInstance,field:'opis','errors')}">
                                    <input type="text" id="opis" name="opis" value="${fieldValue(bean:pierwiastekInstance,field:'opis')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="symbol">Symbol:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:pierwiastekInstance,field:'symbol','errors')}">
                                    <input type="text" id="symbol" name="symbol" value="${fieldValue(bean:pierwiastekInstance,field:'symbol')}"/>
                                </td>
                            </tr> 
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><input class="save" type="submit" value="Create" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
