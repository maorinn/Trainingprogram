package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.PraiseDao;

/**
 * 点赞功能
 */
@WebServlet("/awesomes")
public class awesomes extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int postid =  Integer.parseInt(request.getParameter("postid"));
		String username = request.getParameter("userid");
		boolean ispraise = false;//是否点赞
		int Numberoflikes = 0;
		if (username==null||username.equals("")) {
			response.getWriter().println("你还未登陆！");
		}else {
			PraiseDao praiseDao = new PraiseDao();
			String praise = praiseDao.getamlist(postid);
			String[] praiselist = praise.split("|");
			//获取点赞人数
			Numberoflikes = praiselist.length;
			for (String c : praiselist) {
				if (c.equals(username)) {
					//判断是否点赞
					ispraise = true;
				}
			}
			//没有点赞
			if (!ispraise) {
				boolean addPraise = praiseDao.AddPraise(postid, username);
				if (addPraise) {
					response.getWriter().println("点赞成功");
				}else {
					response.getWriter().println("未知错误");
				}
			}else {
				//点赞了，取消点赞
				boolean cancel = praiseDao.Cancel(postid, username);
				if (cancel) {
					response.getWriter().println("取消点赞");
				}else {
					response.getWriter().println("未知错误");
				}
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
