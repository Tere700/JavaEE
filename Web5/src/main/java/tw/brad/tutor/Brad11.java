package tw.brad.tutor;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Brad11")
public class Brad11 extends HttpServlet {
	
    public Brad11() {
    	//建構式只會做一次 物件初始化 沒有物件
        System.out.println("Brad11()");
    }
    
    //MVC model-view-controller

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("service(1)");
		System.out.println(req.getMethod());
		
		if (req.getMethod().equals("get")) {
			
		}else if (req.getMethod().equals("post"))  {
			
		}
		//super.service(req, resp); //這邊區分 get or post
	}



	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		System.out.println("service(2)");
		super.service(req, res); //HttpServletRequest父類別 比較不會用到
	}



//	@Override  //init初始化 只會做一次 沒參數 沒什麼用到
//	public void init() throws ServletException {
//		System.out.println("init()");
//		super.init();
//	}
//
//
//
//	@Override
//	public void init(ServletConfig config) throws ServletException {
//		System.out.println("init(ServletConfig)");//一定會跑 叫組態檔ServletConfig 產生物件
//		super.init(config); //有參數
//	}



	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 System.out.println("doGet()");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 System.out.println("doPost()");
	}

}
