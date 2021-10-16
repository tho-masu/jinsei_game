package game;

import java.io.*;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.*;
import javax.servlet.http.*;


import database.Bean;
import database.BeanMapping;
import database.DAO;
import database.DBManager;
import database.MapBean;
import database.MapDAO;

public class JinseiGameMap extends HttpServlet {

	public void doGet(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
		request.setCharacterEncoding("Windows-31j");

		String forwardURL = null;
		try{
			//１：DAO
			List<Bean> allSquareList = DAO.getAllSquareList();
			HttpSession session = request.getSession();

			//map変数：データを取得した50マスを作成。allSquareListを使用
			Map<Integer,Bean> map = new HashMap<Integer,Bean>();
			for(int i=0; i<allSquareList.size();i++){
				map.put(i, allSquareList.get(i));
			}

			//2:MapDAO
			List<MapBean> mapList=null;
			try {
				mapList = MapDAO.getMapList();

			} catch (SQLException e) {

				e.printStackTrace();
			}

			//データを取得した100マスを作成(Allmassクラスの呼び出し）
			Allmass allMass = new Allmass();

			//セッションによって取得されたプレイヤー
			Object objectPlayer = session.getAttribute("player");

			//for(int i =0;i<100;i++){
			for(int i =0;i<mapList.size();i++){
				//情報が入っているマスを取得
				MapBean cbean = mapList.get(i);
				MapMass mass = new MapMass();

				if(cbean.getNo()== Integer.MIN_VALUE){
					mass.setColor(0);
					mass.setPng(cbean.getPng());
				}else{
						mass.setColor(1);//マス目のデフォルトの色（ピンク色）

					//イベントを抽出
					Bean bean = map.get(cbean.getNo());
					mass.setEvent(bean.getEvent()); //beanから呼び出しマス目のイベントをセットする。
					mass.setNo(Integer.parseInt(bean.getNo()));//マス目のNoをmassから呼び出せる状態にする。

					//プレイヤーが1人でもいた場合の分岐
			if(objectPlayer !=null){

			List<PlayerObject> player = (List<PlayerObject>)objectPlayer; //playerを取得する。
			int gameProcess = Integer.parseInt(session.getAttribute("gameProcess").toString());//gameProcessを取得する
			int numberOfPlayer = Integer.parseInt(session.getAttribute("numberOfPlayer").toString());//numberOfPlayerを取得する
					// =============
					//プレイヤーを生成する。
					for(int k=0 ;k<numberOfPlayer;k++){
						PlayerObject po = player.get(k); //po:プレイヤー
						if(cbean.getNo()==po.getCurrentSquare()){
							if(k==0){
								mass.setColor(2);
							}else if(k==1){
								mass.setColor(3);
							}else if(k==2){
								mass.setColor(4);
							}else if(k==3){
								mass.setColor(5);
							}
						}
					}

					//1：現在止まるます目（cbean.getNo())とプレイヤーが一致した時にマス目の色が変わる。
					//2:変わるます目の色は上記で設定した色である。

					PlayerObject current = player.get(gameProcess%numberOfPlayer);//current:現在のプレイヤー
					if(cbean.getNo()==current.getCurrentSquare()){
						if(gameProcess%numberOfPlayer==0){
							mass.setColor(2);
						}else if(gameProcess%numberOfPlayer==1){
							mass.setColor(3);
						}else if(gameProcess%numberOfPlayer==2){
							mass.setColor(4);
						}else if(gameProcess%numberOfPlayer==3){
							mass.setColor(5);
						}
					}
					//---------------------------
				}
			}
				allMass.add(mass); //ループの結果作成された100マスに情報を入れる。
		}

			request.setAttribute("allMass",allMass);//jspに送る。
			request.setAttribute("map",map);
			request.setAttribute("allSquareList", allSquareList);
			//forwardURL = "/generalmap.jsp";

		}catch(SQLException e){
			e.printStackTrace();
		}
		request.getRequestDispatcher("/general_mass.jsp").forward(request, response);
	}

}
