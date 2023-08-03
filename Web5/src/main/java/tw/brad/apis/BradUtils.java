package tw.brad.apis;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;

public class BradUtils {
	public static String loadView(String view) throws Exception {
		//String viewFile = "C:\\Users\\User\\eclipse-workspace\\Web5\\src\\main\\webapp\\views\\view1.html";
		String viewFile = 
				String.format("C:\\Users\\User\\eclipse-workspace\\Web5\\src\\main\\webapp\\views\\%s.html", view);
		
		File file = new File(viewFile);
//		byte [] buf = new byte[(int)file.length()];
//		FileInputStream fin = new FileInputStream(file);
//		fin.read(buf);
//		fin.close();
//		return new String(buf);
		
		BufferedReader br = new BufferedReader(new FileReader(file));
		String line = null; StringBuffer sb = new StringBuffer();
		while((line = br.readLine())!=null) {
			sb.append(line);
		}
		return sb.toString();
	}


	public static String sayYa() {
		return "Ya";
		
	}	
	public static String sayYa(String name) {
		return String.format("Ya! %s",name);
		
	}
	public static String calc(String x, String y, String op) 	{
		
		try{
				int intx = Integer.parseInt(x);
				int inty = Integer.parseInt(y);
				int r, mod;
				r=mod=0;
				String ret="";
				switch(op){
				case "1": r= intx+inty; ret += r ; break;
				case "2": r= intx-inty; ret += r; break;
				case "3": r= intx*inty; ret += r; break;
				case "4": r= intx/inty;	mod=intx%inty;
							ret += r + "......" + mod ; break;}
				return ret;
				
				}catch(Exception e) {
					return "";
				}
			}
		

	public static Member createMember() {
		return new Member(123,"iii","III","1999-09-08");
	}
}