<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
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
html {
	height: 100%
}

body {
	height: 100%;
	margin: 0px;
	padding: 0px
}

#container {
	height: 80%
}
</style>
<%!float[][] lnglat = new float[100][2];
	int count = 0;%>

</head>

<body>
	<div id="container"></div>
	<script type="text/javascript"
		src="http://webapi.amap.com/maps?v=1.3&key=e02d98c99454566cb174eb717540a320">
		
	</script> 
	<script type="text/javascript">
		var xmlHttp;
		var lng = [];
		var lat =[];
		var map;
		var mouseTool;
		(function(){
			map = new AMap.Map('container');
			map.setZoom(18);
			map.plugin([ "AMap.MapType", "AMap.OverView", "AMap.Scale",
					"AMap.ToolBar" ], function() {
				var type = new AMap.MapType();
				map.addControl(type);
				var tool = new AMap.ToolBar();
				map.addControl(tool);
				var view = new AMap.OverView();
				map.addControl(view);
				var scale = new AMap.Scale();
				map.addControl(scale);
			}); 
			map.plugin([ "AMap.MouseTool" ], function() {
				mouseTool = new AMap.MouseTool(map);
				tag = mouseTool.polyline().getPath();
			});     
			var i = 0; 
			AMap.event.addListener(map, "click", function(e) { 
				lng[i] = e.lnglat.getLng(); 
				lat[i] = e.lnglat.getLat();  
				i++;

			}); 
			
			AMap.event.addListener(map, "rightclick", function(e) { 
				//document.write("右击了");
				 
				//var test = JSON.stringify(lnglat); 
				//var test = lnglat.toString();
				//document.write(test);
				 createXMLHttpRequest();
				 xmlHttp.onreadystatechange = writeUserIDInfo; 
				 xmlHttp.open("POST","bb.jsp",true);
				 xmlHttp.setRequestHeader("Content-type","application/x-www-form-urlencoded"); 
				 xmlHttp.send("lng="+lng+"&lat="+lat); 
			});
		})();
		var polyline1;
		function writeUserIDInfo(){
			if(xmlHttp.readyState==4){
				if(xmlHttp.status==200){
					var news = xmlHttp.responseText; 
					if(news == 1){
					//mouseTool.close(true);
					var arr = new Array();
					for(var a = 0;a < lng.length;a++)
						arr.push(new AMap.LngLat(lng[a],lat[a])); 
					arr.push(new AMap.LngLat(lng[0],lat[0]));
					polyline1 = new AMap.Polyline({
					map:map,
					path:arr,
					strokeColor:"red",
					strokeOpacacity:0.4,
					strokeWeight:3 
					});
					map.setFitView();
					}
					else if(news == 2){
					 	alter("插入失败");
					}
					
				}
			}
		}
		
		function checkTrack(){
			
		}
		function createXMLHttpRequest() {
			try{
				xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
			}catch(e){
				try{
					xmlHttp = new ActiveObject("Microsoft.XMLHTTP"); 
				}catch(e){
					try{
						xmlHttp = new XMLHttpRequest();
					}catch(e){
						alter("您的浏览器不支持AJAX!");
					}
				}
			}
		} 
	</script>
</body>
</html>