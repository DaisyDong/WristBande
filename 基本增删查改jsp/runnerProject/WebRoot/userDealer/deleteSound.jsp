<%@page import="toolsPackage.userDeleteClass"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="toolsPackage.userSelectClass"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
  <head>
    <title>My JSP 'deleteSound.jsp' starting page</title>
  </head>
  <%
  	String terminalId = request.getParameter("terminalId"); 
  	String soundURL,Time,soundTheme,soundLocation,length,soundId;
  	userSelectClass userselect = new userSelectClass();
  	ResultSet rs = userselect.selectTerminalSound(terminalId);
  	userDeleteClass userdelete = new userDeleteClass();
   %>
  <body>
    <h1 align="center">删除录音文件</h1>
    <table align="center">
    	<tr>
    		<th>录音时间</th>
    		<th>主题</th>
    		<th>删除</th>
    	</tr>
    	<% 	
    		while(rs.next()){
    			soundURL = rs.getString(1);
    			Time = rs.getString(2);
    			soundTheme = rs.getString(3);
    			soundLocation = rs.getString(4);
    			length = rs.getString(5);
    			soundId = rs.getString(6);
    	 %>
    	 <tr>
    	 	<td><%=Time %></td>
    	 	<td><%=soundTheme %></td>
    	 	<td><button onclick="<%=userdelete.deleteTerminalSound(terminalId, soundId) %>"></button></td>
    	 </tr>
    	 <% } %>
    </table>
  </body>
</html>
