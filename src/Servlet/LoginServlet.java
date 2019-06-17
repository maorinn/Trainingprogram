package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.UsersDao;
import Javaben.Users;

/**
 * 此类用来做登录处理功能
 */
@WebServlet("/LoginServlet.action")
public class LoginServlet extends HttpServlet {
	
	private static final String name = null;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		//得到页面传来的用户名和密码
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		//去数据库查询验证用户名和密码是否正确
		UsersDao dao = new UsersDao();
		Users user = dao.selectUser2(username, password);
		
		//判断  如果正确就跳转到登陆成功的页面（展示员工列表的首页）
		if(user!=null){
			
			//保存到session作用域
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			
			//登录成功的页面url
			response.sendRedirect("---.html");
		}else{
            //如果错误就跳转到登陆页面
			//密码或用户名错误从新登录
			response.sendRedirect("---.jsp");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

