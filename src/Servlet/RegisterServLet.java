package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Dao.UsersDao;


//注册账号后台
@WebServlet("/RegisterServLet")
public class RegisterServLet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String name= request.getParameter("username");
		String password=request.getParameter("password");
		String email=request.getParameter("email");
		UsersDao dao=new UsersDao();
		boolean bl= dao.selectUserName(name);
		if(bl==true){
			response.sendRedirect("register.jsp");
		}else {
			System.out.println("11122");
			dao.RegisterUser(name, password,email);
			response.sendRedirect("inTest01.html");//注册成功后跳转登入页面
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
