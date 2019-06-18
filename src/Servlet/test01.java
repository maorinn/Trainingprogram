package Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.PostMine;
import vo.PostMineVo;

@WebServlet("/test01")
public class test01 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	   request.setCharacterEncoding("utf-8");
	   String test = request.getParameter("1");
	   PostMine dao = new PostMine();
	   PostMineVo list = dao.seleckUsersMine("1");
	   if (list!=null) {
		   System.out.println("成功·");
		   System.out.println(list);
//		   request.setAttribute("PostMineVo", list);
		   request.getRequestDispatcher("test02.jsp").forward(request, response);
	} else {
           response.sendRedirect("错误没有数据");
	}
	   
	   
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
