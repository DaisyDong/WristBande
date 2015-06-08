<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
  <head>    
    <title>My JSP 'selectTerminalChoice.jsp' starting page</title>
  </head>
  <%
  String choseTerminal = request.getParameter("choseTerminal");
   %>
  <body> 
    <h1 align="center">选择你要查询的信息</h1>
    <table align="center">
    	<tr><td><a href="selectTerminalBasicData.jsp?choseTerminal=<%=choseTerminal %>">手环基本信息</a></td></tr>
    	<tr><td><a href="selectTerminalHistoryPath.jsp?choseTerminal=<%=choseTerminal %>">手环历史位置</a></td></tr>
    	<tr><td><a href="selectTerminalSound.jsp?choseTerminal=<%=choseTerminal %>">手环录音</a></td></tr>
    	<tr><td><a href="selectTerminalExercise.jsp?choseTerminal=<%=choseTerminal %>">运动信息</a></td></tr>
    	<tr><td><a href="selectTerminalPhoneRecord.jsp?choseTerminal=<%=choseTerminal %>">电话簿</a></td></tr>
    	<tr><td><a href="selectTerminalReward.jsp?choseTerminal=<%=choseTerminal %>">奖励信息</a></td></tr>
    </table>
  </body>
</html>
