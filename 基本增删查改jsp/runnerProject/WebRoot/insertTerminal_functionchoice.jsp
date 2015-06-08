<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
  <head>
    <title>My JSP 'insertTerminal_functionchoice.jsp' starting page</title>
  </head>
  <%
  	String choseTerminal = request.getParameter("choseTerminal");
   %>
  <body>
    <h1 align="center">选择添加信息</h1>
    <table align="center">
    	<tr><td><a href="insertPhone.jsp?choseTerminal=<%=choseTerminal %>">添加电话信息</a></td></tr>
    	<tr><td><a href="?choseTerminal=<%=choseTerminal %>">对使用者给予奖励</a></td></tr>
    </table>
  </body>
</html>
