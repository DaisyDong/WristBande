<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'MyJsp.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>  
      <script type="text/javascript"> 
       var test1 = '111'; //定义js变量 
       document.form.test2.value = test1;
       //将js变量的值放到form中的一个隐藏域中 
       var formObj = document.getElementById('passForm');
       formObj.submit();
      </script> 
     <form  method="post" action="bb.jsp" id ="passForm"> 
     <input id = 'test2' type = 'hidden' name="test2"> 
     </form>   
    <%
    request.setCharacterEncoding("utf-8");
    String txtMsg = request.getParameter("test2"); 
    System.out.println(txtMsg);
  %>
  </body>
</html>
