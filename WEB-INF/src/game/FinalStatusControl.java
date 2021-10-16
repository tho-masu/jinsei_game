package game;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class FinalStatusControl extends HttpServlet {
	public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
		request.setCharacterEncoding("windows-31j");
		HttpSession session = request.getSession();

		if(request.getParameter("slot")==null){
			String choice = request.getParameter("choice");
			if(request.getParameter("choice").equals("yes")){
				request.setAttribute("choice", choice);
				request.getRequestDispatcher("/final_bet.jsp").forward(request,response);
			}else if(request.getParameter("choice").equals("no")){
				AttributeGetter.getCurrentPlayerObject(session).setFinalBet("（挑戦しない）");
				request.getRequestDispatcher("/goal.jsp").forward(request,response);
			}
		}else{

		String slot = request.getParameter("slot");
		if(slot.equals("1位から1/3奪う")){
			List<PlayerObject> p = new ArrayList<PlayerObject>();
			List<PlayerObject> player = AttributeGetter.getPlayer(session);
			for(int i=0;i<player.size();i++){
				p.add(player.get(i));
			}
		    Collections.sort(p);
		    int oneThird = (p.get(0).getMoney())/3;
		    p.get(0).addMoney(-oneThird);
		    AttributeGetter.getCurrentPlayerObject(session).addMoney(oneThird);
		}else if(slot.equals("所持金が半分")){
			int money = AttributeGetter.getCurrentPlayerObject(session).getMoney();
			AttributeGetter.getCurrentPlayerObject(session).setMoney(money/2);
		}else if(slot.equals("+100万円")){
			AttributeGetter.getCurrentPlayerObject(session).addMoney(1000000);
		}else if(slot.equals("+50万円")){
			AttributeGetter.getCurrentPlayerObject(session).addMoney(500000);
		}else if(slot.equals("-1000万円")){
			AttributeGetter.getCurrentPlayerObject(session).addMoney(-10000000);
		}else if(slot.equals("プラスマイナス逆転")){
			int money = AttributeGetter.getCurrentPlayerObject(session).getMoney();
			AttributeGetter.getCurrentPlayerObject(session).setMoney(-money);
		}
		AttributeGetter.getCurrentPlayerObject(session).setFinalBet(slot);

		request.getRequestDispatcher("/goal.jsp").forward(request,response);

		}
	}
}
