<%@ page language="java" contentType="text/html; charset=windows-31j"
    pageEncoding="windows-31j" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=windows-31j">

	<link rel="stylesheet" type="text/css" href="how_to_play.css">

	<title>�l���Q�[���̐i�ߕ�</title>
</head>

<body background="./img/prof_back.png" width="600px">
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

<br>

<div class="title"><h3>�l���Q�[���̐i�ߕ�</h3></div>
	<ol>
	<li>������10000�~�������ăX�^�[�g�I�}�X��i�߂悤�B<br>��ʒ����̃T�C�R�����N���b�N���Ă�</li>
	<li>�o���ڂ̃}�X���i�����B�}�X�ڂɏ����ꂽ�C�x���g���N�����</li>
	<li>���i������A��������Փ����������Ă��܂�����c�B<br>�S�[����ɉ��~�����Ă��邩��</li>
	</ol>

	<! �摜>
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

	<a href="#" onclick="window.history.back(); return false;">�O�̉�ʂ֖߂�</a>

</div>
</body>
</html>