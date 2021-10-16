/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.42
 * Generated at: 2019-11-29 01:11:34 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import game.PlayerObject;
import database.Bean;
import java.util.List;
import game.AttributeGetter;

public final class main_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("java.util.List");
    _jspx_imports_classes.add("database.Bean");
    _jspx_imports_classes.add("game.AttributeGetter");
    _jspx_imports_classes.add("game.PlayerObject");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=windows-31j");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=windows-31j\">\r\n");
      out.write("<link href = \"/jinsei_game/default.css\" rel = \"stylesheet\" type = \"text/css\">\r\n");
      out.write("\r\n");
      out.write("<title>人生ゲーム</title>\r\n");
      out.write("\r\n");
      out.write("<!-- ヘッダーでChart.jsを読み込む -->\r\n");
      out.write("<script type=\"text/javascript\" src=\"https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("<script>\r\n");
      out.write("function doSubmit() {\r\n");
      out.write("\tdocument.fm.submit();\r\n");
      out.write("}\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");

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

      out.write("\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("<div id=\"jinsei_game_min\">\r\n");
      out.write("<img src=\"");
      out.print(request.getContextPath() );
      out.write("/img/jinsei_img.png\" width=\"20%\" style=\"float:left;\">\r\n");
      out.write("</div>\r\n");
      out.write("<!-- メニュー -->\r\n");
      out.write("<div align=\"center\">\r\n");
      out.write("<ul id=\"menu\">\r\n");
      out.write("  <li><a href=\"");
      out.print(request.getContextPath() );
      out.write("\">ゲームTOP</a></li>\r\n");
      out.write("  <li><a href=\"");
      out.print(request.getContextPath() );
      out.write("/how_to_play.jsp\">How to Play</a></li>\r\n");
      out.write("  <li><a href=\"");
      out.print(request.getContextPath() );
      out.write("/jinsei_game_map\">全体マップ</a></li>\r\n");
      out.write("  <li><a href=\"");
      out.print(request.getContextPath() );
      out.write("/ranking\">Ranking</a></li>\r\n");
      out.write("</ul>\r\n");
      out.write("</div>\r\n");
      out.write("<br><br><br>\r\n");
      out.write("\t\t\t");

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
				};
      out.write("\r\n");
      out.write("<div>\r\n");
      out.write("<!-- 巨大なテーブル始め -->\r\n");
      out.write("<table align=\"center\" width=\"75%\" height=\"70%\" class=\"");
      out.print(back_img);
      out.write("\">\r\n");
      out.write("<tr>\r\n");
      out.write("\r\n");
      out.write("<td width=\"20%\">\r\n");
      out.write("\t<div class=\"box26\">\r\n");
      out.write("    <span class=\"box-title\">プレイヤー名</span>\r\n");
      out.write("    <p>");
      out.print(AttributeGetter.getCurrentPlayerObject(session).getName() );
      out.write("</p>\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("\t<div class=\"box27\">\r\n");
      out.write("    <span class=\"box-title\">職業</span>\r\n");
      out.write("\t<p>");
      out.print(AttributeGetter.getCurrentPlayerObject(session).getJob() );
      out.write("</p>\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("\t<div class=\"box28\">\r\n");
      out.write("    <span class=\"box-title\">現在の所持金</span>\r\n");
      out.write("    <p>");
      out.print(AttributeGetter.getCurrentPlayerObject(session).getMoney() );
      out.write("円</p>\r\n");
      out.write("\r\n");
      out.write("\t</div>\r\n");
      out.write("</td>\r\n");
      out.write("<td align=\"center\" width=\"60%\" rowspan=\"2\">\r\n");
      out.write("\t\t\t<div class=\"hito\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t");


				if(AttributeGetter.getCurrentPlayerObject(session).getJob().equals("サラリーマン")){
				
      out.write("\t\t<img src=\"");
      out.print(request.getContextPath() );
      out.write("/img/businessman.png\">\r\n");
      out.write("\t\t\t\t\t");
 }else if(AttributeGetter.getCurrentPlayerObject(session).getJob().equals("ケチな人")){
				
      out.write("\t\t<img src=\"");
      out.print(request.getContextPath() );
      out.write("/img/money_kechi.png\">\r\n");
      out.write("\t\t\t\t\t");
 }else if(AttributeGetter.getCurrentPlayerObject(session).getJob().equals("貧困層")){
				
      out.write("\t\t<img src=\"");
      out.print(request.getContextPath() );
      out.write("/img/keizai_hinkonsou.png\">\r\n");
      out.write("\t\t\t\t\t");
 }else if(AttributeGetter.getCurrentPlayerObject(session).getJob().equals("借金地獄")){
				
      out.write("\t\t<img src=\"");
      out.print(request.getContextPath() );
      out.write("/img/homeless_furousya.png\">\r\n");
      out.write("\t\t\t\t\t");
	}else if(AttributeGetter.getCurrentPlayerObject(session).getJob().equals("中堅リーマン")){
				
      out.write("  \t<img src=\"");
      out.print(request.getContextPath() );
      out.write("/img/stand_businessman_ojisan.png\">\r\n");
      out.write("\t\t\t\t\t");
	}else if(AttributeGetter.getCurrentPlayerObject(session).getJob().equals("富裕層")){
				
      out.write("  \t<img src=\"");
      out.print(request.getContextPath() );
      out.write("/img/keizai_fuyuusou.png\">\r\n");
      out.write("\t\t\t\t\t");
 }else if(AttributeGetter.getCurrentPlayerObject(session).getJob().equals("石油王")){
				
      out.write("\t\t<img src=\"");
      out.print(request.getContextPath() );
      out.write("/img/sekiyuou.png\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t");
 	};
      out.write("\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div>\r\n");
      out.write("    \t\t<div class=\"balloon jump\">Click!</div>\r\n");
      out.write("\t\t\t<form name=\"fm\" action=\"");
      out.print(request.getContextPath() );
      out.write("/main\" method=\"POST\">\r\n");
      out.write("\t\t\t<img src = \"");
      out.print(request.getContextPath() );
      out.write("/img/");
      out.print(img);
      out.write("\" width = 100 height = 100\r\n");
      out.write("\t\t\tonclick=\"doSubmit()\" class = \"reroll\">\r\n");
      out.write("\t\t\t</form>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"box10\">\r\n");
      out.write("\t\t\t  <p>サイコロを振ろう</p>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("</td>\r\n");
      out.write("<td class=\"event_table\" rowspan=\"2\">\r\n");
      out.write("\t<!-- マステーブル -->\r\n");
      out.write("\r\n");
      out.write("\t<table class=\"cp_pricetable3\">\r\n");
      out.write("\t<tbody>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td class=\"group1\">");
      out.print(AttributeGetter.getSquareList(session).get(0).getNo() );
      out.write("マス目（現在のマス）</td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td class=\"group3\">");
      out.print(AttributeGetter.getSquareList(session).get(0).getEvent() );
      out.write("</td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td class=");
      out.print(color1);
      out.write('>');
      out.print(AttributeGetter.getSquareList(session).get(1).getNo() );
      out.write("マス目</td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td class=\"group3\">");
      out.print(AttributeGetter.getSquareList(session).get(1).getEvent() );
      out.write("</td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td class=");
      out.print(color2);
      out.write('>');
      out.print(AttributeGetter.getSquareList(session).get(2).getNo() );
      out.write("マス目</td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td class=\"group3\">");
      out.print(AttributeGetter.getSquareList(session).get(2).getEvent() );
      out.write("</td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td class=");
      out.print(color3);
      out.write('>');
      out.print(AttributeGetter.getSquareList(session).get(3).getNo() );
      out.write("マス目</td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td class=\"group3\">");
      out.print(AttributeGetter.getSquareList(session).get(3).getEvent() );
      out.write("</td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td class=");
      out.print(color4);
      out.write('>');
      out.print(AttributeGetter.getSquareList(session).get(4).getNo() );
      out.write("マス目</td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td class=\"group3\">");
      out.print(AttributeGetter.getSquareList(session).get(4).getEvent() );
      out.write("</td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td class=");
      out.print(color5);
      out.write('>');
      out.print(AttributeGetter.getSquareList(session).get(5).getNo() );
      out.write("マス目</td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t<td class=\"group3\">");
      out.print(AttributeGetter.getSquareList(session).get(5).getEvent() );
      out.write("</td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td class=");
      out.print(color6);
      out.write('>');
      out.print(AttributeGetter.getSquareList(session).get(6).getNo() );
      out.write("マス目</td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t<td class=\"group3\">");
      out.print(AttributeGetter.getSquareList(session).get(6).getEvent() );
      out.write("</td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t</tbody>\r\n");
      out.write("\t</table>\r\n");
      out.write("</td>\r\n");
      out.write("\r\n");
      out.write("</tr>\r\n");
      out.write("<tr>\r\n");
      out.write("\t<td>\r\n");
      out.write("<!-- ボディのグラフ表示場所に以下を記述 -->\r\n");
if(AttributeGetter.getPlayer(session).size()>1){ 
      out.write("\r\n");
      out.write("<div class=\"graph\">\r\n");
      out.write("<canvas id=\"money-graph\" width=\"200px\" height=\"350px\"></canvas>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("/* idが\"bar-chart\"の要素を取得 */\r\n");
      out.write("var ctx = document.getElementById(\"money-graph\");\r\n");
      out.write("\r\n");
      out.write("/* 上記要素にチャートを描画　*/\r\n");
      out.write("var myRadarChart = new Chart(ctx, {\r\n");
      out.write("    type: 'bar',\r\n");
      out.write("    data: {\r\n");
      out.write("    \t//データ項目のラベル\r\n");
      out.write("        labels: [\r\n");
      out.write("        \t\t");
for(int i=0;i<AttributeGetter.getPlayer(session).size();i++){ 
      out.write("\r\n");
      out.write("    \t\t\t");
if(i!=0){ 
      out.write("\r\n");
      out.write("    \t\t\t\t,\r\n");
      out.write("    \t\t\t");
} 
      out.write("\r\n");
      out.write("    \t\t\t\"");
      out.print(AttributeGetter.getPlayer(session).get(i).getName());
      out.write("\"\r\n");
      out.write("\t\t\t\t");
} 
      out.write("\r\n");
      out.write("          ],\r\n");
      out.write("        //データセット\r\n");
      out.write("        datasets: [\r\n");
      out.write("        {\r\n");
      out.write("            //凡例\r\n");
      out.write("            label: \"所持金\",\r\n");
      out.write("            //背景色\r\n");
      out.write("            backgroundColor: \"rgba(75,192,192,0.4)\",\r\n");
      out.write("            //枠線の色\r\n");
      out.write("            borderColor: \"rgba(75,192,192,1)\",\r\n");
      out.write("            //グラフのデータ\r\n");
      out.write("            data: [\r\n");
      out.write("            \t\t");
for(int i=0;i<AttributeGetter.getPlayer(session).size();i++){ 
      out.write("\r\n");
      out.write("    \t\t\t\t");
if(i!=0){ 
      out.write("\r\n");
      out.write("    \t\t\t\t\t,\r\n");
      out.write("    \t\t\t\t");
} 
      out.write("\r\n");
      out.write("    \t\t\t\t");
      out.print(AttributeGetter.getPlayer(session).get(i).getMoney());
      out.write("\r\n");
      out.write("\t\t\t\t\t");
} 
      out.write("\r\n");
      out.write("                   ]\r\n");
      out.write("        }\r\n");
      out.write("        ]\r\n");
      out.write("    },\r\n");
      out.write("    options : {\r\n");
      out.write("    \t    scales: {\r\n");
      out.write("    \t      xAxes: [{\r\n");
      out.write("    \t    \t  display:true,\r\n");
      out.write("    \t    \t  ticks: {\r\n");
      out.write("    \t              maxRotation: 45,\r\n");
      out.write("    \t              minRotation: 45\r\n");
      out.write("    \t            }\r\n");
      out.write("    \t      }],\r\n");
      out.write("    \t      yAxes: [{\r\n");
      out.write("    \t        ticks: {\r\n");
      out.write("    \t          beginAtZero: true,\r\n");
      out.write("    \t          userCallback: function(label, index, labels) {\r\n");
      out.write("    \t            if (Math.floor(label) === label) {\r\n");
      out.write("    \t              return label;\r\n");
      out.write("    \t            }\r\n");
      out.write("    \t          }\r\n");
      out.write("    \t        }\r\n");
      out.write("    \t      }]\r\n");
      out.write("    \t    }\r\n");
      out.write("    \t  }\r\n");
      out.write("});\r\n");
      out.write("</script>\r\n");
      out.write("</div>\r\n");
}else{
      out.write("\r\n");
      out.write("<div class=\"solo\">\r\n");
      out.write("<img src=\"");
      out.print(request.getContextPath() );
      out.write("/img/penguin.png\" width=200px>\r\n");
      out.write("</div>\r\n");
}
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t</td>\r\n");
      out.write("</tr>\r\n");
      out.write("</table>\r\n");
      out.write("<!-- 巨大なテーブル終わり -->\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
