<%@ page language="java" contentType="text/html; charset=windows-31j"
    pageEncoding="windows-31j" import="game.PlayerObject,game.JinseiGame"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-31j">
<link rel="stylesheet" type="text/css" href=test.css>
<title>���C����ʁi���E���C�A�E�g����j</title>

<script>

// �֐����̂R�A�f�[�^���T�u�~�b�g
function doSubmit() {
	// form�̃A�N�V�����ɓ��e���w�肷����@
//	document.fmBegin.action="http://localhost:8080/mywebsite";
	// �Ƃ肠�����\�����Ă݂�
	//alert(document.fm.action);
	// ���Yform���T�u�~�b�g����B
	document.fm.submit();
}

</script>

<%
PlayerObject player = (PlayerObject)(session.getAttribute("player"));

int dice = 6;
//�{����=(Integer)request.getAttribute("dice");
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

<!-- �l���Q�[�����S -->

<div align="center">
<img src="./img/jinsei_img.png" width="600px">
</div>
<br>

<!-- ���j���[ -->
<div align="center">
<ul id="menu">
  <li><a href="#">�Q�[��TOP</a></li>
  <li><a href="#">How to Play</a></li>
  <li><a href="#">�S�̃}�b�v</a></li>
  <li><a href="#">News</a></li>
  <li><a href="#">Staff</a></li>
</ul>
</div>

<br><br><br>

<!-- ����ȃe�[�u���n�� -->

<table align="center" width="100%" >
<tr>

<td align="center" valign="top" width="20%">
	<div class="box26">
    <span class="box-title">�v���C���[��</span>
	<p>����������</p>
	<!-- �{����player.getName() -->
	</div>
	<div class="box26">
    <span class="box-title">���݂̏�����</span>
	<p>1000�~</p>
	<!-- �{����player.getMoney() -->
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
			  <p>�T�C�R�����N���b�N���ă}�X��i�߂悤</p>
			</div>
</td>
<td align="center" valign="top" width="25%">
	<!-- �}�X�e�[�u�� -->

	<table class="cp_pricetable3">
	<thead>
	<tr>
		<th class="group3" colspan="2">���ꂩ���̃}�X</th>
	</tr>
	</thead>
	<tbody>
	<tr>
		<td class="group3">�����݃}�X</td>
		<td class="group3"></td>
	</tr>
	<tr>
		<td class="group3">1�}�X��</td>
		<td class="group3"></td>
	</tr>
	<tr>
		<td class="group3">2�}�X��</td>
		<td class="group3"></td>
	</tr>
	<tr>
		<td class="group3">3�}�X��</td>
		<td class="group3"></td>
	</tr>
	<tr>
		<td class="group3">4�}�X��</td>
		<td class="group3"></td>
	</tr>
	<tr>
		<td class="group3">5�}�X��</td>
		<td class="group3"></td>
	</tr>
	<tr>
		<td class="group3">6�}�X��</td>
		<td class="group3"></td>
	</tr>
	<tr>
		<td class="group3" colspan="2"><a href="#" class="cp_btn">�{�^��</a></td>
	</tr>
	</tbody>
	</table>
</td>

</tr>
</table>

<!-- ����ȃe�[�u���I��� -->

</body>
</html>
