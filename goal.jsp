<%@ page language="java" contentType="text/html; charset=windows-31j"
    pageEncoding="windows-31j" import="game.PlayerObject,game.AttributeGetter"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-31j">
<link href = "/jinsei_game/goal.css" rel = "stylesheet" type = "text/css">
<title>ゴール！</title>
</head>
<body>
<body background="./img/goal_back10.png">
<div style="position:absolute;top:0;left:25%;" class="goal">
<h1>ゴール！</h1>
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
    <div class="box-title">記録</div>
    	<div class="box26">
    	<span class="box-title">プレイヤー名</span>
    	<p><%=AttributeGetter.getCurrentPlayerObject(session).getName() %></p>
		</div>
		<div class="box27">
    	<span class="box-title">職業</span>
    	<p><%=AttributeGetter.getCurrentPlayerObject(session).getJob() %></p>
		</div>
		<div class="box28">
    	<span class="box-title">所持金</span>
    	<p class="money"><%=AttributeGetter.getCurrentPlayerObject(session).getMoney() %>円</p>
    	<p class="final_bet"><font color="red">人生最大の賭け:
    	<%=AttributeGetter.getCurrentPlayerObject(session).getFinalBet() %>
    	</font></p>
		</div>
		<div  class="back"></div>
			<div class="hito">

			<%

				if(AttributeGetter.getCurrentPlayerObject(session).getJob().equals("サラリーマン")){
				%>		<img src="<%=request.getContextPath() %>/img/businessman.png">
					<% }else if(AttributeGetter.getCurrentPlayerObject(session).getJob().equals("ケチな人")){
				%>		<img src="<%=request.getContextPath() %>/img/money_kechi.png">
					<% }else if(AttributeGetter.getCurrentPlayerObject(session).getJob().equals("貧困層")){
				%>		<img src="<%=request.getContextPath() %>/img/keizai_hinkonsou.png">
					<% }else if(AttributeGetter.getCurrentPlayerObject(session).getJob().equals("借金地獄")){
				%>		<img src="<%=request.getContextPath() %>/img/homeless_furousya.png">
					<%	}else if(AttributeGetter.getCurrentPlayerObject(session).getJob().equals("中堅リーマン")){
				%>  	<img src="<%=request.getContextPath() %>/img/stand_businessman_ojisan.png">
					<%	}else if(AttributeGetter.getCurrentPlayerObject(session).getJob().equals("富裕層")){
				%>  	<img src="<%=request.getContextPath() %>/img/keizai_fuyuusou.png">
					<% }else if(AttributeGetter.getCurrentPlayerObject(session).getJob().equals("石油王")){
				%>		<img src="<%=request.getContextPath() %>/img/sekiyuou.png">

				<% 	};%>
			</div>
		<div>
		<form action="<%=request.getContextPath() %>/check_all_game_over" method="POST">
		<input type="submit" name="btn" class="button" value="次へ">
		</form>
		</div>
</div>

</body>
</html>