<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
  <head>
    <title>My JSP 'insertPhone.jsp' starting page</title>
  </head>
  <% String terminalId = request.getParameter("choseTerminal"); %>
  <body>
    <h1 align="center">添加电话</h1>
    <form action="/toolsPackage/userInsertServlet" method="post">
    <input type="hidden" name="pageType" value="insertPhone">
    <table align="center">
    	<tr><td>手环ID</td><td><input type="text" name="choseTerminal" value="<%=terminalId %>" disabled="disabled"></td></tr>
    	<tr><td>电话使用者</td><td><input type="text" name="phoneUser"></td></tr>
    	<tr><td>电话号码</td><td><input type="text" name="phoneNumber"></td></tr>
    	<tr><td>电话类型</td><td><input type="text" name="phonetype"></td></tr>
    </table>
    <table align="center">
    <tr><td><input type="submit" value="添加"></td><td><input type="button" value="取消" onclick="window.close()"></td></tr>
    </table>
    </form>
  </body>
</html>
