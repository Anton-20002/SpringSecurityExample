<%--
  Created by IntelliJ IDEA.
  User: Anton
  Date: 27.01.2019
  Time: 15:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Custom login</title>
    <style type="text/css">
        .error {
            color: #ff0000;
            font-weight: bold;
        }

        .msg {
            color: #008000;
            font-weight: bold;
        }
    </style>

</head>
<body>
<h1 id="banner">Custom login form</h1>

<!-- invalid credentials error msg -->
<c:if test="${not empty error}">
    <div class="error">${error}</div>
</c:if>

<!-- logged out msg -->
<c:if test="${not empty msg}">
    <div class="msg">${msg}</div>
</c:if>

<!-- custom login form -->
<form name="loginform" action="<c:url value='/login'/>" method="POST">
    <table>
        <tr>
            <td>Enter username:</td>
            <td><input type='text' name='username' value=''></td>
        </tr>
        <tr>
            <td>Enter password:</td>
            <td><input type='password' name='password'/></td>
        </tr>
        <tr>
            <td colspan="2"></td>
        </tr>
        <tr>
            <td colspan='2'><input name="submit" type="submit"
                                   value="Submit"/></td>
        </tr>
    </table>
</form>

</body>
</html>
