<%@page import="java.sql.ResultSet"%>
<%@page import="toolsPackage.userSelectClass"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
  <head>    
    <title>My JSP 'selectTerminalPhoneRecord.jsp' starting page</title>
  </head>
  <%
  	String terminalId = request.getParameter("choseTerminal");
  	userSelectClass userselect = new userSelectClass();
  	ResultSet rs = userselect.selectTerminalPhoneRecord(terminalId);
  	String phoneId,phoneUser,phoneNumber,phonetype;
   %>
  <body>
    <h1 align="center">电话簿</h1>
    <table align="center">
    	<tr><th>电话ID</th><th>使用者</th><th>电话号</th><th>电话类型</th></tr>
    	<% while(rs.next()){ %>
    	<tr><td><%=rs.getString(1) %></td>
    	<td><%=rs.getString(2) %></td>
    	<td><%=rs.getString(3) %></td>
    	<td><%=rs.getString(4) %></td>
    	</tr>
    	<% } %>
    </table>
  </body>
</html>
