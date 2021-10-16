<%@ page language="java" contentType="text/html; charset=windows-31j"
    pageEncoding="UTF-8" %>
   <%@ page import= "java.util.Map" %>
   <%@ page import= "java.util.List"%>
   <%@ page import= "database.Bean" %>
   <%@ page import= "game.MapMass" %>
   <%@ page import= "game.Allmass" %>
   <%@ page import= "game.PlayerObject" %>
   <%@ page import= "game.AttributeGetter" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
	<%Allmass allMass=(Allmass)request.getAttribute("allMass"); %>
	<html>
		<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="generalview.css">

			<title>全体マップ</title>
		</head>

	<body background="./img/sky.jpg">

<div class="jinsei_game_min">
<img src="<%=request.getContextPath() %>/img/jinsei_img.png"  width="21%" style="float:left;">
</div>
<br>

<!-- メニュー -->
<div align="center">
<ul id="menu">
  <li><a href="<%=request.getContextPath() %>">ゲームTOP</a></li>
  <li><a href="<%=request.getContextPath() %>/how_to_play.jsp">How to Play</a></li>
  <li><a href="<%=request.getContextPath() %>/jinsei_game_map">全体マップ</a></li>
  <li><a href="<%=request.getContextPath() %>/ranking">Ranking</a></li>
</ul>
</div>

	<br><br><br><br><br><br>

	<%List<PlayerObject> player = AttributeGetter.getPlayer(session);%>
	<%if(player !=null){ %>
<div class="box4">
  	■プレイヤーの現在地<br>
	<%
  	String a = "";
	String color = "";
  	for(int i=0;i<player.size();i++){
  		switch(i){
  		case 0:
  			a = "黄";
  			color="#ffff7f";
  			break;
  		case 1:
  			a = "紫";
  			color="#c993ff";
  			break;
  		case 2:
  			a = "緑";
  			color="#00ff7f";
  			break;
  		case 3:
  			a = "橙";
  			color="#ffa500";
  			break;
  		}%>

		<div style="background-color:<%=color%>">
    	<%=player.get(i).getName()%>:<%=player.get(i).getCurrentSquare() %>マス目
    	</div>
	<%} %>
</div>
<%} %>

	<!--地図-->

	<br><br><br>
	<table align="center" border="3" height="50%" class="allmap">

	<!-- 100マス（10*10)を画面に作成 -->
	<%for(int i=0;i<allMass.size();i++) {%>
		<% if(i%10==0){%>
				<tr>
			<%} %>
			<%MapMass mass = allMass.get(i);
			String color="";
				if(mass.getColor()==1){
					color="#ffb7db";
				}else if(mass.getColor()==0){
					color="transparent";
				}else if(mass.getColor()==2){
					color="#ffff7f";
				}else if(mass.getColor()==3){
					color="#c993ff";
				}else if(mass.getColor()==4){
					color="#00ff7f";
				}else if(mass.getColor()==5){
					color="#ffa500";
				}

				//画像の読み込み（イベントがない空マス）
				%>
				<td class="test" bgcolor="<%=color%>">
				<%
				if(mass.getPng()!=null){
				%>
				<img src="<%=request.getContextPath() %>/img/<%=mass.getPng()%>" width="90%" height="90%">
				<%} %>

				<%
				//イベントの読み込み
				if(mass.getEvent()!=null){
				%>
					<%=mass.getEvent() %>

					<img src = "<%=request.getContextPath()%>/img/img_mass/<%=mass.getNo()%>.png" width="90%" height="90%">

				<%} %>

				<%
				%>
				</td>
			<%if(i%10==9){ %>
				</tr>
			<%} %>
  	<%} %>
  	<tr>
  		<td colspan="10">
  			<div class="next">

				<a href="#" onclick="window.history.back(); return false;">前の画面へ戻る</a>

			</div>
		</td>
	</tr>
  	</table>


	</body>

	</html>