<%@page import="java.sql.ResultSet"%>
<%@page import="toolsPackage.userSelectClass"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
  <head>    
    <title>My JSP 'updateReward.jsp' starting page</title>
  </head>
  <%
  	String terminalId = "",appId  = "";
  	userSelectClass message = new userSelectClass();
  	ResultSet rs = message.selectTerminalReward(terminalId);
   %>
  <body>
    <h1 align="center">修改奖励信息</h1>
  	
  		<table align="center">
  		<tr>
  		<th>奖励事件</th>
  		<th>奖励地点</th>
  		<th>奖励地点</th>
  		<th></th>
  		</tr>
  		
  			<% while(rs.next()){ %>
  			
  			<form action="toolsPackage/userUpdateServlet" method="post">
  			<input type="hidden" name="userpagename" value="updateReward">
  			<input type="hidden" name="terminaId" value="<%=terminalId %>">
  			<input type="hidden" name="appId" value="<%=appId %>">
  			<tr><td><input type="text" name="reward_event" value="<%=rs.getString(1) %>" ></td>
  			<td><label><%=rs.getString(2) %></label></td>
  			<td><label><%=rs.getString(3) %></label><input type="hidden" name="reward_time" value="<%=rs.getString(3) %>"></td>
  			<td><input type="submit" value="确定"></td>
  			<input type="hidden" name="rewardId" value="<%=rs.getString(4) %>">
  			</form>
  			</tr>
  			<% } %>
  			
  		</table>
  	</form>
  </body>
</html>
