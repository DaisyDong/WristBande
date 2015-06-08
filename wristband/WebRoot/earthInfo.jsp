<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'earthInfo.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
html{height:100%}
body{height:100%;margin:0px;padding:0px}
#container{height:100%}
</style>
<%!
	float[][] lnglat = new float[100][2];
	int count = 0;
 %>

</head>
 
<body>
<div id="container"></div>
<script type="text/javascript"
src="http://webapi.amap.com/maps?v=1.3&key=e02d98c99454566cb174eb717540a320">
</script>
<%
	Connection conn = null;
	Statement st = null;
	ResultSet rs = null;
	//String id = request.getParameter("userid");
	String id = "001";
	try{
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/band","root","ymzmdx");
		st = conn.createStatement();
		String sql = "select lng,lat from earth where id='"+id+"';";
		System.out.println(sql);
		rs = st.executeQuery(sql);
		while(rs.next()) {
			lnglat[count][0] = rs.getFloat("lng");	//经度
			System.out.println("经度"+lnglat[count][0]);
			lnglat[count++][1] = rs.getFloat("lat"); //纬度
			System.out.println("为父"+lnglat[count - 1][1]); 
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
 	 	map.setZoom(5);
	map.plugin(["AMap.MapType","AMap.OverView","AMap.Scale","AMap.ToolBar"],
	function(){
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
	<% int j = 0;
		for(j = 0;j < count;j++){
	%>
	var lng = "<%=lnglat[j][0]%>";
	document.write("精度"+lng); 
	var lat = "<%=lnglat[j][1]%>";
	document.write("唯独"+lat);
	 var i = "<%=j%>";
	 document.write(i);
	  marker1[i] = new AMap.Marker({
		map:map,
		position:new AMap.LngLat(lng,lat),
		raiseOnDrag:true 
	}); 
	var info = [];                 
	info.push("用户"+"<%=id%>");                 
	info.push(" 这是宝贝：");                 
	info.push(" 宝贝现在在");
	info.push("<a href=/>查看详细信息</a>");                 
               
	var inforWindow = new AMap.InfoWindow({                 
 	 offset:new AMap.Pixel(0,-23),                 
 	 content:info.join("<br>")                 
	});                 
	AMap.event.addListener(marker1[i],"click",function(e){                 
 	inforWindow.open(map,marker1[i].getPosition());
 	});
 	//AMap.event.addListener(marker1[i],"mouseout",function(e){                 
 	//inforWindow.close();             
	//});       
	marker1[i].setMap(map);
	<%
	}
	%>  
	//marker.add(marker1); 
	//for(var i = 0;i < count;i++)
	//	marker[i].setMap(map);
	})();
 	  
</script>
</body>
</html>