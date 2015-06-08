<%@page import="java.sql.ResultSet"%>
<%@page import="toolsPackage.industryuserSelectClass"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
  <head>
    <title>My JSP 'updateIndustryData.jsp' starting page</title>
  </head>
  <%
  	String groupLeader = "", groupId = "", pagetype="updateIndustryData";
  	industryuserSelectClass industryselect = new industryuserSelectClass();
  	ResultSet rs = industryselect.selectGroupData(groupId, groupLeader);
  	String GroupID,groupName,groupType,groupNumber,maxNumber,GroupOrganization,GroupAddress,GroupData;
   %>
  <body>
    <h1 align="center">行业用户信息修改</h1>
    <form action="toolsPackage/industryuserUpdateServlet" method="post">
    	<input type="hidden" name="pagetype" value="<%=pagetype %>">
    	<input type="hidden" name="groupId" value="<%=groupId %>">
   		<input type="hidden" name="groupLeader" value="<%=groupLeader %>">
    	<table align="center">
    		<% while(rs.next()){
    				GroupID = rs.getString(1);
    				groupName = rs.getString(2);
    				groupType = rs.getString(3);
    				groupNumber = rs.getString(4);
    				maxNumber = rs.getString(5);
    				GroupOrganization = rs.getString(6);
    				GroupAddress = rs.getString(7);
    				GroupData = rs.getString(8);
    		 %>
    		 <tr><td>群组ID</td><td><label><%=GroupID %></label></td></tr>
    		 <tr><td>群组名称</td><td><input type="text" name="groupName" value="<%=groupName %>"></td></tr>
    		 <tr><td>群组类型</td><td><label><%=groupType %></label></td></tr>
    		 <tr><td>成员数量</td><td><%=groupNumber %></td></tr>
    		 <tr><td>成员数量上限</td><td><%=maxNumber %></td></tr>
    		 <tr><td>群所属组织</td><td><input type="text" name="GroupOrganization" value="<%=GroupOrganization %>"></td></tr>
    		 <tr><td>群地址</td><td><input type="text" name="GroupAddress" value="<%=GroupAddress %>"></td></tr>
    		 <tr><td>群数据</td><td><input type="text" name="GroupData" value="<%=GroupData %>"></td></tr>
    		 <% } %>
    	</table>
    	<table align="center">
    		<tr><td><input type="submit" value="修改"></td>
    		<td><input type="button" value="取消" onclick="window.close()"></td></tr>
    	</table>
    </form>
  </body>
</html>
