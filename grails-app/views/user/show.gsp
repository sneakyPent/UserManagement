<%--
  Created by IntelliJ IDEA.
  User: zacnik
  Date: 10/6/2022
  Time: 11:58 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>${user.lastName} ${user.firstName}</title>
    <meta name="layout" content="main"/>
</head>

<body>
<div class="nav" role="navigation">
    <ul>
        <li><g:link class="list" action="index">User list</g:link></li>
    </ul>
</div>

<div id="show-user" class="content scaffold-show" role="main">
    <f:display bean="user"/>
    <g:form resource="${this.user}">
        <fieldset class="buttons">
            <g:actionSubmit name="delete" class="delete" value="delete" action="delete"/>
            <g:actionSubmit name="edit" class="edit" value="edit" action="edit"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>