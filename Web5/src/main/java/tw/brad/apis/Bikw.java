package tw.brad.apis;

import java.io.Serializable;

public class Bikw implements Serializable{ //final絕子絕孫 沒有子類別
	//Overload覆載 同名異式
		protected double speed;
		public String owner;
		
		// 建構式/子/方法
		public Bikw() {
			System.out.println("Bike()");
		}
		public Bikw(String name) {
			System.out.println("Bike(String)");
			owner = name;
		}
	
		
		public void upSpeed() {
			speed = speed < 1 ? 1 : speed * 1.2;
		}
		
		public void downSpeed() {
			speed = speed < 1 ? 0 : speed * 0.5;
		}
		
		public double getSpeed() {
			return speed;
		}
		
		public String toString() {
		return "My speed is" + speed;
		}
		
	}

