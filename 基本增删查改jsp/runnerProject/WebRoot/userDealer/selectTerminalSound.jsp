<%@page import="java.sql.ResultSet"%>
<%@page import="toolsPackage.userSelectClass"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
  <head>    
    <title>My JSP 'selectTerminalSound.jsp' starting page</title>
  </head>
  <%
  	String choseTerminal = request.getParameter("choseTerminal");
  	userSelectClass userselect = new userSelectClass();
  	ResultSet rs = userselect.selectTerminalSound(choseTerminal);
  	String soundURL,Time,soundTheme,soundLocation,length,soundId;
   %>
  <body>
    <h1 align="center">手环录音信息</h1>
    <table align="center">
    	<tr>
    	<th>录音时间</th>
    	<th>主题</th>
    	<th>录音地点</th>
    	<th>长度</th>
    	<th>文件ID</th>
    	</tr>
    	<% while(rs.next()){ 
    		soundURL = rs.getString(1);
    		Time = rs.getString(2);
    		soundTheme = rs.getString(3);
    		soundLocation = rs.getString(4);
    		length = rs.getString(5);
    		soundId = rs.getString(6);
    	%>
    	
    	<tr><td><%=soundId %></td>
    	<td><%=soundTheme %></td>
    	<td><%=soundLocation %></td>
    	<td><%=Time %></td>
    	<td><%=length %></td></tr>
    	<% } %>
    </table>
  </body>
</html>
