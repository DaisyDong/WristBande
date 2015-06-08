<%@page import="java.sql.ResultSet"%>
<%@page import="toolsPackage.industryuserSelectClass"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
  <head>
    <title>My JSP 'selectBoundTerminal.jsp' starting page</title>
  </head>
  <%
  	String groupId="", username, terminalId;
  	industryuserSelectClass industryselect = new industryuserSelectClass();
  	ResultSet rs = industryselect.selectBoundMember(groupId);
   %>
  <body>
    <h1 align="center">群组成员</h1>
    <table align="center">
    	<tr><th>用户名</th><th>手环ID</th></tr>
    	<% while(rs.next()){ 
    			username = rs.getString(1);
    			terminalId = rs.getString(2);
    	%>
    	<tr><td><%=username %></td><td><a href="mberDetail.jsp?terminalId=<%=terminalId %>"><%=terminalId %></a></td></tr>
    	<% } %>
    </table>
  </body>
</html>
