<%@page import="java.sql.ResultSet"%>
<%@page import="toolsPackage.industryuserSelectClass"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
  <head>
    <title>My JSP 'selectMemberDetail.jsp' starting page</title>
  </head>
  <%
  	String terminalId = request.getParameter("terminalId");
  	String groupId = "", isOnline,InPrivate,username,nickname,birthday,sex,phone,Location;
  	industryuserSelectClass industryselect = new industryuserSelectClass();
  	ResultSet rs = industryselect.selectMemberData(terminalId, groupId);
   %>
  <body>
    <h1 align="center">手环<%=terminalId %>详细信息</h1>
    <table align="center">
    <% while(rs.next()){ 
    		isOnline = rs.getString(1);
    		InPrivate = rs.getString(2);
    		username = rs.getString(3);
    		nickname = rs.getString(4);
    		birthday = rs.getString(5);
    		sex = rs.getString(6);
    		phone = rs.getString(7);
    		Location = rs.getString(8);
    %>
    	<tr><td>是否在线</td><td><%=isOnline %></td></tr>
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
