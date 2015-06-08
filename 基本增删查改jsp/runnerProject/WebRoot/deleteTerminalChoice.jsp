<%@page import="toolsPackage.userSelectClass"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
  <head>
    <title>My JSP 'deleteTerminalChoice.jsp' starting page</title>
  </head>
  <%
   String terminalId = request.getParameter("terminalId"); 
   %>
  <body>
    <table align="center">
    	<tr><td><a href="deletePhone.jsp?terminalId=<%=terminalId %>"></a>删除电话</td></tr>
    	<tr><td><a href="deleteReward.jsp?terminalId=<%=terminalId %>"></a>删除奖励信息</td></tr>
    	<tr><td><a href="deleteSound.jsp?terminalId=<%=terminalId %>"></a>删除录音</td></tr>
    </table>
  </body>
</html>
