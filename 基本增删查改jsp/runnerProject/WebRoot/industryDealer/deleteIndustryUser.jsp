<%@page import="toolsPackage.industryuserDeleteClass"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
  <head>
    <title>My JSP 'deleteIndustryUser.jsp' starting page</title>
  </head>
  <%
  	String groupId = "", groupLeader = "";
  	industryuserDeleteClass deleteAll = new industryuserDeleteClass();
   %>
  <body>
    <h1 align="center">你确定要删除该账号？</h1>
    <table align="center">
    	<tr>
    		<td><button onclick="<%=deleteAll.industryuserDeleteAll(groupId, groupLeader) %>">确定</button></td>
    		<td><button onchange="window.close()">取消</button></td>
    	</tr>
    </table>
  </body>
</html>
