<%@page import="java.sql.ResultSet"%>
<%@page import="toolsPackage.userSelectClass"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
  <head>    
    <title>My JSP 'selectTerminalReward.jsp' starting page</title>
  </head>
  <%
  	String choseTerminal = request.getParameter("choseTerminal");
  	userSelectClass userselect = new userSelectClass();
  	ResultSet rs = userselect.selectTerminalExecise(choseTerminal);
  	String record_event,reward_Location,reward_time,rewardId;
   %>
  <body>
    <h1 align="center">奖励信息</h1>
    <table align="center">
    	<tr>
    	<th>卡路里消耗</th>
    	<th>步行数</th>
    	<th>记录日期</th>
    	</tr>
    	<% while(rs.next()){ 
    		record_event = rs.getString(1);
    		reward_Location = rs.getString(2);
    		reward_time = rs.getString(3);
    		rewardId = rs.getString(4);
    	%>
    	<tr><td><%=record_event %></td>
    	<td><%=reward_Location %></td>
    	<td><%=reward_time %></td></tr>
    	<% } %>
    </table>
  </body>
</html>
