<%@ page language="java" contentType="text/html; charset=windows-31j"
    pageEncoding="windows-31j" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=windows-31j">

	<link rel="stylesheet" type="text/css" href="how_to_play.css">

	<title>人生ゲームの進め方</title>
</head>

<body background="./img/prof_back.png" width="600px">
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

<br>

<div class="title"><h3>人生ゲームの進め方</h3></div>
	<ol>
	<li>所持金10000円を持ってスタート！マスを進めよう。<br>画面中央のサイコロをクリックしてね</li>
	<li>出た目のマス分進もう。マス目に書かれたイベントが起きるよ</li>
	<li>昇格したり、うっかり衝動買いをしてしまったり…。<br>ゴール後に何円持っているかな</li>
	</ol>

	<! 画像>
	<div class="workerpicture">
	<br><br><br>
	<img src="<%=request.getContextPath() %>/img/businessman.png" height="200">
	<img src="<%=request.getContextPath() %>/img/keizai_hinkonsou.png" height="200">
	<img src="<%=request.getContextPath() %>/img/keizai_fuyuusou.png" height="200">
	<img src="<%=request.getContextPath() %>/img/money_kechi.png" height="200">
	<img src="<%=request.getContextPath() %>/img/stand_businessman_ojisan.png" height="200">
	<div class="balloon">
		Have a happy life!
	</div>
	</div>


 <div class="next">

	<a href="#" onclick="window.history.back(); return false;">前の画面へ戻る</a>

</div>
</body>
</html>