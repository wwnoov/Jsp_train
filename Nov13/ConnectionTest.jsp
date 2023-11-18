<%@ page import="common.JDBConnect"%>
<%@ page import="common.JDBConnPool"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html>
<head><title>JDBC</title></head>
<body>
<h2>JDBC 테스트 1</h2>
<%
  JDBConnect jdbc1 = new JDBConnect();
  jdbc1.close();
%>

<h2>커넥션 풀 테스트</h2>
<%
  JDBConnPool pool = new JDBConnPool();
  pool.close();
%>

<h2>JDBC 테스트 2</h2>
<%
  String driver = application.getInitParameter("MySQL_Driver");
  String url = application.getInitParameter("MySQL_URL");
  String id = application.getInitParameter("MySQL_Id");
  String pwd = application.getInitParameter("MySQL_Pwd");

  JDBConnect jdbc2 = new JDBConnect(driver, url, id, pwd);
  jdbc2.close();
%>

<h2>JDBC 테스트 3</h2>
<%
  JDBConnect jdbc3 = new JDBConnect(application);
  jdbc3.close();
%>
</body>
</html>