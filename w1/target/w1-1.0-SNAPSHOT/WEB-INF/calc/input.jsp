<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-12-07
  Time: 오전 10:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <form action="/calc/makeResult" method="post">
        <input type="number" name="num1" >
        <input type="number" name="num2" >
        <button type="submit">SEND</button>
    </form>
</body>
</html>
