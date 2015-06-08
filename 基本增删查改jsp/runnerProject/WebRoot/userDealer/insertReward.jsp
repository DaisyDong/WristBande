<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
  <head>    
    <title>My JSP 'insertReward.jsp' starting page</title>
  </head>
  <% 
  	String terminalId = request.getParameter("choseTerminal");
  	Date date = new Date();
  	String currentTime = date.getYear() + date.getMonth() + date.getDate() + date.getHours() + date.getMinutes() + date.getSeconds() + "";
   %>
  <body>
    <h1 align="center">添加奖励信息</h1>
    <form action="/toolsPackage/userInsertServlet" method="post">
    <input type="hidden" name="pageType" value="insertReward">
    <input type="hidden" name="time" value="<%=currentTime %>">
    <input type="hidden" name="terminalId" value="<%=terminalId %>" >
    <table align="center">
    	<tr><td>奖励事件</td><td><input type="text" name="reward_event"></td></tr>
    </table>
    <table align="center">
    <tr><td><input type="submit" value="添加"></td>
    <td><input type="button" value="取消" onclick="window.close()"></td></tr>
    </table>
    </form>
  </body>
</html>
