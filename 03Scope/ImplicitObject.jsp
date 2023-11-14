<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-11-07
  Time: 오후 2:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>내장 객체 - exception</title>
</head>
<body>
    <%
        int status = response.getStatus();
        if (status ==404){
            out.print("404 에러가 발생하였습니다.");
            out.print("<br/>파일 경로를 확인해 주세요.");
        }else if (status ==404){
            out.print("405 에러가 발생하였습니다.");
            out.print("<br/>요청 방식(method)을 확인해 주세요.");
        }else if (status ==500){
            out.print("500 에러가 발생하였습니다.");
            out.print("<br/>소스코드에 오류가 없는지 확인해 주세요.");
        }
    %>
</body>
</html>
