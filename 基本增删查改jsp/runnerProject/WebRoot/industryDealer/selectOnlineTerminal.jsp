<%@page import="java.sql.ResultSet"%>
<%@page import="toolsPackage.industryuserSelectClass"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
  <head>
    <title>My JSP 'selectOnlineTerminal.jsp' starting page</title>
  </head>
  <%
  	String terminalId = request.getParameter("terminalId");
  	String groupId = "", InPrivate,username,nickname,birthday,sex,phone,Location;
  	String isOnline = "Y";
  	industryuserSelectClass industryselect = new industryuserSelectClass();
  	ResultSet rs = industryselect.selectIsOnlineTerminal(terminalId, groupId, isOnline);
   %>
  <body>
    <h1 align="center">手环<%=terminalId %>详细信息</h1>
    <table align="center">
    <% while(rs.next()){ 
    		InPrivate = rs.getString(1);
    		username = rs.getString(2);
    		nickname = rs.getString(3);
    		birthday = rs.getString(4);
    		sex = rs.getString(5);
    		phone = rs.getString(6);
    		Location = rs.getString(7);
    %>
    	
    	<tr><td>是否处于私密时间</td><td><%=InPrivate %></td></tr>
    	<tr><td>用户名</td><td><%=username %></td></tr>
    	<tr><td>昵称</td><td><%=nickname %></td></tr>
    	<tr><td>生日</td><td><%=birthday %></td></tr>
    	<tr><td>性别</td><td><%=sex %></td></tr>
    	<tr><td>电话</td><td><%=phone %></td></tr>
    	<tr><td>当前地址</td><td><%=Location %></td></tr>
    <% } %>
    </table>
  </body>
</html>
