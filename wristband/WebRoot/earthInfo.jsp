<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!doctype html>
<html>
<head>
<meta charset="gb2312">
<title>智能手环</title>
 <base href="<%=basePath%>">
    
    <title>My JSP 'earthInfo.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

<link href="css/styles.css" rel="stylesheet" type="text/css" />
<link href="css/css.css" rel="stylesheet" type="text/css" />

<script src="js/1.js"></script>
<style>
			#container { width: 730px; height:730px; text-align:center;  float: right;margin:0 auto; }
			
</style>

<%!
	float[][] lnglat = new float[100][2];
	int count = 0;
	String[] name = new String[100];
 %>
 
</head>
<body>

 
 <div id=menu_out>
  <div id=menu_in>
    <div id=menu>
      <UL id=nav>
        <LI><A class=nav_on id=mynav0 onmouseover=javascript:qiehuan(0) href="http://www.mobanwang.com/"><SPAN>首 页</SPAN></A></LI>
        <LI class="menu_line"></LI>
        <li><a href="http://www.mobanwang.com/" onmouseover="javascript:qiehuan(1)" id="mynav1" class="nav_off"><span>设置</span></a></li>
        <li class="menu_line"></li>
        <li><a href="http://js.mobanwang.com/" onmouseover="javascript:qiehuan(2)" id="mynav2" class="nav_off"><span>服务</span></a></li>
        <li class="menu_line"></li>
        <li><a href="http://icon.mobanwang.com/" onmouseover="javascript:qiehuan(3)" id="mynav3" class="nav_off"><span>充值</span></a></li>
        <li class="menu_line"></li>
        <li><a href="http://flash.mobanwang.com/" onmouseover="javascript:qiehuan(4)" id="mynav4" class="nav_off"><span>问题反馈</span></a></li>
        <li class="menu_line"></li>
        <li><a href="http://design.mobanwang.com/" onmouseover="javascript:qiehuan(5)" id="mynav5" class="nav_off"><span>帮助</span></a></li>
        <li class="menu_line"></li>
		 <li><a href="http://design.mobanwang.com/" onmouseover="javascript:qiehuan(6)" id="mynav6" class="nav_off"><span>注册</span></a></li>
		  <li><a href="http://design.mobanwang.com/" onmouseover="javascript:qiehuan(7)" id="mynav7" class="nav_off"><span>登陆</span></a></li>
       
      </UL>
      <div id=menu_con>
        <div id=qh_con0 style="DISPLAY: block">
          <UL>
            <LI><a href="http://www.mobanwang.com/"><span>栏目名称1</span></A></LI>
            <LI class=menu_line2></LI>
            <LI><A href="#"><SPAN>栏目名称2</SPAN></A></LI>
            <LI class=menu_line2></LI>
            <LI><A href="#"><SPAN>栏目名称3</SPAN></A></LI>
          </UL>
        </div>
        <div id=qh_con1 style="DISPLAY: none">
          <UL>
            <LI><a href="#"><span>栏目名称4</span></A></LI>
            <LI class=menu_line2></LI>
            <LI><A href="#"><SPAN>栏目名称5</SPAN></A></LI>
            <LI class=menu_line2></LI>
            <LI><A href="#"><SPAN>栏目名称6</SPAN></A></LI>
          </UL>
        </div>
        <div id=qh_con2 style="DISPLAY: none">
          <UL>
            <LI><a href="#"><span>栏目名称7</span></A></LI>
            <LI class=menu_line2></LI>
            <LI><A href="#"><SPAN>栏目名称8</SPAN></A></LI>
            <LI class=menu_line2></LI>
            <LI><A href="#"><SPAN>栏目名称9</SPAN></A></LI>
          </UL>
        </div>
        <div id=qh_con3 style="DISPLAY: none">
          <UL>
            <LI><a href="#"><span>栏目名称10</span></A></LI>
            <LI class=menu_line2></LI>
            <LI><A href="#"><SPAN>栏目名称11</SPAN></A></LI>
            <LI class=menu_line2></LI>
            <LI><A href="#"><SPAN>栏目名称12</SPAN></A></LI>
          </UL>
        </div>
        <div id=qh_con4 style="DISPLAY: none">
          <UL>
            <LI><a href="#"><span>栏目名称13</span></A></LI>
            <LI class=menu_line2></LI>
            <LI><A href="#"><SPAN>栏目名称14</SPAN></A></LI>
            <LI class=menu_line2></LI>
            <LI><A href="#"><SPAN>栏目名称15</SPAN></A></LI>
          </UL>
        </div>
        <div id=qh_con5 style="DISPLAY: none">
          <UL>
            <LI><a href="#"><span>栏目名称16</span></A></LI>
            <LI class=menu_line2></LI>
            <LI><A href="#"><SPAN>栏目名称17</SPAN></A></LI>
            <LI class=menu_line2></LI>
            <LI><A href="#"><SPAN>栏目名称18</SPAN></A></LI>
          </UL>
        </div>
        <div id=qh_con6 style="DISPLAY: none">
          <UL>
            <LI><a href="#"><span>栏目名称19</span></A></LI>
            <LI class=menu_line2></LI>
            <LI><A href="#"><SPAN>栏目名称20</SPAN></A></LI>
            <LI class=menu_line2></LI>
            <LI><A href="#"><SPAN>栏目名称21</SPAN></A></LI>
          </UL>
        </div>
        <div id=qh_con7 style="DISPLAY: none">
          <UL>
            <LI><a href="#"><span>栏目名称22</span></A></LI>
            <LI class=menu_line2></LI>
            <LI><A href="#"><SPAN>栏目名称23</SPAN></A></LI>
            <LI class=menu_line2></LI>
            <LI><A href="#"><SPAN>栏目名称24</SPAN></A></LI>
          </UL>
        </div>
        <div id=qh_con8 style="DISPLAY: none">
          <UL>
            <LI><a href="#"><span>栏目名称25</span></A></LI>
            <LI class=menu_line2></LI>
            <LI><A href="#"><SPAN>栏目名称26</SPAN></A></LI>
            <LI class=menu_line2></LI>
            <LI><A href="#"><SPAN>栏目名称27</SPAN></A></LI>
          </UL>
        </div>
        <div id=qh_con9 style="DISPLAY: none">
          <UL>
            <LI><a href="#"><span>栏目名称28</span></A></LI>
            <LI class=menu_line2></LI>
            <LI><A href="#"><SPAN>栏目名称29</SPAN></A></LI>
            <LI class=menu_line2></LI>
            <LI><A href="#"><SPAN>栏目名称30</SPAN></A></LI>
          </UL>
        </div>
      </div>
    </div>
  </div>
</div>

 
 
 <div class="mainContent">
    <aside>
      <div class="avatar">
        <a href="#"><span>我的图片</span></a>
      </div>
     
      <div class="userinfo"> 
        <p class="q-fans"><a href="/" target="_blank" > 我的资料</a></p> 
        <p class="btns"><a href="/" target="_blank" >设置</a><a href="/" target="_blank">密码管理</a>  
      </div>
      <section class="newpic">
         <h2>天气</h2>
         <ul>
           <li><a href="/">标签1</a></li></br>
           <li><a href="/">标签1</a></li></br>
           <li><a href="/">标签1</a></li></br>

           <li><a href="/">标签1</a></li>
        </ul>
      </section>
      <section class="taglist">
         <h2>全部标签</h2>
         <ul>
           <li><a href="/">标签1</a></li></br>
           <li><a href="/">标签1</a></li></br>
           <li><a href="/">标签1</a></li></br>

           <li><a href="/">标签1</a></li>
        </ul>
      </section>
    </aside>
    <div class="blogitem">
      
		<div id="container"></div> 
<script type="text/javascript"
src="http://webapi.amap.com/maps?v=1.3&key=e02d98c99454566cb174eb717540a320">
</script>
<%
	Connection conn = null;
	Statement st = null;
	ResultSet rs = null;
	//String id = request.getParameter("userid");
	String id = "003"; 
	try{
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/band","root","ymzmdx");
		st = conn.createStatement();
		String sql = "select lng,lat,name from earth where id='"+id+"';";
		System.out.println(sql);
		rs = st.executeQuery(sql);
		while(rs.next()) {
			lnglat[count][0] = rs.getFloat("lng");	//经度
			System.out.println("经度"+lnglat[count][0]); 
			name[count] = rs.getString("name");
			lnglat[count++][1] = rs.getFloat("lat"); //纬度
			System.out.println("纬度"+lnglat[count - 1][1]); 
			 
		}
		System.out.println(count);
		st.close();
		conn.close();
	}catch(Exception e) {
		e.printStackTrace();
	}
	
		
 %>
<script type="text/javascript">
 	(function(){  
 		var map=new AMap.Map('container');
 	 	map.setZoom(16);
	map.plugin(["AMap.MapType","AMap.OverView","AMap.Scale","AMap.ToolBar"],
	function(){
	var type = new AMap.MapType();
	map.addControl(type);
	var tool = new AMap.ToolBar();
	map.addControl(tool);
	var view = new AMap.OverView();
	map.addControl(view);
	var scale = new AMap.Scale();
	map.addControl(scale);
	});   
	var count = "<%=count%>";
	document.write(count); 
	var marker1 = [];   
	var info = [];
	<% int j = 0;
		for(j = 0;j < count;j++){
	%>
	var lng = "<%=lnglat[j][0]%>"; 
	var lat = "<%=lnglat[j][1]%>"; 
	var name = "<%=name[j]%>";
	 var i = "<%=j%>"; 
	 var tag = true;
	 if(tag){
	 	var position = new AMap.LngLat(lng,lat);
	 	map.setCenter(position);
	 	tag = false;
	 }
	  marker1[i] = new AMap.Marker({
		map:map,
		position:new AMap.LngLat(lng,lat),
		raiseOnDrag:true 
	});   
	var info1 = [];               
	info1.push("用户"+"<%=id%>");                 
	info1.push(" 这是宝贝："+name);                 
	info1.push(" 宝贝现在在");
	info1.push("<a href=/>查看详细信息</a>");
	info.push(info1);           
	AMap.event.addListener(marker1[i],"click",function(e){  
		var position = e.lnglat;
		var tag = false;
		var a = 0;  
		for(a = 0;a <= i;a++){ 
			var diffLng = position.lng - marker1[a].getPosition().lng;
			var diffLat = position.lat - marker1[a].getPosition().lat; 
			//alert(diffLng+" "+diffLat); 
			if(diffLng > -0.00017 && diffLng < 0.00017 && diffLat > 0 && diffLat < 0.0005){
				tag = true; 
				break;
			} 
			//alert("距离是："+dis); 
		}
		//alert("找到了"+info[a]);
		if(tag){
			var inforWindow = new AMap.InfoWindow({              
 	 			content:info[a].join("<br>")                 
		});
 		inforWindow.open(map,position);
 	}
 	});
 	///AMap.event.addListener(marker1[i],"mouseout",function(e){                 
 	//inforWindow.close();            
	//});
	marker1[i].setMap(map);
	<%
	}
	%>  
	//marker.add(marker1); 
	//for(var i = 0;i < count;i++)
	//marker[i].setMap(map);
	})();
 	  
</script> 
</div>
 </div>
<footer>
   <div class="footavatar">
    
   </div>
   <section class="visitor">
    
   </section>
   
   <div class="Copyright">
     <ul>
       <a href="/">帮助中心</a><a href="/">空间客服</a><a href="/">投诉中心</a><a href="/">空间协议</a>
     </ul>
     <p>Design by DanceSmile</p>
   </div>
 </footer>
 

</body>
</html>