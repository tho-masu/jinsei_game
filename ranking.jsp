<%@ page language="java" contentType="text/html; charset=windows-31j"
    pageEncoding="windows-31j" import="java.util.List,game.PlayerObject"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-31j">
<link rel="stylesheet" type="text/css" href="/jinsei_game/rank.css">
<title>ランキング</title>
</head>
<body background="./img/rank.jpg" >


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


<br><br><br><br><br>

<%
List<PlayerObject> ranking = (List<PlayerObject>)request.getAttribute("ranking");
%>

<table align="center" border="3" width="500" height="300" class="rank">
	<tr>
		<th class="ranking" colspan="6" align="center" >
			歴代最終所持金ランキング
		</th>
	</tr>

	<tr class="group">
		<td>
			順位
		</td>
		<td>
			プレイヤー名
		</td>
		<td>
			職業
		</td>
		<td>
			人生最大の賭け
		</td>
		<td>
			最終所持金
		</td>
		<td>
			ログの削除
		</td>
	</tr>
<%for(int i=0;i<ranking.size();i++){ %>
	<tr>
		<td>
			<%=i+1%>位
		</td>
		<td>
			<%=ranking.get(i).getName() %>さん
		</td>
		<td>
			<%=ranking.get(i).getJob() %>
		</td>
		<td>
			<%=ranking.get(i).getFinalBet() %>
		</td>
		<td>
			<%=ranking.get(i).getMoney() %>
		</td>
		<td>
			<div></div>
			<form action="<%=request.getContextPath() %>/ranking" method="POST">
				<input type="hidden" name="name" value="<%=ranking.get(i).getName() %>" >
				<input type="hidden" name="job" value="<%=ranking.get(i).getJob() %>" >
				<input type="hidden" name="finalBet" value="<%=ranking.get(i).getFinalBet() %>" >
				<input type="hidden" name="money" value="<%=ranking.get(i).getMoney() %>" >
				<input type="submit" name="btn" value="削除" class="delete">
			</form>
		</td>
	</tr>
<%} %>
</table>
 <div class="next">

	<a href="#" onclick="window.history.back(); return false;">前の画面へ戻る</a>

</div>
</body>
</html>