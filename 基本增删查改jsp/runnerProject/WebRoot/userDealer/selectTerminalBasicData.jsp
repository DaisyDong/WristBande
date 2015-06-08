<%@page import="java.sql.ResultSet"%>
<%@page import="toolsPackage.userSelectClass"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
  <head>    
    <title>My JSP 'selectTerminalBasicData.jsp' starting page</title>
  </head>
  <% 
  	String choseTerminal = request.getParameter("choseTerminal");
  	userSelectClass userselect = new userSelectClass();
  	String appId="";
  	ResultSet rs = userselect.selectSingleTerminalData(appId, choseTerminal);
   %>
  <body>
    <h1 align="center">手环基本信息</h1>
    <table align="center">
    	<% while(rs.next()){ %>
    	<tr><td>手环ID</td><td><%=rs.getString(1) %></td></tr>
    	<tr><td>当前是否在线</td><td><%=rs.getString(2) %></td></tr>
    	<tr><td>是否处于私密时间</td><td><%=rs.getString(3) %></td></tr>
    	<tr><td>名字</td><td><%=rs.getString(4) %></td></tr>
    	<tr><td>昵称</td><td><%=rs.getString(5) %></td></tr>
    	<tr><td>生日</td><td><%=rs.getString(6) %></td></tr>
    	<tr><td>性别 </td><td><%=rs.getString(7) %></td></tr>
    	<tr><td>信息是否可永久保存</td><td><%=rs.getString(8) %></td></tr>
    	<tr><td>手环当前版本</td><td><%=rs.getString(9) %></td></tr>
    	<% } %>
    </table>
  </body>
</html>
