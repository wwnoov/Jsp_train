<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="utf-8" %>
<%
    pageContext.setAttribute("pAttr","김유신");
    request.setAttribute("rAttr","계백");
%>
<html>
<head>
    <title>액션 태그 - forward</title>
</head>
<body>
    <h2>액션 태그를 이용한 포워딩</h2>
    <h2>메롱~~~~~~~~~~~~~!</h2>
    <jsp:forward page="/07ActionTag/ForwardSub.jsp"/>
</body>
</html>
