<%@ page language="java" contentType="text/html; charset=windows-31j" pageEncoding="windows-31j"
 import="game.PlayerObject,database.Bean,java.util.List,game.AttributeGetter"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
	<head>

	<meta http-equiv="Content-Type" content="text/html; charset=windows-31j">
		<link rel="stylesheet" type="text/css" href="event.css">
		<title>人生ゲーム</title>

	</head>
<%
PlayerObject player = AttributeGetter.getCurrentPlayerObject(session);//呼び出し元のサーブレット
//サーブレットから持ってくる値はすべてここで呼び出してもいいが分かりやすいようにそれぞれの処理の部分で呼び出すようにしている
int event_money = Integer.parseInt(AttributeGetter.getSquareList(session).get(0).getCommand()); //ここでサーブレットからお金の値を持ってくる
String back_img = "";
String message = "";
////分岐により晴れ、曇りの画像のファイル名をimgに格納
	if(event_money>0){
		back_img = "sky.jpg";
		message = "増え";
	}else{
		back_img = "donyori.jpg";
		message = "減り";
	}
%>
	<body style="background-image: url('<%=request.getContextPath() %>/img/<%=back_img%>');background-size:100% 100%;">

	<!-- 人生ゲームロゴ -->

<div class="jinsei_game_min">
<img src="<%=request.getContextPath() %>/img/jinsei_img.png"  width="21%" style="float:left;">
</div>
<!-- メニュー -->
<div align="center">
<ul id="menu">
  <li><a href="<%=request.getContextPath() %>">ゲームTOP</a></li>
  <li><a href="<%=request.getContextPath() %>/how_to_play.jsp">How to Play</a></li>
  <li><a href="<%=request.getContextPath() %>/jinsei_game_map">全体マップ</a></li>
  <li><a href="<%=request.getContextPath() %>/ranking">Ranking</a></li>
</ul>
</div>

<br><br><br>

	<!-- 画像 -->
<%
int masu = AttributeGetter.getCurrentPlayerObject(session).getCurrentSquare();//ここでサーブレットからマス目の値を持ってくる
%>
	<div class="eventpicture" align="center">
	<!-- pngファイルの名前を数字にすることでマス目の値で画像を表示するようにする -->
	<img src="<%=request.getContextPath() %>/img/img_mass/<%=masu%>.png">
	</div>

<%
String event_text = AttributeGetter.getSquareList(session).get(0).getEvent();//ここでサーブレットからeventtextの値を持ってくる
int money = (Integer)session.getAttribute("money");//遷移前のjspにsetされているmoneyをgetする
int sum_money = AttributeGetter.getCurrentPlayerObject(session).getMoney();
%>
	<div class="comment" align="center">
	<h1><%=event_text%> <%if(event_money<0){ %>
	（<%=event_money %>円）
	<%}else{ %>
		（+<%=event_money %>円）
	<%} %></h1>
	<br>
	<p>所持金が￥<%=money%>円から￥<%=sum_money%>円に<%=message %>ました。</p>
	</div>

	<div>
	<form action="<%=request.getContextPath() %>/event_to_main" method="POST">
		<input type="submit" name="btn" class="button" value="次の人へ">

	</form>
	</div>
	</body>

</html>