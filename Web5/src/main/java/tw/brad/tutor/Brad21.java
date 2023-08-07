package tw.brad.tutor;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Brad21")
public class Brad21 extends HttpServlet {
	private Connection conn = null;
	public Brad21() {
		try {
			Properties prop = new Properties();
			prop.put("user", "root");
			prop.put("password", "root");
			Class.forName("com.mysql.cj.jdbc.Driver"); //不可以省略
			conn=DriverManager.getConnection(
					"jdbc:mysql://localhost/iii", prop);
			
		}catch(Exception e) {
			System.out.println(e);
		}
		
		
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(conn==null)return;
		
		try {
		
			String sql = "INSERT INTO cust(cname,tel,birthday)"+ 
					"VALUES('servlet2','2222','1999-02-03')";
			Statement stmt = conn.createStatement();
			int count = stmt.executeUpdate(sql);
		
			System.out.println("OK4:" + count);//證明驅動程式或是名稱有打對
		
		}catch(Exception e) {
			System.out.println(e);
		}
	}
}
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		try {
//			Properties prop = new Properties();
//			prop.put("user", "root");
//			prop.put("password", "root");
//			Class.forName("com.mysql.cj.jdbc.Driver"); //不可以省略
//			Connection conn=DriverManager.getConnection(
//					"jdbc:mysql://localhost/iii", prop);
//			String sql = "INSERT INTO cust(cname,tel,birthday)"+ 
//					"VALUES('servlet','1111','1999-02-03')";
//			Statement stmt = conn.createStatement();
//			int count = stmt.executeUpdate(sql);
//			
//			System.out.println("OK2:" + count);//證明驅動程式或是名稱有打對
//			
//		}catch(Exception e) {
//			System.out.println(e);
//		}
//	}
//}
