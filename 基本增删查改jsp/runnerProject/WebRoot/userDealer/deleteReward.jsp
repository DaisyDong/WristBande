<%@page import="toolsPackage.userDeleteClass"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="toolsPackage.userSelectClass"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
  <head>
    <title>My JSP 'deleteReward.jsp' starting page</title>
  </head>
  <%
  	String terminalId = request.getParameter("terminalId"); 
  	String reward_event,reward_Location,reward_time,rewardId;
  	userSelectClass userselect = new userSelectClass();
  	ResultSet rs = userselect.selectTerminalReward(terminalId);
  	userDeleteClass userdelete = new userDeleteClass();
   %>
  <body>
    <h1 align="center">删除奖励</h1>
    <table align="center">
    	<tr>
    		<th>奖励事件</th>
    		<th>奖励地点</th>
    		<th>奖励时间</th>
    		<th>删除</th>
    	</tr>
    	<%
    		while(rs.next()){
    			reward_event = rs.getString(1);
    			reward_Location = rs.getString(2);
    			reward_time = rs.getString(3);
    			rewardId = rs.getString(4);
    	 %>
    	 <tr>
    	 	<td><%=reward_event %></td>
    	 	<td><%=reward_Location %></td>
    	 	<td><%=reward_time %></td>
    	 	<td><button onclick="<%=userdelete.deleteTerminalReward(terminalId, rewardId) %>">删除</button></td>
    	 </tr>
    	 <% } %>
    </table>
   </body>
</html>
