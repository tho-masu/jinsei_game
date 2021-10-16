<%@ page language="java" contentType="text/html; charset=windows-31j"
    pageEncoding="windows-31j" import="game.AttributeGetter"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-31j">
<link href = "/jinsei_game/final_bet.css" rel = "stylesheet" type = "text/css">
<title>人生最大の賭け</title>
</head>
<body background="./img/jigoku.jpg">
<div style="position:relative;" class="fb">
<h1>人生最大の賭け</h1>
</div>
<%
String slot=null;
String[] str = {"+50万円","+100万円","-1000万円","所持金が半分","1位から1/3奪う","プラスマイナス逆転"};
%>

<% if((String)request.getAttribute("choice")==null){ %>
	<p>
	<br>ゴールマスに到達した！最後に逆転のチャンス！
	<br>人生最大の賭けに挑戦しますか？
	<br>
	あなたの現在の所持金： <%=AttributeGetter.getCurrentPlayerObject(session).getMoney() %>円
	</p>
	<br><br>
	<div class="fb_button1">
	<form action="<%=request.getContextPath() %>/final_status_control" method="POST">
		<input type="hidden" name="choice" value="yes">
		<input type="submit" class="btn-circle-border-double1" value="">
	</form>
	</div>
	<div class="fb_button2">
	<form action="<%=request.getContextPath() %>/final_status_control" method="POST">
			<input type="hidden" name="choice" value="no">
		<input type="submit" class="btn-circle-border-double2" value="">
	</form>
	</div>
	<br><br><br>
	<div class="ex" align="center">
	<p class="p1">※人生最大の賭けで得られるチャンス一覧</p>
	<br>
	<p class="p2">+50万円・+100万円・-1000万円・所持金が半分・1位から1/3奪う・プラスマイナス逆転</p>
	</div>

<!-- 巨大なelseはじめ -->
<% }else{ %>

<script language="JavaScript">
<!--
var time1;
var isStop = true;
var strs = [
<% for (int i = 0; i < str.length; i++) {%>
	<%=(i==0?"":",")%>"<%=str[i]%>"
<%}%>
];

// START・STOP切り替え
function start() {
	if(isStop){
    	start1();
    	isStop = false;
    }else{
    	stop1();
    }
}

//各ランダム値を表示
function start1() {

	var index = Math.floor(Math.random()*strs.length);
	var message = strs[index];
    document.getElementById("dat1").value = message;
    time1 = setTimeout(start1,  100);
}

// STOP
function stop1() {
    clearTimeout(time1);
    slot = document.getElementById("dat1").value;
    document.slot_form.slot.value=slot;
    setTimeout(next,  500);
}

function next(){
    document.slot_form.submit();
}

//-->
</script>


<style>
table, tr, td{
    border-style:none;
}
</style>

<div >
    <table class="back_color">
    <tr>
    	<td class="roulette_xy">
    	<input type="text" id="dat1" class="roulette_start" value="***">
    	</td>
    </tr>
    <tr>
    	<td class="button_xy">
    	<input type="button" value="START/STOP" onClick="start()" class="roulette_button">
		<div class="d_wing">
			<img src="<%=request.getContextPath() %>/img/d_wing.png" width="33%" style="float:center;">
		</div>
		<div class="a_wing">
			<img src="<%=request.getContextPath() %>/img/a_wing.png" width="33%" style="float:center;">
		</div>
    	</td>
    </tr>
    </table>
</div>
<div class="akuma">
	<img src="<%=request.getContextPath() %>/img/akuma.png">
</div>
<div class="angel">
	<img src="<%=request.getContextPath() %>/img/angel.png">
</div>

<form name="slot_form" action="<%=request.getContextPath() %>/final_status_control" method="POST">
	<input type="hidden" name="slot" value="" >


</form>

<%} %>
<!-- 巨大なelse終わり -->

</body>
</html>
