package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.UsersDao;

/**
 * Servlet implementation class MessageServlet
 */
@WebServlet("/MessageServlet")
public class MessageServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//处理中文乱码
		request.setCharacterEncoding("utf-8");
		
		String usreid = request.getParameter("usreid");
		String time = request.getParameter("time");
		String bt = request.getParameter("bt");
		String nr = request.getParameter("nr");
		
		UsersDao dao = new UsersDao();
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
