package game;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class JinseiGame extends HttpServlet {
	public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
		request.setCharacterEncoding("windows-31j");
		HttpSession session = request.getSession();

		int dice = new java.util.Random().nextInt(6);
		dice++;

		if(AttributeGetter.getCurrentPlayerObject(session).getCurrentSquare()+dice < 50) {
			session.setAttribute("dice",dice);
			request.getRequestDispatcher("/dice_result.jsp").forward(request, response);
		}else {
			AttributeGetter.getCurrentPlayerObject(session).gameOver();
			AttributeGetter.getCurrentPlayerObject(session).setCurrentSquare(50);
			/*int goalOrder = (Integer)session.getAttribute("goalOrder");
			switch(goalOrder){
			case 1:
				AttributeGetter.getCurrentPlayerObject(session)
				.addMoney(100000);
				request.setAttribute("increase", 100000);
				break;
			case 2:
				AttributeGetter.getCurrentPlayerObject(session)
				.addMoney(50000);
				request.setAttribute("increase", 50000);
				break;
			case 3:
				AttributeGetter.getCurrentPlayerObject(session)
				.addMoney(30000);
				request.setAttribute("increase", 30000);
				break;
			case 4:
				AttributeGetter.getCurrentPlayerObject(session)
				.addMoney(1000);
				request.setAttribute("increase", 1000);
				break;
			}
			goalOrder++;
			session.setAttribute("goalOrder", goalOrder);*/
			request.getRequestDispatcher("/final_bet.jsp").forward(request,response);
		}

	}
}
