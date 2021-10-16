<%@ page language="java" contentType="text/html; charset=windows-31j"
    pageEncoding="windows-31j" import="game.PlayerObject,game.JinseiGame"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-31j">
<link rel="stylesheet" type="text/css" href=test.css>
<title>メイン画面（仮・レイアウト入り）</title>

<script>

// 関数その３、データをサブミット
function doSubmit() {
	// formのアクションに内容を指定する方法
//	document.fmBegin.action="http://localhost:8080/mywebsite";
	// とりあえず表示してみる
	//alert(document.fm.action);
	// 当該formをサブミットする。
	document.fm.submit();
}

</script>

<%
PlayerObject player = (PlayerObject)(session.getAttribute("player"));

int dice = 6;
//本当は=(Integer)request.getAttribute("dice");
String img = "";
switch(dice){
case 1:
	img = "saikoro1.png";
	break;
case 2:
	img = "saikoro2.png";
	break;
case 3:
	img = "saikoro3.png";
	break;
case 4:
	img = "saikoro4.png";
	break;
case 5:
	img = "saikoro5.png";
	break;
case 6:
	img = "saikoro6.png";
	break;
}
%>

</head>
<body>

<!-- 人生ゲームロゴ -->

<div align="center">
<img src="./img/jinsei_img.png" width="600px">
</div>
<br>

<!-- メニュー -->
<div align="center">
<ul id="menu">
  <li><a href="#">ゲームTOP</a></li>
  <li><a href="#">How to Play</a></li>
  <li><a href="#">全体マップ</a></li>
  <li><a href="#">News</a></li>
  <li><a href="#">Staff</a></li>
</ul>
</div>

<br><br><br>

<!-- 巨大なテーブル始め -->

<table align="center" width="100%" >
<tr>

<td align="center" valign="top" width="20%">
	<div class="box26">
    <span class="box-title">プレイヤー名</span>
	<p>名無しさん</p>
	<!-- 本当はplayer.getName() -->
	</div>
	<div class="box26">
    <span class="box-title">現在の所持金</span>
	<p>1000円</p>
	<!-- 本当はplayer.getMoney() -->
	</div>
</td>
<td align="center" width="50%">
			<form name="fm" action="<%=request.getContextPath() %>/main" method="POST">
			<div>
			<img src="<%=request.getContextPath() %>/img/yuusha.png" width="40%">
			<img src = "<%=request.getContextPath() %>/img/<%=img%>" width = 100 height = 100
			onclick="doSubmit()" class = "reroll">
			</div>
			</form>
			<div class="balloon2-top">
			  <p>サイコロをクリックしてマスを進めよう</p>
			</div>
</td>
<td align="center" valign="top" width="25%">
	<!-- マステーブル -->

	<table class="cp_pricetable3">
	<thead>
	<tr>
		<th class="group3" colspan="2">これから先のマス</th>
	</tr>
	</thead>
	<tbody>
	<tr>
		<td class="group3">★現在マス</td>
		<td class="group3"></td>
	</tr>
	<tr>
		<td class="group3">1マス先</td>
		<td class="group3"></td>
	</tr>
	<tr>
		<td class="group3">2マス先</td>
		<td class="group3"></td>
	</tr>
	<tr>
		<td class="group3">3マス先</td>
		<td class="group3"></td>
	</tr>
	<tr>
		<td class="group3">4マス先</td>
		<td class="group3"></td>
	</tr>
	<tr>
		<td class="group3">5マス先</td>
		<td class="group3"></td>
	</tr>
	<tr>
		<td class="group3">6マス先</td>
		<td class="group3"></td>
	</tr>
	<tr>
		<td class="group3" colspan="2"><a href="#" class="cp_btn">ボタン</a></td>
	</tr>
	</tbody>
	</table>
</td>

</tr>
</table>

<!-- 巨大なテーブル終わり -->

</body>
</html>
