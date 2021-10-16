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

public class CheckAllGameOver extends HttpServlet {
	public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
		HttpSession session = request.getSession();

		List<PlayerObject> player = AttributeGetter.getPlayer(session);
		if(isAllGameOver(player)) {
			request.getRequestDispatcher("/result.jsp").forward(request, response);
		}else {
			//ここは本来EventToMainのdoPostを直接呼び出したい場所
			request.getRequestDispatcher("/event_to_main").forward(request, response);
			//どうすればよい？
			//→dispatcherのいつも.jspを書いている場所にサーブレットのURLを書けばいい→解決
		}

	}

	private boolean isAllGameOver(List<PlayerObject> player) {
		for(int i=0;i<player.size();i++){

			if(player.get(i).getIsGameOver() == false){
				return false;
			}
		}
		return true;
	}
}