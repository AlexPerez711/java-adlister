<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>View Color</title>
  <style>
    body {
      background-color: <%= request.getParameter("color") %>;
    }
  </style>
</head>
<body>
