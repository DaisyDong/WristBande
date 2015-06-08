<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!-- 登录信息显示 -->
<div class="login_bg">
	<div class="login_title"><img src=""></div>
	<div class="login_content">
		<div class="infor04">尊敬的   您好！</div>
		<br/>
		<div class="info05">
		[<a href="">我的资料</a>]
		[<a href="">密码管理</a>]
		[<a href="">退出</a>]</div>
	</div>
</div>
