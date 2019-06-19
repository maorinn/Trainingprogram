package Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.PostMine;
import Javaben.Post;
import vo.PostMineVo;
import vo.post;


/**
 * 此Servlet展示帖子内容
 */
@WebServlet("/PostMine")
public class PostMine1 extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		//得到页面传来的id
		String postid = request.getParameter("postid");
		int parseInt = Integer.parseInt(postid);
		//去数据库查询验证
		PostMine min = new PostMine();
		PostMineVo list = min.seleckUsersMine(parseInt);
		
		if(list!=null){
			HttpSession session = request.getSession();
			System.out.println(list);
			request.setAttribute("Post", list);
			request.getRequestDispatcher("Postct.jsp").forward(request, response);
			
		}else{
			response.getWriter().println("未知错误");
			
		}
		
		
		
		
		
		
	}

	
	





	private Servlet.PostMine1 seleckUsersMine() {
		// TODO Auto-generated method stub
		return null;
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
