package game;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import database.DAO;

public class EventToMain extends HttpServlet{

	public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
		HttpSession session = request.getSession();

		//gameProcessの値を+1更新、すなわち次の人に順番を渡す
		int gameProcess = AttributeGetter.getGameProcess(session);
		gameProcess++;
		session.setAttribute("gameProcess", gameProcess);

		while(AttributeGetter.getCurrentPlayerObject(session).getIsGameOver() == true) {
			int gp = AttributeGetter.getGameProcess(session);
			gp++;
			session.setAttribute("gameProcess", gp);
		}

		session.setAttribute("dice", -1);

		try {
			session.setAttribute("squareList",DAO.getSquareList(AttributeGetter.getCurrentPlayerObject(session).getCurrentSquare()));
		} catch (SQLException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}

		request.getRequestDispatcher("/main.jsp").forward(request, response);
	}

}
