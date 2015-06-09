<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="java.io.*" %>
<%@page import="java.sql.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 
   <% 
   String lng= request.getParameter("lng"); 
   String lat=request.getParameter("lat"); 
   String[] lngs = lng.split(",");
   String[] lats = lat.split(",");
   int n = 1;
   try{
   	Class.forName("com.mysql.jdbc.Driver");
   	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/band","root","ymzmdx");
   	Statement st = conn.createStatement();
   	for(int i = 0;i < lngs.length;i++){
   		float a = Float.parseFloat(lngs[i]);
   		float b = Float.parseFloat(lats[i]);
   		String sql = "insert into elecFence values("+a+","+b+")";
   		System.out.println(sql); 
   		st.executeUpdate(sql);
   }
   }catch(Exception e){
   		n = 2;
   } 
   out.println(n);
   out.flush(); 
   	%>  
