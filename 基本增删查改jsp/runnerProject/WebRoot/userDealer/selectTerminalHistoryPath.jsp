<%@page import="java.sql.ResultSet"%>
<%@page import="toolsPackage.userSelectClass"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
  <head>    
    <title>My JSP 'selectTerminalHistoryPath.jsp' starting page</title>
  </head>
  <%
  	String terminalId = request.getParameter("choseTerminal");
  	userSelectClass userselect = new userSelectClass();
  	ResultSet rs = userselect.selectTerminalHistoryLocation(terminalId);
   %>
  <body>
    <h1 align="center">手环历史信息</h1>
    <table align="center">
    	<tr><th>记录顺序</th><th>地址信息</th><th>时间</th></tr>
    	<% while(rs.next()){ %>
    	<tr><td><%=rs.getString(1) %></td>
    	<td><%=rs.getString(2) %></td>
    	<td><%=rs.getString(3) %></td></tr>
    	<% } %>
    </table>
  </body>
</html>
