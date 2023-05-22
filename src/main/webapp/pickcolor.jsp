<%--
  Created by IntelliJ IDEA.
  User: alex
  Date: 5/18/23
  Time: 9:33 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>Pick Color</title>
</head>
<body>
<h2>Pick Your Favorite Color</h2>
<form action="/pickcolor" method="post">
  <label for="color"> Color:</label>
  <input type="text" name="color" id="color">
  <button type="submit">submit</button>
</form>
</body>
</html>

