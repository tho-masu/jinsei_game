package game;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import database.DAO;

public class StatusControl extends HttpServlet {
	public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
		HttpSession session = request.getSession();

		//現在手順がまわってきているプレイヤーの現在マスを進める
		AttributeGetter.getCurrentPlayerObject(session).addCurrentSquare(AttributeGetter.getDice(session));

		try {
			session.setAttribute("squareList",DAO.getSquareList(AttributeGetter.getCurrentPlayerObject(session).getCurrentSquare()));
		} catch (SQLException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}
		int oldMoney = AttributeGetter.getCurrentPlayerObject(session).getMoney();
		session.setAttribute("money",oldMoney);

		//プレイヤーのマネーを増減
		AttributeGetter.getCurrentPlayerObject(session)
			.addMoney(Integer.parseInt(AttributeGetter.getSquareList(session).get(0).getCommand()));

		request.getRequestDispatcher("/event.jsp").forward(request, response);
	}

}
