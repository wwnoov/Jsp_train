<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"
         trimDirectiveWhitespaces="true"
%>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Date" %>
<html>
<head>
    <title>page 지시어 - import</title>
</head>
<body>
    <%
        Date today = new Date();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String todayStr = dateFormat.format(today);
        out.println("오늘 날짜 : "+todayStr);
    %>
</body>
</html>