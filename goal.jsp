<%@ page language="java" contentType="text/html; charset=windows-31j"
    pageEncoding="windows-31j" import="game.PlayerObject,game.AttributeGetter"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-31j">
<link href = "/jinsei_game/goal.css" rel = "stylesheet" type = "text/css">
<title>�S�[���I</title>
</head>
<body>
<body background="./img/goal_back10.png">
<div style="position:absolute;top:0;left:25%;" class="goal">
<h1>�S�[���I</h1>
</div>
<!-- <div style="position:absolute;top:40;left:25%;">
<img src="<%=request.getContextPath() %>/img/goal.png" width="80%">
</div> -->
<br>
<div style="position:absolute;top:20%;left:20%;">
<img src="<%=request.getContextPath() %>/img/ribon.png" >
</div>
<div style="position:absolute;top:50%;left:8%;">
<img src="<%=request.getContextPath() %>/img/goal_yorokobu.png">
</div>

<div class="box29" >
    <div class="box-title">�L�^</div>
    	<div class="box26">
    	<span class="box-title">�v���C���[��</span>
    	<p><%=AttributeGetter.getCurrentPlayerObject(session).getName() %></p>
		</div>
		<div class="box27">
    	<span class="box-title">�E��</span>
    	<p><%=AttributeGetter.getCurrentPlayerObject(session).getJob() %></p>
		</div>
		<div class="box28">
    	<span class="box-title">������</span>
    	<p class="money"><%=AttributeGetter.getCurrentPlayerObject(session).getMoney() %>�~</p>
    	<p class="final_bet"><font color="red">�l���ő�̓q��:
    	<%=AttributeGetter.getCurrentPlayerObject(session).getFinalBet() %>
    	</font></p>
		</div>
		<div  class="back"></div>
			<div class="hito">

			<%

				if(AttributeGetter.getCurrentPlayerObject(session).getJob().equals("�T�����[�}��")){
				%>		<img src="<%=request.getContextPath() %>/img/businessman.png">
					<% }else if(AttributeGetter.getCurrentPlayerObject(session).getJob().equals("�P�`�Ȑl")){
				%>		<img src="<%=request.getContextPath() %>/img/money_kechi.png">
					<% }else if(AttributeGetter.getCurrentPlayerObject(session).getJob().equals("�n���w")){
				%>		<img src="<%=request.getContextPath() %>/img/keizai_hinkonsou.png">
					<% }else if(AttributeGetter.getCurrentPlayerObject(session).getJob().equals("�؋��n��")){
				%>		<img src="<%=request.getContextPath() %>/img/homeless_furousya.png">
					<%	}else if(AttributeGetter.getCurrentPlayerObject(session).getJob().equals("�������[�}��")){
				%>  	<img src="<%=request.getContextPath() %>/img/stand_businessman_ojisan.png">
					<%	}else if(AttributeGetter.getCurrentPlayerObject(session).getJob().equals("�x�T�w")){
				%>  	<img src="<%=request.getContextPath() %>/img/keizai_fuyuusou.png">
					<% }else if(AttributeGetter.getCurrentPlayerObject(session).getJob().equals("�Ζ���")){
				%>		<img src="<%=request.getContextPath() %>/img/sekiyuou.png">

				<% 	};%>
			</div>
		<div>
		<form action="<%=request.getContextPath() %>/check_all_game_over" method="POST">
		<input type="submit" name="btn" class="button" value="����">
		</form>
		</div>
</div>

</body>
</html>