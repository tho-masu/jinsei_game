package game;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.DAO;

public class Ranking extends HttpServlet {
	public void doGet(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
		request.setCharacterEncoding("Windows-31j");

		String name=request.getParameter("name");
		if(name!=null){
			String job=request.getParameter("job");
			String finalBet=request.getParameter("finalBet");
			int money=Integer.parseInt(request.getParameter("money"));

			try {
				DAO.rankingDelete(name,job,finalBet,money);
			} catch (SQLException e) {
				// TODO 自動生成された catch ブロック
				e.printStackTrace();
			}
		}

		List<PlayerObject> ranking=null;
		try {
			ranking = DAO.getRanking();
		} catch (SQLException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}

		request.setAttribute("ranking",ranking );
		request.getRequestDispatcher("/ranking.jsp").forward(request, response);
	}

	public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
		doGet(request,response);
	}
}
