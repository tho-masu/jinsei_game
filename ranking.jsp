<%@ page language="java" contentType="text/html; charset=windows-31j"
    pageEncoding="windows-31j" import="java.util.List,game.PlayerObject"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-31j">
<link rel="stylesheet" type="text/css" href="/jinsei_game/rank.css">
<title>�����L���O</title>
</head>
<body background="./img/rank.jpg" >


<!-- �l���Q�[�����S -->

<div class="jinsei_game_min">
<img src="<%=request.getContextPath() %>/img/jinsei_img.png"  width="21%" style="float:left;">
</div>

<!-- ���j���[ -->
<div align="center">
<ul id="menu">
  <li><a href="<%=request.getContextPath() %>">�Q�[��TOP</a></li>
  <li><a href="<%=request.getContextPath() %>/how_to_play.jsp">How to Play</a></li>
  <li><a href="<%=request.getContextPath() %>/jinsei_game_map">�S�̃}�b�v</a></li>
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
			���ŏI�����������L���O
		</th>
	</tr>

	<tr class="group">
		<td>
			����
		</td>
		<td>
			�v���C���[��
		</td>
		<td>
			�E��
		</td>
		<td>
			�l���ő�̓q��
		</td>
		<td>
			�ŏI������
		</td>
		<td>
			���O�̍폜
		</td>
	</tr>
<%for(int i=0;i<ranking.size();i++){ %>
	<tr>
		<td>
			<%=i+1%>��
		</td>
		<td>
			<%=ranking.get(i).getName() %>����
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
				<input type="submit" name="btn" value="�폜" class="delete">
			</form>
		</td>
	</tr>
<%} %>
</table>
 <div class="next">

	<a href="#" onclick="window.history.back(); return false;">�O�̉�ʂ֖߂�</a>

</div>
</body>
</html>