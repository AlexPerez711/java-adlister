<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <jsp:include page="partials/head.jsp" />
</head>
<body>
<%@ include file="partials/navbar.jsp"%>

<form action="login.jsp" method="post">
    <label for="username">Username</label>
    <input type="text" name="username" id="username">
    <label for="password">Password</label>
    <input type="password" name="password" id="password">
    <button>Login</button>
</form>
<c:choose>
    <c:when test='${param.username.equals("admin") && param.password.equals("password")}'>
        <% response.sendRedirect("profile.jsp"); %>
    </c:when>

</c:choose>
<jsp:include page="partials/scripts.jsp"/>
</body>
</html>