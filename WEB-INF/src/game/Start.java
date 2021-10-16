package game;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import game.PlayerObject;

import javax.servlet.*;
import javax.servlet.http.*;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.Bean;
import database.DAO;

public class Start extends HttpServlet {
	public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
		request.setCharacterEncoding("windows-31j");
		HttpSession session = request.getSession();

		List<PlayerObject> player = new ArrayList<PlayerObject>();
		if(!((String)request.getParameter("name0")).equals("")){
			player.add(new PlayerObject(request.getParameter("name0")));
		}
		if(!((String)request.getParameter("name1")).equals("")){
			player.add(new PlayerObject(request.getParameter("name1")));
		}
		if(!((String)request.getParameter("name2")).equals("")){
			player.add(new PlayerObject(request.getParameter("name2")));
		}
		if(!((String)request.getParameter("name3")).equals("")){
			player.add(new PlayerObject(request.getParameter("name3")));
		}

		int gameProcess = 0;
		int numberOfPlayer = player.size();

		if(numberOfPlayer==0){
			player.add(new PlayerObject("名無し"));
			numberOfPlayer=1;
		}

		List<Bean> squareList=null;
		try {
			squareList = DAO.getSquareList(player.get(gameProcess%numberOfPlayer).getCurrentSquare());
		} catch (SQLException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}

		/*session.setAttribute("goalOrder", 1);*/
		session.setAttribute("player", player);
		session.setAttribute("gameProcess",gameProcess);
		session.setAttribute("numberOfPlayer",numberOfPlayer);
		session.setAttribute("squareList",squareList);
		session.setAttribute("dice",-1);
		request.getRequestDispatcher("/main.jsp").forward(request, response);

	}
}
