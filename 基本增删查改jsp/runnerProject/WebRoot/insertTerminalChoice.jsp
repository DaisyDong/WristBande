<%@page import="java.sql.ResultSet"%>
<%@page import="toolsPackage.userSelectClass"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
  <head>
    <title>My JSP 'insertTerminalChoice.jsp' starting page</title>
  </head>
  <%
  	String appId="",terminalId="";
  	userSelectClass userselect = new userSelectClass();
  	ResultSet rs = userselect.selectUserBoundTerminal(appId);
   %>
  <body>
    <h1 align="center">选择手环</h1>
    <table align="center">
    <tr><th>手环携带者</th><th>手环id</th></tr>
    <tr>
    	<% while(rs.next()){ %>
    	<td><%=rs.getString(1) %></td>
    	<% terminalId = rs.getString(2); %>
    	<td><a href="insertTerminal_functionchoice.jsp?choseTerminal=<%=terminalId %>"><%=terminalId %></a></td>
    	<% } %>
    </tr>
    </table>
  </body>
</html>
