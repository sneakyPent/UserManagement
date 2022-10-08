<%--
  Created by IntelliJ IDEA.
  User: zacnik
  Date: 10/5/2022
  Time: 12:26 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Edit User</title>
    <style>
    .form, .text-field, .submit {
        margin: 20px;
    }
    </style>
    <meta name="layout" content="main"/>
</head>

<body>
<div id="show-user" class="content scaffold-show" role="main">
%{--    <f:all bean="user"/>--}%
    <g:form resource="${this.user}">
        <fieldset class="form">
            <label>First name:</label><br>
            <g:textField name="firstName" value="${user.firstName}" placeholder="Enter Name"/><br>
            <label>Last Name:</label><br>
            <g:textField name="lastName" value="${user.lastName}" placeholder="Enter Last Name"/><br>
            <label>Email:</label><br>
            <g:textField name="email" value="${user.email}" placeholder="example@test.com"/><br>
%{--            <label>Password:</label><br>--}%
%{--            <g:textField name="password" value="${user.password}" placeholder="Enter Password"/><br>--}%
            <label>Address:</label><br>
            <g:textField name="address" value="${user.address}" placeholder="Enter Address"/><br>
            <g:checkBox name="active" value="${user.active}" checked="true"/>
            <label for="active">Active</label><br>
        </fieldset>
        <fieldset class="buttons">
            <g:actionSubmit name="create" class="save" value="Submit" action="save"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>