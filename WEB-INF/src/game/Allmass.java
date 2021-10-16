package game;


import java.util.*;
//碁盤の目全体（管理用）
public class Allmass{

		List<MapMass> allmass = new ArrayList<MapMass>();

		//MapMass分のデータを加える
		public void add(MapMass o){
			this.allmass.add(o);
		}
		//碁盤の目の大きさを取ってくる
		public int size(){
			return allmass.size();
		}
		//MapMassの情報をallmassに入れる。
		public MapMass get(int i){
			return allmass.get(i);
		}
	}



