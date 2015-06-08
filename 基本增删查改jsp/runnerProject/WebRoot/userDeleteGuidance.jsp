<%@page import="toolsPackage.userDeleteClass"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="toolsPackage.userSelectClass"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
  <head>
    <title>My JSP 'deleteGuidance.jsp' starting page</title>
  </head>
  <%
  	String appId = "",username,terminalId;
  	userSelectClass userselect = new userSelectClass();
   	ResultSet rs = userselect.selectUserBoundTerminal(appId);
   	userDeleteClass userdelete = new userDeleteClass();
   %>
  <body>
    <table>
    	<tr><th>手环使用者</th><th>手环ID</th><th>删除</th></tr>
    	<% while(rs.next()){ 
    		username = rs.getString(1);
    		terminalId = rs.getString(2);
    	%>
    	<tr>
    		<td><%=username %></td><td><a href="deleteTerminalChoice.jsp?terminalId=<%=terminalId %>"><%=terminalId %></a></td>
    		<td><button onclick="<%=userdelete.deleteTerminal(terminalId, appId) %>">删除</button></td>
    	</tr>
    	<% } %>
    </table>
  </body>
</html>
