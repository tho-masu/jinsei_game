<%@ page language="java" contentType="text/html; charset=windows-31j"
    pageEncoding="windows-31j" import="game.PlayerObject,database.Bean,java.util.List,game.AttributeGetter"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-31j">
<link href = "/jinsei_game/default.css" rel = "stylesheet" type = "text/css">

<title>�l���Q�[��</title>

<!-- �w�b�_�[��Chart.js��ǂݍ��� -->
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
			<%
			String back_img = "";
				if(AttributeGetter.getCurrentPlayerObject(session).getJob().equals("�T�����[�}��")){
			back_img = "main_table1";
					}else if(AttributeGetter.getCurrentPlayerObject(session).getJob().equals("�P�`�Ȑl")){
			back_img = "main_table2";
					}else if(AttributeGetter.getCurrentPlayerObject(session).getJob().equals("�n���w")){
			back_img = "main_table3";
					}else if(AttributeGetter.getCurrentPlayerObject(session).getJob().equals("�؋��n��")){
			back_img = "main_table4";
					}else if(AttributeGetter.getCurrentPlayerObject(session).getJob().equals("�������[�}��")){
			back_img = "main_table5";
					}else if(AttributeGetter.getCurrentPlayerObject(session).getJob().equals("�x�T�w")){
			back_img = "main_table6";
					}else if(AttributeGetter.getCurrentPlayerObject(session).getJob().equals("�Ζ���")){
			back_img = "main_table7";
				};%>
<div>
<!-- ����ȃe�[�u���n�� -->
<table align="center" width="75%" height="70%" class="<%=back_img%>">
<tr>

<td width="20%">
	<div class="box26">
    <span class="box-title">�v���C���[��</span>
    <p><%=AttributeGetter.getCurrentPlayerObject(session).getName() %></p>
	</div>

	<div class="box27">
    <span class="box-title">�E��</span>
	<p><%=AttributeGetter.getCurrentPlayerObject(session).getJob() %></p>
	</div>

	<div class="box28">
    <span class="box-title">���݂̏�����</span>
    <p><%=AttributeGetter.getCurrentPlayerObject(session).getMoney() %>�~</p>

	</div>
</td>
<td align="center" width="60%" rowspan="2">
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
    		<div class="balloon jump">Click!</div>
			<form name="fm" action="<%=request.getContextPath() %>/main" method="POST">
			<img src = "<%=request.getContextPath() %>/img/<%=img%>" width = 100 height = 100
			onclick="doSubmit()" class = "reroll">
			</form>
			</div>
			<div class="box10">
			  <p>�T�C�R����U�낤</p>
			</div>
</td>
<td class="event_table" rowspan="2">
	<!-- �}�X�e�[�u�� -->

	<table class="cp_pricetable3">
	<tbody>
	<tr>
		<td class="group1"><%=AttributeGetter.getSquareList(session).get(0).getNo() %>�}�X�ځi���݂̃}�X�j</td>
	</tr>
	<tr>
		<td class="group3"><%=AttributeGetter.getSquareList(session).get(0).getEvent() %></td>
	</tr>
	<tr>
		<td class=<%=color1%>><%=AttributeGetter.getSquareList(session).get(1).getNo() %>�}�X��</td>
	</tr>
	<tr>
		<td class="group3"><%=AttributeGetter.getSquareList(session).get(1).getEvent() %></td>
	</tr>
	<tr>
		<td class=<%=color2%>><%=AttributeGetter.getSquareList(session).get(2).getNo() %>�}�X��</td>
	</tr>
	<tr>
		<td class="group3"><%=AttributeGetter.getSquareList(session).get(2).getEvent() %></td>
	</tr>
	<tr>
		<td class=<%=color3%>><%=AttributeGetter.getSquareList(session).get(3).getNo() %>�}�X��</td>
	</tr>
	<tr>
		<td class="group3"><%=AttributeGetter.getSquareList(session).get(3).getEvent() %></td>
	</tr>
	<tr>
		<td class=<%=color4%>><%=AttributeGetter.getSquareList(session).get(4).getNo() %>�}�X��</td>
	</tr>
	<tr>
		<td class="group3"><%=AttributeGetter.getSquareList(session).get(4).getEvent() %></td>
	</tr>
	<tr>
		<td class=<%=color5%>><%=AttributeGetter.getSquareList(session).get(5).getNo() %>�}�X��</td>
	</tr>
		<tr>
		<td class="group3"><%=AttributeGetter.getSquareList(session).get(5).getEvent() %></td>
	</tr>
	<tr>
		<td class=<%=color6%>><%=AttributeGetter.getSquareList(session).get(6).getNo() %>�}�X��</td>
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
<!-- �{�f�B�̃O���t�\���ꏊ�Ɉȉ����L�q -->
<%if(AttributeGetter.getPlayer(session).size()>1){ %>
<div class="graph">
<canvas id="money-graph" width="200px" height="350px"></canvas>
<script type="text/javascript">
/* id��"bar-chart"�̗v�f���擾 */
var ctx = document.getElementById("money-graph");

/* ��L�v�f�Ƀ`���[�g��`��@*/
var myRadarChart = new Chart(ctx, {
    type: 'bar',
    data: {
    	//�f�[�^���ڂ̃��x��
        labels: [
        		<%for(int i=0;i<AttributeGetter.getPlayer(session).size();i++){ %>
    			<%if(i!=0){ %>
    				,
    			<%} %>
    			"<%=AttributeGetter.getPlayer(session).get(i).getName()%>"
				<%} %>
          ],
        //�f�[�^�Z�b�g
        datasets: [
        {
            //�}��
            label: "������",
            //�w�i�F
            backgroundColor: "rgba(75,192,192,0.4)",
            //�g���̐F
            borderColor: "rgba(75,192,192,1)",
            //�O���t�̃f�[�^
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
<!-- ����ȃe�[�u���I��� -->
</div>



</body>
</html>
