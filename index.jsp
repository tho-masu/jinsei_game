<%@ page language="java" contentType="text/html; charset=windows-31j"
    pageEncoding="windows-31j"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-31j">
<link rel="stylesheet" type="text/css" href=test.css>
<title>�l���Q�[��</title>
</head>
<style type="text/css">
h2{ margin-top: 0; margin-bottom: 0;}
</style>
<body background="./img/prof_back.png">
<!-- �l���Q�[�����S -->

<div align="center">
<img src="./img/jinsei_img.png" width="600px">
</div>
<br>

<!-- ���j���[ -->
<div>
<ul id="menu">
  <li><a href="<%=request.getContextPath() %>">�Q�[��TOP</a></li>
  <li><a href="<%=request.getContextPath() %>/how_to_play.jsp">How to Play</a></li>
  <li><a href="<%=request.getContextPath() %>/jinsei_game_map">�S�̃}�b�v</a></li>
  <li><a href="<%=request.getContextPath() %>/ranking">Ranking</a></li>
</ul>
</div>

<br><br>
<div class="introduce" align="center">
<h2>�L�����N�^�[���쐬���Ă�������</h2>
<span class="line">
�����߂Ă̐l�́uHow to Play�v���N���b�N�I
</span>
</div>
<form action="<%=request.getContextPath() %>/start" method="POST">
<table class="cp_pricetable3">
	<thead>
	<tr>
		<th class="group2" colspan="2">�v���C����l�����̖��O����͂��Ă�������</th>
	</tr>
	</thead>
	<tbody>
	<tr>
		<td class="group2">
			�v���C���[1
		</td>
		<td class="group2">
			���O�F<input type="text" name="name0">
		</td>
	</tr>
	<tr>
		<td class="group2">
			�v���C���[2
		</td>
		<td class="group2">
			���O�F<input type="text" name="name1">
		</td>
	</tr>
	<tr>
		<td class="group2">
			�v���C���[3
		</td>
		<td class="group2">
			���O�F<input type="text" name="name2">
		</td>
	</tr>
	<tr>
		<td class="group2">
			�v���C���[4
		</td>
		<td class="group2">
			���O�F<input type="text" name="name3">
		</td>
	</tr>
	</tbody>
</table>
<br>
	<div align="center" class="container">
		<input type="submit" class="button" value="�v���C�J�n" style="font-size:25px;">
	</div>
</form>



</body>
</html>
