<%@ page language="java" contentType="text/html; charset=windows-31j"
    pageEncoding="windows-31j" import="game.PlayerObject,database.Bean,java.util.List,game.AttributeGetter"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-31j">
<link href = "/jinsei_game/default.css" rel = "stylesheet" type = "text/css">

<title>人生ゲーム</title>

<!-- ヘッダーでChart.jsを読み込む -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.min.js"></script>

<script>
function doSubmit() {
	document.fm.submit();
}
</script>

<%
int dice = (Integer)session.getAttribute("dice");
String img = "";
String color1 = "group3";
String color2 = "group3";
String color3 = "group3";
String color4 = "group3";
String color5 = "group3";
String color6 = "group3";

switch(dice){
case -1:
	img = "saikoro5.png";
	break;
case 1:
	img = "saikoro1.png";
	color1 = "group2";
	break;
case 2:
	img = "saikoro2.png";
	color2 = "group2";
	break;
case 3:
	img = "saikoro3.png";
	color3 = "group2";
	break;
case 4:
	img = "saikoro4.png";
	color4 = "group2";
	break;
case 5:
	img = "saikoro5.png";
	color5 = "group2";
	break;
case 6:
	img = "saikoro6.png";
	color6 = "group2";
	break;
}
%>

</head>
<body>

<div id="jinsei_game_min">
<img src="<%=request.getContextPath() %>/img/jinsei_img.png" width="20%" style="float:left;">
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
<br><br><br>
			<%
			String back_img = "";
				if(AttributeGetter.getCurrentPlayerObject(session).getJob().equals("サラリーマン")){
			back_img = "main_table1";
					}else if(AttributeGetter.getCurrentPlayerObject(session).getJob().equals("ケチな人")){
			back_img = "main_table2";
					}else if(AttributeGetter.getCurrentPlayerObject(session).getJob().equals("貧困層")){
			back_img = "main_table3";
					}else if(AttributeGetter.getCurrentPlayerObject(session).getJob().equals("借金地獄")){
			back_img = "main_table4";
					}else if(AttributeGetter.getCurrentPlayerObject(session).getJob().equals("中堅リーマン")){
			back_img = "main_table5";
					}else if(AttributeGetter.getCurrentPlayerObject(session).getJob().equals("富裕層")){
			back_img = "main_table6";
					}else if(AttributeGetter.getCurrentPlayerObject(session).getJob().equals("石油王")){
			back_img = "main_table7";
				};%>
<div>
<!-- 巨大なテーブル始め -->
<table align="center" width="75%" height="70%" class="<%=back_img%>">
<tr>

<td width="20%">
	<div class="box26">
    <span class="box-title">プレイヤー名</span>
    <p><%=AttributeGetter.getCurrentPlayerObject(session).getName() %></p>
	</div>

	<div class="box27">
    <span class="box-title">職業</span>
	<p><%=AttributeGetter.getCurrentPlayerObject(session).getJob() %></p>
	</div>

	<div class="box28">
    <span class="box-title">現在の所持金</span>
    <p><%=AttributeGetter.getCurrentPlayerObject(session).getMoney() %>円</p>

	</div>
</td>
<td align="center" width="60%" rowspan="2">
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
    		<div class="balloon jump">Click!</div>
			<form name="fm" action="<%=request.getContextPath() %>/main" method="POST">
			<img src = "<%=request.getContextPath() %>/img/<%=img%>" width = 100 height = 100
			onclick="doSubmit()" class = "reroll">
			</form>
			</div>
			<div class="box10">
			  <p>サイコロを振ろう</p>
			</div>
</td>
<td class="event_table" rowspan="2">
	<!-- マステーブル -->

	<table class="cp_pricetable3">
	<tbody>
	<tr>
		<td class="group1"><%=AttributeGetter.getSquareList(session).get(0).getNo() %>マス目（現在のマス）</td>
	</tr>
	<tr>
		<td class="group3"><%=AttributeGetter.getSquareList(session).get(0).getEvent() %></td>
	</tr>
	<tr>
		<td class=<%=color1%>><%=AttributeGetter.getSquareList(session).get(1).getNo() %>マス目</td>
	</tr>
	<tr>
		<td class="group3"><%=AttributeGetter.getSquareList(session).get(1).getEvent() %></td>
	</tr>
	<tr>
		<td class=<%=color2%>><%=AttributeGetter.getSquareList(session).get(2).getNo() %>マス目</td>
	</tr>
	<tr>
		<td class="group3"><%=AttributeGetter.getSquareList(session).get(2).getEvent() %></td>
	</tr>
	<tr>
		<td class=<%=color3%>><%=AttributeGetter.getSquareList(session).get(3).getNo() %>マス目</td>
	</tr>
	<tr>
		<td class="group3"><%=AttributeGetter.getSquareList(session).get(3).getEvent() %></td>
	</tr>
	<tr>
		<td class=<%=color4%>><%=AttributeGetter.getSquareList(session).get(4).getNo() %>マス目</td>
	</tr>
	<tr>
		<td class="group3"><%=AttributeGetter.getSquareList(session).get(4).getEvent() %></td>
	</tr>
	<tr>
		<td class=<%=color5%>><%=AttributeGetter.getSquareList(session).get(5).getNo() %>マス目</td>
	</tr>
		<tr>
		<td class="group3"><%=AttributeGetter.getSquareList(session).get(5).getEvent() %></td>
	</tr>
	<tr>
		<td class=<%=color6%>><%=AttributeGetter.getSquareList(session).get(6).getNo() %>マス目</td>
	</tr>
		<tr>
		<td class="group3"><%=AttributeGetter.getSquareList(session).get(6).getEvent() %></td>
	</tr>
	</tbody>
	</table>
</td>

</tr>
<tr>
	<td>
<!-- ボディのグラフ表示場所に以下を記述 -->
<%if(AttributeGetter.getPlayer(session).size()>1){ %>
<div class="graph">
<canvas id="money-graph" width="200px" height="350px"></canvas>
<script type="text/javascript">
/* idが"bar-chart"の要素を取得 */
var ctx = document.getElementById("money-graph");

/* 上記要素にチャートを描画　*/
var myRadarChart = new Chart(ctx, {
    type: 'bar',
    data: {
    	//データ項目のラベル
        labels: [
        		<%for(int i=0;i<AttributeGetter.getPlayer(session).size();i++){ %>
    			<%if(i!=0){ %>
    				,
    			<%} %>
    			"<%=AttributeGetter.getPlayer(session).get(i).getName()%>"
				<%} %>
          ],
        //データセット
        datasets: [
        {
            //凡例
            label: "所持金",
            //背景色
            backgroundColor: "rgba(75,192,192,0.4)",
            //枠線の色
            borderColor: "rgba(75,192,192,1)",
            //グラフのデータ
            data: [
            		<%for(int i=0;i<AttributeGetter.getPlayer(session).size();i++){ %>
    				<%if(i!=0){ %>
    					,
    				<%} %>
    				<%=AttributeGetter.getPlayer(session).get(i).getMoney()%>
					<%} %>
                   ]
        }
        ]
    },
    options : {
    	    scales: {
    	      xAxes: [{
    	    	  display:true,
    	    	  ticks: {
    	              maxRotation: 45,
    	              minRotation: 45
    	            }
    	      }],
    	      yAxes: [{
    	        ticks: {
    	          beginAtZero: true,
    	          userCallback: function(label, index, labels) {
    	            if (Math.floor(label) === label) {
    	              return label;
    	            }
    	          }
    	        }
    	      }]
    	    }
    	  }
});
</script>
</div>
<%}else{%>
<div class="solo">
<img src="<%=request.getContextPath() %>/img/penguin.png" width=200px>
</div>
<%}%>

	</td>
</tr>
</table>
<!-- 巨大なテーブル終わり -->
</div>



</body>
</html>
