<%--
  Created by IntelliJ IDEA.
  User: Anton
  Date: 27.01.2019
  Time: 15:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Secure page</title>
</head>
<body>
<h1>Title : ${title}</h1>
<h1>Message : ${message}</h1>

<!-- displaying the logged in user details. -->
<c:if test="${pageContext.request.userPrincipal.name != null}">
    <span>Welcome: ${pageContext.request.userPrincipal.name}</span> |
    <span><a id="logout"
             href="${pageContext.servletContext.contextPath}/logout">Logout</a></span>
</c:if>

</body>
</html>
