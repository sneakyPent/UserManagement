<%--
  Created by IntelliJ IDEA.
  User: zacnik
  Date: 10/6/2022
  Time: 10:37 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create User</title>
    <style>
    .form, .text-field, .submit {
        margin: 20px;
    }
    </style>
    <meta name="layout" content="main"/>
</head>

<body>
<g:form name="form" controller="user" id="form" resource="${this.user}">
    <fieldset class="form">
        <label>First name:</label><br>
        <g:textField name="firstName" value="${firstName}" placeholder="Enter Name"/><br>
        <label>Last Name:</label><br>
        <g:textField name="lastName" value="${lastName}" placeholder="Enter Last Name"/><br>
        <label>Email:</label><br>
        <g:textField name="email" value="${email}" placeholder="example@test.com"/><br>
        <label>Password:</label><br>
        <g:textField name="password" value="${password}" placeholder="Enter Password"/><br>
        <label>Address:</label><br>
        <g:textField name="address" value="${address}" placeholder="Enter Address"/><br>
        <g:checkBox name="active" value="${active}" checked="true"/>
        <label for="active">Active</label><br>
    </fieldset>
    <fieldset class="buttons">
        <g:actionSubmit name="create" class="save" value="Submit" action="save"/>
    </fieldset>
</g:form>
</body>
</html>