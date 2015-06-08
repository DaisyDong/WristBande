

<%@page import="java.sql.ResultSet"%>
<%@page import="toolsPackage.userSelectClass"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
  <head>    
    <title>My JSP 'selectTerminalExercise.jsp' starting page</title>
  </head>
  <%
  	String choseTerminal = request.getParameter("choseTerminal");
  	userSelectClass userselect = new userSelectClass();
  	ResultSet rs = userselect.selectTerminalExecise(choseTerminal);
  	String CalorieConsumption,pace,time;
   %>
  <body>
    <h1 align="center">运动信息</h1>
    <table align="center">
    	<tr>
    	<th>卡路里消耗</th>
    	<th>步行数</th>
    	<th>记录日期</th>
    	</tr>
    	<% while(rs.next()){ 
    		CalorieConsumption = rs.getString(1);
    		pace = rs.getString(2);
    		time = rs.getString(3);
    	%>
    	<tr><td><%=CalorieConsumption %></td>
    	<td><%=pace %></td>
    	<td><%=time %></td></tr>
    	<% } %>
    </table>
  </body>
</html>
