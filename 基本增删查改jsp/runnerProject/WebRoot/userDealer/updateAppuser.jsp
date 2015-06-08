<%@page import="java.sql.ResultSet"%>
<%@page import="toolsPackage.userSelectClass"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'updateAppuser.jsp' starting page</title>
  </head>
  <%
  	String terminalId = "",appId  = "";      //这个值为从网页提取出来的用户名
  	userSelectClass message = new userSelectClass();
  	ResultSet rs = message.selectUserData(appId);
   %>
  <body>
    <h1 align="center">修改用户信息</h1>
  	<form action="toolsPackage/userUpdateServlet" method="post">
  	<input type="hidden" name="userpagename" value="updateAppuser">
  	<input type="hidden" name="terminaId" value="<%=terminalId %>">
  	<input type="hidden" name="appId" value="<%=appId %>">
  		<table align="center">
  		<% while(rs.next()){ %>
  			<tr><td>昵称</td><td><input type="text" name="nickname" value="<%=rs.getString(1) %>"></td></tr>
  			<tr><td>用户名</td><td><input type="text" name="username" value="<%=rs.getString(2) %>"></td></tr>
  			<tr><td>生日</td><td><input type="text" name="birthday" value="<%=rs.getString(3) %>"></td></tr>
  			<tr><td>用户权限</td><td><input type="text" name="App_priority" value="<%=rs.getString(4) %>" disabled="disabled" readonly="readonly"></td></tr>
  			<tr><td>邮箱</td><td><input type="text" name="email" value="<%=rs.getString(5) %>"></td></tr>
  			<tr><td>电话</td><td><input type="text" name="phone" value="<%=rs.getString(6) %>"></td></tr>
  			<tr><td>绑定电话</td><td><input type="text" name="Bound_phonenumber" value="<%=rs.getString(7) %>"></td></tr>
  			<tr>
  			<% String sex = rs.getString(8);
  			   if(sex=="f"){
  			 %>
  			 <td>性别</td><td><input type="radio" name="sex" value="m">男<input type="radio" name="sex" value="f" checked="checked">女</td>
  			 <% }else{ %>
  			 <td>性别</td><td><input type="radio" name="sex" value="m" checked="checked">男<input type="radio" name="sex" value="f">女</td>
  			 <% } %>
  			</tr>
  			<tr><td>头像地址</td><td><input type="text" name="headPictureURL" value="<%=rs.getString(9) %>" disabled="disabled" readonly="readonly"></td></tr>
  			<tr><td>付费种类</td><td><input type="text" name="Paytype_num" value="<%=rs.getString(10) %>" disabled="disabled" readonly="readonly"></td></tr>
  			<tr><td>付费类型</td><td><input type="text" name="Paytype" value="<%=rs.getString(11) %>" disabled="disabled" readonly="readonly"></td></tr>
  		<% } %>
  		</table>
  		<table align="center"><tr><td><input type="submit" value="确定"></td><td><input type="button" value="取消" onclick="window.close()"></td></tr></table>
  </body>
</html>
