<%@ page language="java" contentType="text/html; charset=windows-31j" pageEncoding="windows-31j"
 import="game.PlayerObject,database.Bean,java.util.List,game.AttributeGetter"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
	<head>

	<meta http-equiv="Content-Type" content="text/html; charset=windows-31j">
		<link rel="stylesheet" type="text/css" href="event.css">
		<title>�l���Q�[��</title>

	</head>
<%
PlayerObject player = AttributeGetter.getCurrentPlayerObject(session);//�Ăяo�����̃T�[�u���b�g
//�T�[�u���b�g���玝���Ă���l�͂��ׂĂ����ŌĂяo���Ă�������������₷���悤�ɂ��ꂼ��̏����̕����ŌĂяo���悤�ɂ��Ă���
int event_money = Integer.parseInt(AttributeGetter.getSquareList(session).get(0).getCommand()); //�����ŃT�[�u���b�g���炨���̒l�������Ă���
String back_img = "";
String message = "";
////����ɂ�萰��A�܂�̉摜�̃t�@�C������img�Ɋi�[
	if(event_money>0){
		back_img = "sky.jpg";
		message = "����";
	}else{
		back_img = "donyori.jpg";
		message = "����";
	}
%>
	<body style="background-image: url('<%=request.getContextPath() %>/img/<%=back_img%>');background-size:100% 100%;">

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

<br><br><br>

	<!-- �摜 -->
<%
int masu = AttributeGetter.getCurrentPlayerObject(session).getCurrentSquare();//�����ŃT�[�u���b�g����}�X�ڂ̒l�������Ă���
%>
	<div class="eventpicture" align="center">
	<!-- png�t�@�C���̖��O�𐔎��ɂ��邱�ƂŃ}�X�ڂ̒l�ŉ摜��\������悤�ɂ��� -->
	<img src="<%=request.getContextPath() %>/img/img_mass/<%=masu%>.png">
	</div>

<%
String event_text = AttributeGetter.getSquareList(session).get(0).getEvent();//�����ŃT�[�u���b�g����eventtext�̒l�������Ă���
int money = (Integer)session.getAttribute("money");//�J�ڑO��jsp��set����Ă���money��get����
int sum_money = AttributeGetter.getCurrentPlayerObject(session).getMoney();
%>
	<div class="comment" align="center">
	<h1><%=event_text%> <%if(event_money<0){ %>
	�i<%=event_money %>�~�j
	<%}else{ %>
		�i+<%=event_money %>�~�j
	<%} %></h1>
	<br>
	<p>����������<%=money%>�~���灏<%=sum_money%>�~��<%=message %>�܂����B</p>
	</div>

	<div>
	<form action="<%=request.getContextPath() %>/event_to_main" method="POST">
		<input type="submit" name="btn" class="button" value="���̐l��">

	</form>
	</div>
	</body>

</html>