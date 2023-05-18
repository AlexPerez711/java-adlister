<%--
  Created by IntelliJ IDEA.
  User: alex
  Date: 5/17/23
  Time: 10:17 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>
</head>
<body>
<%
    if(request.getMethod().equalsIgnoreCase("post")) {
        if (request.getParameter("username").equals("admin") && request.getParameter("password").equals("password")) {
            response.sendRedirect("/profile.jsp");
        } else{
            response.sendRedirect("/login.jsp");
        }
    }
%>

<form action="/login.jsp" method="post">
    <label for="username">Username</label>
    <input type="text" id="username" name="username">
    <label for="password">Password</label>
    <input type="password" id="password" name="password">
    <button type="submit">Sign In</button>
</form>
</body>
</html>
