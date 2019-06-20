package Servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.postDao;
import vo.post;

/**
 * Servlet implementation class MessageServlet
 */
@WebServlet("/MessageServlet")
public class MessageServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//处理中文乱码
		request.setCharacterEncoding("utf-8");
		response.setHeader("content-type", "text/html;charset=UTF-8");
		
		
		Date date = new Date();
		SimpleDateFormat time = new SimpleDateFormat("yyyy-MM-dd-HH:mm:ss");
		String dateString = time.format(date);
		System.out.println(dateString);
		
		String userid = request.getParameter("userid");
		String title = request.getParameter("title");
		String mine = request.getParameter("mine");
		System.out.println(userid+"---------------");
		post post = new post(title, userid, dateString, mine);
		postDao postDao = new postDao();
		int insert = postDao.insert(post);
		if (insert>0) {
			response.sendRedirect("DisplaySevrlet");
		}else {
			response.getWriter().println("未知错误");
		}
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
