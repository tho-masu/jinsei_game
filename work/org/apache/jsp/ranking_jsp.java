/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.42
 * Generated at: 2019-11-29 01:12:19 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.List;
import game.PlayerObject;

public final class ranking_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"/jinsei_game/rank.css\">\r\n");
      out.write("<title>ランキング</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body background=\"./img/rank.jpg\" >\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!-- 人生ゲームロゴ -->\r\n");
      out.write("\r\n");
      out.write("<div class=\"jinsei_game_min\">\r\n");
      out.write("<img src=\"");
      out.print(request.getContextPath() );
      out.write("/img/jinsei_img.png\"  width=\"21%\" style=\"float:left;\">\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("<br><br><br><br><br>\r\n");
      out.write("\r\n");

List<PlayerObject> ranking = (List<PlayerObject>)request.getAttribute("ranking");

      out.write("\r\n");
      out.write("\r\n");
      out.write("<table align=\"center\" border=\"3\" width=\"500\" height=\"300\" class=\"rank\">\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<th class=\"ranking\" colspan=\"6\" align=\"center\" >\r\n");
      out.write("\t\t\t歴代最終所持金ランキング\r\n");
      out.write("\t\t</th>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t<tr class=\"group\">\r\n");
      out.write("\t\t<td>\r\n");
      out.write("\t\t\t順位\r\n");
      out.write("\t\t</td>\r\n");
      out.write("\t\t<td>\r\n");
      out.write("\t\t\tプレイヤー名\r\n");
      out.write("\t\t</td>\r\n");
      out.write("\t\t<td>\r\n");
      out.write("\t\t\t職業\r\n");
      out.write("\t\t</td>\r\n");
      out.write("\t\t<td>\r\n");
      out.write("\t\t\t人生最大の賭け\r\n");
      out.write("\t\t</td>\r\n");
      out.write("\t\t<td>\r\n");
      out.write("\t\t\t最終所持金\r\n");
      out.write("\t\t</td>\r\n");
      out.write("\t\t<td>\r\n");
      out.write("\t\t\tログの削除\r\n");
      out.write("\t\t</td>\r\n");
      out.write("\t</tr>\r\n");
for(int i=0;i<ranking.size();i++){ 
      out.write("\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td>\r\n");
      out.write("\t\t\t");
      out.print(i+1);
      out.write("位\r\n");
      out.write("\t\t</td>\r\n");
      out.write("\t\t<td>\r\n");
      out.write("\t\t\t");
      out.print(ranking.get(i).getName() );
      out.write("さん\r\n");
      out.write("\t\t</td>\r\n");
      out.write("\t\t<td>\r\n");
      out.write("\t\t\t");
      out.print(ranking.get(i).getJob() );
      out.write("\r\n");
      out.write("\t\t</td>\r\n");
      out.write("\t\t<td>\r\n");
      out.write("\t\t\t");
      out.print(ranking.get(i).getFinalBet() );
      out.write("\r\n");
      out.write("\t\t</td>\r\n");
      out.write("\t\t<td>\r\n");
      out.write("\t\t\t");
      out.print(ranking.get(i).getMoney() );
      out.write("\r\n");
      out.write("\t\t</td>\r\n");
      out.write("\t\t<td>\r\n");
      out.write("\t\t\t<div></div>\r\n");
      out.write("\t\t\t<form action=\"");
      out.print(request.getContextPath() );
      out.write("/ranking\" method=\"POST\">\r\n");
      out.write("\t\t\t\t<input type=\"hidden\" name=\"name\" value=\"");
      out.print(ranking.get(i).getName() );
      out.write("\" >\r\n");
      out.write("\t\t\t\t<input type=\"hidden\" name=\"job\" value=\"");
      out.print(ranking.get(i).getJob() );
      out.write("\" >\r\n");
      out.write("\t\t\t\t<input type=\"hidden\" name=\"finalBet\" value=\"");
      out.print(ranking.get(i).getFinalBet() );
      out.write("\" >\r\n");
      out.write("\t\t\t\t<input type=\"hidden\" name=\"money\" value=\"");
      out.print(ranking.get(i).getMoney() );
      out.write("\" >\r\n");
      out.write("\t\t\t\t<input type=\"submit\" name=\"btn\" value=\"削除\" class=\"delete\">\r\n");
      out.write("\t\t\t</form>\r\n");
      out.write("\t\t</td>\r\n");
      out.write("\t</tr>\r\n");
} 
      out.write("\r\n");
      out.write("</table>\r\n");
      out.write(" <div class=\"next\">\r\n");
      out.write("\r\n");
      out.write("\t<a href=\"#\" onclick=\"window.history.back(); return false;\">前の画面へ戻る</a>\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
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