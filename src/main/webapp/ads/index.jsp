<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: alex
  Date: 5/23/23
  Time: 3:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Ads</title>
</head>
<body>
<h1>Viewing all Ads</h1>
<c:forEach items="${allAds}" var="ad">
  <div>
    <h1>${ad.id}</h1>
    <h2>${ad.title}</h2>
    <p>${ad.description}</p>
  </div>
</c:forEach>
</body>
</html>
