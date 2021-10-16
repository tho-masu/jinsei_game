<%@ page language="java" contentType="text/html; charset=windows-31j"
    pageEncoding="windows-31j" import="game.PlayerObject,game.AttributeGetter" import="java.util.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">


<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=windows-31j">
		<link rel="stylesheet" type="text/css" href="result.css">
		<title>結果発表</title>

	<%

    List<PlayerObject> result = AttributeGetter.getPlayer(session);
    Collections.sort(result);

    %>

	</head>

<body background="./img/butai.jpg">
<div id="wrap">
	<div align="center">
		<div class="title">
		<img src="<%=request.getContextPath() %>/img/gp_ribbon.png" width="60%" style="float:center;">
		</div>


	<table border="8">
  	<tr>
    <th>順位</th><th>プレイヤー名</th><th>職業</th><th>人生最大の賭け</th><th>最終所持金</th>
  	</tr>
  	<%
  	String a = "";
  	String b = "";
  	for(int i=0;i<result.size();i++){
  		switch(i){
  		case 0:
  			a = "No1.png";
  			b = "40";
  			break;
  		case 1:
  			a = "No2.png";
  			b = "40";
  			break;
  		case 2:
  			a = "No3.png";
  			b = "40";
  			break;
  		case 3:
  			a = "No4.png";
  			b = "27";
  			break;
  		}%>
  	<tr>
    	<td width="20%"><img src = "<%=request.getContextPath() %>/img/<%=a %>" width="<%=b %>">
    	</td>
    	<td>
    		<%=result.get(i).getName()%>
    	</td>
    	<td>
    		<%=result.get(i).getJob()%>
    	</td>
    	<td>
    		<%=result.get(i).getFinalBet()%>
    	</td>
    	<td>
    		<%=result.get(i).getMoney()%>
    	</td>
 	 </tr>
	<%} %>
	</table>

	</div>

<br><br>

<form action="<%=request.getContextPath() %>/end_of_game" method="POST">
	<div align="center">
		<input type="submit" class="button" value="スタート画面に戻る" style="font-size:25px;width:25%;">
	</div>
</form>
</div>
	</body>





</html>