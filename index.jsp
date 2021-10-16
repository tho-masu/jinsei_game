<%@ page language="java" contentType="text/html; charset=windows-31j"
    pageEncoding="windows-31j"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-31j">
<link rel="stylesheet" type="text/css" href=test.css>
<title>人生ゲーム</title>
</head>
<style type="text/css">
h2{ margin-top: 0; margin-bottom: 0;}
</style>
<body background="./img/prof_back.png">
<!-- 人生ゲームロゴ -->

<div align="center">
<img src="./img/jinsei_img.png" width="600px">
</div>
<br>

<!-- メニュー -->
<div>
<ul id="menu">
  <li><a href="<%=request.getContextPath() %>">ゲームTOP</a></li>
  <li><a href="<%=request.getContextPath() %>/how_to_play.jsp">How to Play</a></li>
  <li><a href="<%=request.getContextPath() %>/jinsei_game_map">全体マップ</a></li>
  <li><a href="<%=request.getContextPath() %>/ranking">Ranking</a></li>
</ul>
</div>

<br><br>
<div class="introduce" align="center">
<h2>キャラクターを作成してください</h2>
<span class="line">
※初めての人は「How to Play」をクリック！
</span>
</div>
<form action="<%=request.getContextPath() %>/start" method="POST">
<table class="cp_pricetable3">
	<thead>
	<tr>
		<th class="group2" colspan="2">プレイする人数分の名前を入力してください</th>
	</tr>
	</thead>
	<tbody>
	<tr>
		<td class="group2">
			プレイヤー1
		</td>
		<td class="group2">
			名前：<input type="text" name="name0">
		</td>
	</tr>
	<tr>
		<td class="group2">
			プレイヤー2
		</td>
		<td class="group2">
			名前：<input type="text" name="name1">
		</td>
	</tr>
	<tr>
		<td class="group2">
			プレイヤー3
		</td>
		<td class="group2">
			名前：<input type="text" name="name2">
		</td>
	</tr>
	<tr>
		<td class="group2">
			プレイヤー4
		</td>
		<td class="group2">
			名前：<input type="text" name="name3">
		</td>
	</tr>
	</tbody>
</table>
<br>
	<div align="center" class="container">
		<input type="submit" class="button" value="プレイ開始" style="font-size:25px;">
	</div>
</form>



</body>
</html>
