<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
 <script type="text/javascript">
 function hightLightTopMenu(menuId){
 	$("#topMenu>ui>li").removeClass("over");
 	$("#"+menuId).addClass("over");
 }
 </script>
 <div id="topMenu" class="menu">
 <ul>
 	<li id="topMenu_home"><a href="">首页</a></li>
 	<li id="topMenu_set"><a href="">设置</a></li>
 	<li id="topMenu_service"><a href="">服务</a></li>
 	<li id="topMenu_payfor"><a href="">充值</a></li>
 	<!-- span组合行内元素，以便通过样式来格式化他们 -->
 	<span class="qustion"><a href="">问题反馈</a></span>
 </ul></div>
