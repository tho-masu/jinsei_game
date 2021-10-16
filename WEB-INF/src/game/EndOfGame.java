package game;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import database.DAO;
import game.AttributeGetter;

public class EndOfGame extends HttpServlet {
	public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
		HttpSession session = request.getSession();
		List<PlayerObject> player = AttributeGetter.getPlayer(session);
		try{
			for(int i=0;i<player.size();i++){
				DAO.insert(player.get(i));
			}

			int rankingCount = DAO.rankingCount();
			if(rankingCount>5){
				DAO.rankingKickOut(rankingCount-5);
			}
		} catch (SQLException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}

		session.invalidate();

		request.getRequestDispatcher("/").forward(request,response);
	}
}
