<%@page import="java.sql.ResultSet"%>
<%@page import="toolsPackage.userSelectClass"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
  <head>    
    <title>My JSP 'selectUserData.jsp' starting page</title>
  </head>
  <%
  	String appId="",terminalId="";
  	userSelectClass userselect = new userSelectClass();
  	ResultSet rs = userselect.selectUserData(appId); 
   %>
  <body>
    <table align="center">
    <tr>
    <th>用户昵称</th>
    <th>用户名</th>
    <th>生日</th>
    <th>用户权限</th>
    <th>邮箱</th>
    <th>电话</th>
    <th>绑定电话</th>
    <th>性别</th>
    <th>头像地址</th>
    <th>支持付费种类</th>
    <th>付费类型</th>
    </tr>
    <% while(rs.next()){ %>
    	<tr>
    	<td><%=rs.getString(1) %></td>
    	<td><%=rs.getString(2) %></td>
    	<td><%=rs.getString(3) %></td>
    	<td><%=rs.getString(4) %></td>
    	<td><%=rs.getString(5) %></td>
    	<td><%=rs.getString(6) %></td>
    	<td><%=rs.getString(7) %></td>
    	<td><%=rs.getString(8) %></td>
    	<td><%=rs.getString(9) %></td>
    	<td><%=rs.getString(10) %></td>
    	<td><%=rs.getString(11) %></td>
    	</tr>
    <% } %>
    </table>
  </body>
</html>
